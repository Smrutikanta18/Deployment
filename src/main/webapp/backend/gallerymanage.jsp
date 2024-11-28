<%@ page import="java.sql.*, jakarta.servlet.*, jakarta.servlet.http.*, java.io.*" %>
<%@ include file="adminconnection.jsp" %>

<%
    String userprofile = (String) session.getAttribute("em_ail");
    if (userprofile == null) {
        response.sendRedirect("login.jsp");
    }
    %>


</body>
</html>



<!doctype html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Gallery | Arya Constructions</title>

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

    <!-- Favicon -->
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
                    <div class="col-sm-12 col-lg-5">
                        <div class="card">
                            <div class="card-header d-flex justify-content-between">
                                <div class="header-title">
                                    <h4 class="card-title">Add Gallery</h4>
                                </div>
                            </div>
                            <div class="card-body">
                                <!-- Form for uploading images -->
                                <form id="galleryForm" enctype="multipart/form-data">
                                        <p><b>Images:</b></p>
                                        <div class="custom-file mb-3">
                                            <input type="file" class="custom-file-input" id="customFile" name="image" required>
                                            <label class="custom-file-label" for="customFile">Choose file</label>
                                        </div>
                                        <button type="button" class="btn btn-primary mr-2" id="addImageButton">Add</button>
                                    </form>
                                    <div id="responseMessage" class="mt-3"></div>
                            </div>
                        </div>
                    </div>

                    <div class="col-sm-12 col-lg-7">
                        <div class="card">
                            <div class="card-header d-flex justify-content-between">
                                <div class="header-title">
                                    <h4 class="card-title">View Gallery</h4>
                                </div>
                            </div>
                            <div class="card-body">
                                <div class="table">
                                    <table class="table mb-0">
                                        <thead class="table-color-heading">
                                            <tr class="text-secondary">
                                                <th scope="col">Image</th>
                                                <th scope="col" colspan="2">Status</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <%
                                                // Fetch gallery data from database
                                                String selectquery = "SELECT * FROM gallery";
                                                try {
                                                    Statement stmt = con.createStatement();
                                                    ResultSet query = stmt.executeQuery(selectquery);

                                                    while (query.next()) {
                                            %>
                                                        <tr>
                                                            <td>
                                                                <img src="imgadmin/<%= query.getString("photo") %>" width="100px">
                                                            </td>
                                                            <td>
                                                                <a href="updateg.jsp?ids=<%= query.getInt("id") %>">
                                                                    <button class="btn btn-success mr-2">
                                                                        <i class="fa fa-edit"></i>
                                                                    </button>
                                                                </a>
                                                            </td>
                                                            <td>
                                                                <a href="delete.jsp?ids=<%= query.getInt("id") %>">
                                                                    <button class="btn btn-danger mr-2">
                                                                        <i class="fa fa-trash-o"></i>
                                                                    </button>
                                                                </a>
                                                            </td>
                                                        </tr>
                                            <%
                                                    }
                                                } catch (SQLException e) {
                                                    out.println("Error: " + e.getMessage());
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
<script>
document.getElementById("addImageButton").addEventListener("click", function () {
    let formData = new FormData(document.getElementById("galleryForm"));

    fetch("GalleryServlet", {
        method: "POST",
        body: formData,
    })
        .then((response) => response.json())
        .then((data) => {
            const responseMessage = document.getElementById("responseMessage");
            if (data.status === "success") {
                responseMessage.innerHTML =
                    '<div class="alert alert-success">' + data.message + "</div>";
                // Optionally, refresh the gallery table here
            } else {
                responseMessage.innerHTML =
                    '<div class="alert alert-danger">' + data.message + "</div>";
            }
        })
        .catch((error) => {
            console.error("Error:", error);
        });
});
</script>

</html>