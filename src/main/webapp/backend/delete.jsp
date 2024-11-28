<%@ page import="java.sql.*, jakarta.servlet.http.*, jakarta.servlet.*" %>
<%@ include file="adminconnection.jsp" %> <!-- Include the adminconnection.jsp file for DB connection -->

<%
    String idParam = request.getParameter("ids");
    if (idParam != null) {
        int id = Integer.parseInt(idParam); // Convert to integer

        // Prepare SQL DELETE query
        String deleteQuery = "DELETE FROM gallery WHERE id = ?";

        PreparedStatement stmt = null;

        try {
            stmt = con.prepareStatement(deleteQuery);
            stmt.setInt(1, id); // Set the ID parameter for the query

            // Execute the DELETE query
            int rowsAffected = stmt.executeUpdate();
        } catch (SQLException e) {
            out.println("Error: " + e.getMessage());
        } finally {
            try {
                // Close resources
                if (stmt != null) {
                    stmt.close();
                }
            } catch (SQLException e) {
                out.println("Error closing resources: " + e.getMessage());
            }
        }
    } else {
        out.println("No ID provided for deletion.");
    }
    response.sendRedirect("gallerymanage.jsp");
%>
