<%@ page import="java.sql.*, javax.servlet.*, javax.servlet.http.*" %>
<%@ page session="true" %>
<%@ include file="adminconnection.jsp" %>

<%
    String userprofile = (String) session.getAttribute("em_ail");

    if (userprofile == null || userprofile.isEmpty()) {
        response.sendRedirect("login.jsp"); // Redirect to login page if user is not logged in
        return; // Exit to stop further processing
    }
%>

<!doctype html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>View Projects </title>

    <!-- Favicon -->
    <link rel="shortcut icon" href="assets/images/favicon.ico" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="assets/css/backend-plugin.min.css">
    <link rel="stylesheet" href="assets/css/backend.css?v=1.0.0">
</head>

<body class="">

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
                    <h3 class="card-title ml-5 mb-4">View Projects</h3>
                </div>

                <div class="row">
                    <div class="col-sm-12">

                        <div class="card-header d-flex justify-content-between">

                            <div id="table" class="table-editable">

                                <table class="table table-bordered table-responsive-md table-striped text-center">

                                    <thead>

                                        <tr>
                                            <th>Project Name</th>
                                            <th>Project image</th>
                                            <th>Location</th>
                                            <th>Project Status</th>
                                            <th colspan="2">Actions</th>
                                        </tr>

                                    </thead>


                                    <tbody>


                                        <%
                                            // Fetch the projects from the database
                                            String selectQuery = "SELECT * FROM addproject";
                                            Statement stmt = con.createStatement();
                                            ResultSet rs = stmt.executeQuery(selectQuery);

                                            // Loop through the result set and display the rows
                                            while (rs.next()) {
                                        %>
                                            <tr>
                                                <td><b><%= rs.getString("name") %></b></td>
                                                <td><img src="imgadmin/<%= rs.getString("image") %>" width="100px"></td>
                                                <td><b><%= rs.getString("location") %></b></td>
                                                <td><b><%= rs.getString("status") %></b></td>

                                                <td>
                                                    <a href="projectedit.jsp?ids=<%= rs.getInt("id") %>">
                                                        <button class="btn btn-success mr-2"><i class="fa fa-edit"></i></button>
                                                    </a>
                                                </td>
                                                <td>
                                                    <a href="viewprdelete.jsp?ids=<%= rs.getInt("id") %>">
                                                        <button class="btn btn-danger mr-2"><i class="fa fa-trash-o"></i></button>
                                                    </a>
                                                </td>
                                            </tr>
                                        <%
                                            }
                                            rs.close();
                                            stmt.close();
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

    <div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalCenterTitle">Modal title</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    ...
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                    <button type="button" class="btn btn-primary">Save changes</button>
                </div>
            </div>
        </div>
    </div>









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