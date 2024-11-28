<?php

error_reporting(0);
include "adminconnection.php";
$userprofile = $_SESSION['em_ail'];
if ($userprofile == true) {
} else {
    header('location:login.php');
}

?>



<!doctype html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Rey | Rey Admin Dashboard</title>

    <!-- Favicon -->
    <link rel="shortcut icon" href="assets/images/favicon.ico" />

    <link rel="stylesheet" href="assets/css/backend-plugin.min.css">
    <link rel="stylesheet" href="assets/css/backend.css?v=1.0.0">
</head>

<body class=" ">

    <!-- loader END -->
    <!-- Wrapper Start -->


    <div class="wrapper">

        <?php include 'sidebar.php'; ?>

        <div class="iq-top-navbar">
            <div class="iq-navbar-custom">
                <%@ include file="navbar.jsp" %>
            </div>
        </div>

        <div class="content-page">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-12 mb-4 mt-1">
                        <div class="d-flex flex-wrap justify-content-between align-items-center">
                            <h4 class="font-weight-bold">Overview</h4>

                        </div>
                    </div>
                    <div class="col-lg-12 col-md-12">
                        <div class="row">

                            <div class="col-md-3">

                                <div class="card" style="background-color:blue; color:white;">
                                    <div class="card-body">
                                        <div class="d-flex align-items-center">
                                            <div class="">

                                                <div class="d-flex flex-wrap justify-content-start align-items-center">
                                                    <a href="addproject.jsp">
                                                        <h5 class="mb-0 font-weight-bold text-white">Add Projects</h5>
                                                    </a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                            </div>

                            <div class="col-md-3">
                                <div class="card" style="background-color:green; color:white;">
                                    <div class="card-body">
                                        <div class="d-flex align-items-center">
                                            <div class="">

                                                <div class="d-flex flex-wrap justify-content-start align-items-center">
                                                    <a href="viewprojects.jsp">
                                                        <h5 class="mb-0 font-weight-bold text-white">View Projects</h5>
                                                    </a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="col-md-3">
                                <div class="card" style="background-color:red; color:white;">
                                    <div class="card-body">
                                        <div class="d-flex align-items-center">
                                            <div class="">

                                                <div class="d-flex flex-wrap justify-content-start align-items-center">
                                                    <a href="gallerymanage.jsp">
                                                        <h5 class="mb-0 font-weight-bold text-white">Gallery Manage</h5>
                                                    </a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>


                            <div class="col-md-3">
                                <div class="card" style="background-color:black; color:white;">
                                    <div class="card-body">
                                        <div class="d-flex align-items-center">
                                            <div class="">

                                                <div class="d-flex flex-wrap justify-content-start align-items-center">
                                                    <a href="inquiry.jsp">
                                                        <h5 class="mb-0 font-weight-bold text-white">Inquiries</h5>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>


                            <!-- Wrapper End-->

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