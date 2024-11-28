<%@ page import="java.sql.*, javax.servlet.*, javax.servlet.http.*, java.io.*" %>
<%@ include file="adminconnection.jsp" %>

<%
    // Get the 'ids' parameter from the URL
    String id = request.getParameter("ids");

    if (id != null && !id.isEmpty()) {
        PreparedStatement pstmt = null;

        try {
            // Prepare the DELETE SQL query
            String deleteQuery = "DELETE FROM contactform WHERE id = ?";

            pstmt = con.prepareStatement(deleteQuery);
            pstmt.setInt(1, Integer.parseInt(id)); // Set the parameter for the DELETE query

            // Execute the update
            int result = pstmt.executeUpdate();

            if (result > 0) {
                // If the record is deleted, redirect to the inquiry page
                response.sendRedirect("inquiry.jsp");
            } else {
                out.println("Error: Could not delete the record.");
            }

        } catch (Exception e) {
            // Handle exceptions
            e.printStackTrace();
            out.println("Error: " + e.getMessage());
        } finally {
            // Close resources
            if (pstmt != null) {
                try {
                    pstmt.close();
                } catch (SQLException ex) {
                    ex.printStackTrace();
                }
            }
        }
    } else {
        out.println("Error: ID is missing.");
    }
%>
