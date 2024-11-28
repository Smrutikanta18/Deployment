<%@ page import="java.sql.*" %>
<%@ page import="jakarta.servlet.http.*, jakarta.servlet.*" %>

<%
    // Ensure the session exists; no need to redeclare
    if (request.getSession(false) == null) {
        request.getSession(); // Create a session if none exists
    }

    // Database connection details
    String servername = "localhost";
    String username = "root";
    String password = "system";
    String database = "basudevconstructions_db";

    Connection con = null;
    try {
        // Load the JDBC driver
        Class.forName("com.mysql.cj.jdbc.Driver");

        // Establish the database connection
        con = DriverManager.getConnection("jdbc:mysql://" + servername + ":3306/" + database, username, password);
    } catch (Exception e) {
        out.println("Error: " + e.getMessage());
    }
%>
