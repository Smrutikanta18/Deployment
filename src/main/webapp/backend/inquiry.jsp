<%@ page import="java.sql.*, jakarta.servlet.*, jakarta.servlet.http.*, jakarta.servlet.annotation.*, java.io.*" %>
<%@ include file="adminconnection.jsp" %>

<%
    // Check if the user is logged in
    String userprofile = (String) session.getAttribute("em_ail");
    if (userprofile == null) {
        response.sendRedirect("login.jsp");
    }

    // Handle form submission
    if ("submit".equals(request.getParameter("submit"))) {
        String name = request.getParameter("name");
        String filename = null;

        // Handle file upload
        Part filePart = request.getPart("image");
        if (filePart != null) {
            filename = filePart.getSubmittedFileName();
            String folder = "imgadmin/";
            String filePath = getServletContext().getRealPath("/") + folder + filename;

            // Write the uploaded file to the folder
            filePart.write(filePath);
        }

        // Insert data into the database
        if (filename != null) {
            try {
                String insertquery = "INSERT INTO gallery (name, photo) VALUES (?, ?)";
                PreparedStatement stmt = con.prepareStatement(insertquery);
                stmt.setString(1, name);
                stmt.setString(2, filename);

                int result = stmt.executeUpdate();

                if (result > 0) {
                    out.println("<script>alert('Data inserted successfully');</script>");
                    response.sendRedirect("inquiry.jsp"); // Redirect to the inquiry page
                } else {
                    out.println("<script>alert('Data not inserted');</script>");
                }
            } catch (SQLException e) {
                out.println("<script>alert('Error: " + e.getMessage() + "');</script>");
            }
        }
    }
%>

<!doctype html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Inquiry | Arya Constructions</title>

    <!-- Favicon -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="shortcut icon" href="assets/images/favicon.ico" />
    <link rel="stylesheet" href="assets/css/backend-plugin.min.css">
    <link rel="stylesheet" href="assets/css/backend.css?v=1.0.0">
</head>

<body class=" ">

    <!-- loader END -->
    <!-- Wrapper Start -->
    <div class="wrapper">

        <%@ include file="sidebar.jsp" %>

        <div class="iq-top-navbar">
            <div class="iq-navbar-custom">
                <%@ include file="navbar.jsp" %>
            </div>
        </div>

        <div class="content-page">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-sm-12 col-lg-12">
                            <div class="card">
                                <div class="card-header d-flex justify-content-between">
                                    <div class="header-title">
                                        <h4 class="card-title">View Inquiry</h4>
                                    </div>
                                </div>
                                <div class="card-body">
                                    <div class="table-responsive">
                                        <table class="table mb-0">
                                            <thead class="table-color-heading">
                                                <tr class="text-secondary">
                                                    <th scope="col">First Name</th>
                                                    <th scope="col">Last Name</th>
                                                    <th scope="col">Email</th>
                                                    <th scope="col">Phone</th>
                                                    <th scope="col">Message</th>
                                                    <th scope="col">Action</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <%
                                                    // Query to fetch data
                                                    PreparedStatement ps = null;
                                                    ResultSet rs = null;
                                                    try {
                                                        String query = "SELECT * FROM contactform";
                                                        ps = con.prepareStatement(query);
                                                        rs = ps.executeQuery();

                                                        // Iterate over result set and display data in table rows
                                                        while (rs.next()) {
                                                %>
                                                        <tr>
                                                            <td><%= rs.getString("firstname") %></td>
                                                            <td><%= rs.getString("lastname") %></td>
                                                            <td><%= rs.getString("email") %></td>
                                                            <td><%= rs.getString("phone") %></td>
                                                            <td><%= rs.getString("message") %></td>
                                                            <td>
                                                                <a href="inquirydelete.jsp?ids=<%= rs.getInt("id") %>">
                                                                    <button class="btn btn-danger mr-2">
                                                                        <i class="fa fa-trash"></i>
                                                                    </button>
                                                                </a>
                                                            </td>
                                                        </tr>
                                                <%
                                                        }
                                                    } catch (Exception e) {
                                                        e.printStackTrace();
                                                    } finally {
                                                        try {
                                                            if (rs != null) rs.close();
                                                            if (ps != null) ps.close();
                                                        } catch (SQLException e) {
                                                            e.printStackTrace();
                                                        }
                                                    }
                                                %>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        <!-- Backend Bundle JavaScript -->
        <script src="assets/js/backend-bundle.min.js"></script>
        <!-- Chart Custom JavaScript -->
        <script src="assets/js/customizer.js"></script>

        <script src="assets/js/sidebar.js"></script>

        <!-- Flextree Javascript-->
        <script src="assets/js/flex-tree.min.js"></script>
        <script src="assets/js/tree.js"></script>

        <!-- Table Treeview JavaScript -->
        <script src="assets/js/table-treeview.js"></script>

        <!-- SweetAlert JavaScript -->
        <script src="assets/js/sweetalert.js"></script>

        <!-- Vectoe Map JavaScript -->
        <script src="assets/js/vector-map-custom.js"></script>

        <!-- Chart Custom JavaScript -->
        <script src="assets/js/chart-custom.js"></script>
        <script src="assets/js/charts/01.js"></script>
        <script src="assets/js/charts/02.js"></script>

        <!-- slider JavaScript -->
        <script src="assets/js/slider.js"></script>

        <!-- Emoji picker -->
        <script src="assets/vendor/emoji-picker-element/index.js" type="module"></script>


        <!-- app JavaScript -->
        <script src="assets/js/app.js"></script>
</body>

</html>