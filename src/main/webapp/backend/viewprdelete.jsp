<%@ include file="adminconnection.jsp" %> <!-- Includes the database connection -->

<%
    // Retrieve the `id` parameter from the request
    String id = request.getParameter("ids");

    if (id != null && !id.isEmpty()) {
        try {
            // Delete query to remove the record from the database
            String deleteQuery = "DELETE FROM addproject WHERE id = ?";

            // Prepare the statement
            PreparedStatement preparedStatement = con.prepareStatement(deleteQuery);
            preparedStatement.setString(1, id);

            // Execute the query
            int rowsAffected = preparedStatement.executeUpdate();

            // Redirect to viewprojects.jsp
            response.sendRedirect("viewprojects.jsp");

        } catch (SQLException e) {
            e.printStackTrace();
        }
    } else {
        System.out.println("Invalid ID provided.");
    }
%>

