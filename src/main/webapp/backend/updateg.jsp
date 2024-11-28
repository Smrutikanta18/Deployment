<%@ page import="java.sql.*, jakarta.servlet.*, jakarta.servlet.http.*, java.io.File" %>
<%@ include file="adminconnection.jsp" %> <!-- Include your adminconnection.jsp file -->

<%
    // Start session and check if user is authenticated
    if (session.getAttribute("em_ail") == null || session.getAttribute("em_ail").toString().isEmpty()) {
        response.sendRedirect("login.jsp");
        return; // Stop further execution
    }

    // Retrieve the ID parameter from the URL.
    String id = request.getParameter("ids");
%>

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
                    <div class="col-sm-12 col-lg-12">
                        <div class="card">

                            <div class="card-header d-flex justify-content-between">
                                <div class="header-title">
                                    <h4 class="card-title">Edit Image</h4>
                                </div>
                            </div>


                            <div class="card-body">
                                 <form id="doSubmit" method="post" enctype="multipart/form-data">
                                        <input name="id" type="hidden" value="<%= id %>" />
                                        <p><b>Images:</b></p>
                                        <div class="custom-file mb-3">
                                            <!-- Display the existing image filename if available -->
                                            <input type="file" class="custom-file-input" id="customFile" name="photo">
                                            <label class="custom-file-label" for="customFile">Choose file</label>
                                        </div>

                                        <button type="submit" class="btn btn-primary mr-2" name="submit">Update</button>
                                 </form>
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
            // Function to handle form submission with AJAX
            document.getElementById("doSubmit").addEventListener("submit", function(event) {
                event.preventDefault(); // Prevent page reload

                var formData = new FormData(this); // Create FormData object from the form

                // Create AJAX request
                var xhr = new XMLHttpRequest();
                xhr.open("POST", "UpdateImageServlet", true);  // URL of the servlet handling the upload
                xhr.onreadystatechange = function() {
                    if (xhr.readyState == 4 && xhr.status == 200) {
                        // Handle the response (success or failure)
                        var response = JSON.parse(xhr.responseText);
                        if (response.status == "success") {
                            alert("Image updated successfully!");
                            // Optionally, update the image in the UI
                        } else {
                            alert("Error: " + response.message);
                        }
                    }
                };
                xhr.send(formData);  // Send the form data to the servlet
            });
        </script>
</body>

</html>