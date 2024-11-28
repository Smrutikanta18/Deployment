<%@ page import="java.sql.*, java.io.*, javax.servlet.*, javax.servlet.http.*, java.util.*, java.nio.file.Paths" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page session="true" %>
<%
    // Get protocol
    String protocol = request.isSecure() ? "https://" : "http://";
    String url = protocol + request.getServerName() + request.getRequestURI();

    // Check if user is logged in
    String userprofile = (String) session.getAttribute("em_ail");
    if (userprofile == null) {
        response.sendRedirect("login.jsp");
        return;
    }


%>

<!doctype html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title> Add Projects | Arya Constructions</title>

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
                    <h3 class="card-title ml-5 mb-4">Add Projects</h3>
                </div>

                <div class="row">
                    <div class="col-sm-12 col-lg-12">
                        <div class="card">

                            <div class="card-body">

                                <form id="addProjectForm" enctype="multipart/form-data">
                                    <div class="form-row">
                                        <div class="col-md-4 mb-3">
                                            <label for="status">Project Status</label>
                                            <input type="text" class="form-control" id="status" name="status" required>
                                        </div>
                                        <div class="col-md-4 mb-3">
                                            <label for="name">Project Name</label>
                                            <input type="text" class="form-control" id="name" name="name" required>
                                        </div>
                                        <div class="col-md-4 mb-3">
                                            <label for="image">Image</label>
                                            <input type="file" class="form-control" id="image" name="image" required>
                                        </div>
                                        <div class="col-md-4 mb-3">
                                            <label for="map">Map</label>
                                            <input type="file" class="form-control" id="map" name="map" required>
                                        </div>
                                        <div class="col-md-4 mb-3">
                                            <label for="location">Location</label>
                                            <input type="text" class="form-control" id="location" name="location" required>
                                        </div>
                                        <div class="col-md-4 mb-3">
                                            <label for="fplan">Floor Plan</label>
                                            <input type="file" class="form-control" id="fplan" name="fplan" required>
                                        </div>
                                        <div class="col-md-6 mb-3">
                                            <label for="details">Project Details</label>
                                            <input type="text" class="form-control" id="details" name="details" required>
                                        </div>
                                    </div>
                                    <div class="form-group mb-0">
                                        <button type="button" class="btn btn-primary" id="submitButton">Add</button>
                                    </div>
                                </form>

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
    <script>
    document.getElementById("submitButton").addEventListener("click", function () {
        let form = document.getElementById("addProjectForm");
        let formData = new FormData(form);

        // Debugging: Log the FormData content
        for (let pair of formData.entries()) {
            console.log(pair[0] + ": " + pair[1]);
        }

        fetch("AddProjectServlet", {
            method: "POST",
            body: formData
        })
        .then(response => response.json())
        .then(data => {
            if (data.status === "success") {
                alert("Project added successfully!");
                form.reset(); // Clear the form after success
            } else {
                alert("Failed to add project: " + data.message);
            }
        })
        .catch(error => {
            console.error("Error:", error);
            alert("An error occurred while adding the project.");
        });
    });
</script>
</body>

</html>