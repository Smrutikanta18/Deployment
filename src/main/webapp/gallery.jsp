<%@ page import="java.sql.*" %>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <!-- Basic Page Needs
================================================== -->
    <meta charset="utf-8">
    <title>Gallery-Arya Construction</title>

    <!-- Mobile Specific Metas
================================================== -->
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="description" content="Construction Html5 Template">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=5.0">

    <!-- Favicon
================================================== -->
    <link rel="icon" type="image/png" href="${pageContext.request.contextPath}/images/logo.png">


    <link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet">

    <!-- CSS
================================================== -->
    <!-- Bootstrap -->
    <link rel="stylesheet" href="plugins/bootstrap/bootstrap.min.css">
    <!-- FontAwesome -->
    <link rel="stylesheet" href="plugins/fontawesome/css/all.min.css">
    <!-- Animation -->
    <link rel="stylesheet" href="plugins/animate-css/animate.css">
    <!-- slick Carousel -->
    <link rel="stylesheet" href="plugins/slick/slick.css">
    <link rel="stylesheet" href="plugins/slick/slick-theme.css">
    <!-- Colorbox -->
    <link rel="stylesheet" href="plugins/colorbox/colorbox.css">
    <!-- Template styles-->
    <link rel="stylesheet" href="css/style.css">

</head>

<body>
    <div class="body-inner">

        <%@ include file="header.jsp" %>


        <div id="banner-area" class="banner-area" style="background-image:linear-gradient(rgba(0, 53, 88, 0.409), rgba(0, 0, 0, 0.728)),url(images/banner/banner5.png)">
            <div class="banner-text">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="banner-heading">
                                <h1 class="banner-title" style="font-family: 'Times New Roman', serif; font-weight: bold;">Gallery</h1>
                                <nav aria-label="breadcrumb">
                                    <ol class="breadcrumb justify-content-center">
                                        <li class="breadcrumb-item"><a href="index.jsp">Home</a></li>
                                        <li class="breadcrumb-item"><a href="gallery.jsp">Gallery</a></li>

                                    </ol>
                                </nav>
                            </div>
                        </div><!-- Col end -->
                    </div><!-- Row end -->
                </div><!-- Container end -->
            </div><!-- Banner text end -->
        </div><!-- Banner area end -->


        <section id="main-container" class="main-container pb-2">
            <div class="container">

                <div class="row">
                    <%
                        Connection con = null;
                        String url = "jdbc:mysql://localhost:3306/basudevconstructions_db";
                        String user = "root";
                        String password = "system";

                        try {
                            Class.forName("com.mysql.cj.jdbc.Driver");
                            con = DriverManager.getConnection(url, user, password);

                            String selectQuery = "SELECT * FROM gallery";
                            PreparedStatement ps = con.prepareStatement(selectQuery);
                            ResultSet rs = ps.executeQuery();

                            while (rs.next()) {
                    %>
                                <div class="col-lg-4 col-md-6 mb-5 gimage" data-aos="fade-up">
                                    <img src="backend/imgadmin/<%= rs.getString("photo") %>" width="350px">
                                </div>
                    <%
                            }
                        } catch (Exception e) {
                            e.printStackTrace();
                        } finally {
                            if (con != null) {
                                try {
                                    con.close();
                                } catch (SQLException ex) {
                                    ex.printStackTrace();
                                }
                            }
                        }
                    %>
                </div>

            </div>

        </section>

    </div>

    <%@ include file="footer.jsp" %>



    <!-- Javascript Files
  ================================================== -->

    <script src="https://unpkg.com/aos@next/dist/aos.js"></script>

    <script>
        AOS.init({

            duration: 1200,
        });
    </script>


    <!-- initialize jQuery Library -->
    <script src="plugins/jQuery/jquery.min.js"></script>
    <!-- Bootstrap jQuery -->
    <script src="plugins/bootstrap/bootstrap.min.js" defer></script>
    <!-- Slick Carousel -->
    <script src="plugins/slick/slick.min.js"></script>
    <script src="plugins/slick/slick-animation.min.js"></script>
    <!-- Color box -->
    <script src="plugins/colorbox/jquery.colorbox.js"></script>
    <!-- shuffle -->
    <script src="plugins/shuffle/shuffle.min.js" defer></script>


    <!-- Google Map API Key-->
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCcABaamniA6OL5YvYSpB3pFMNrXwXnLwU" defer></script>
    <!-- Google Map Plugin-->
    <script src="plugins/google-map/map.js" defer></script>

    <!-- Template custom -->
    <script src="js/script.js"></script>

    </div><!-- Body inner end -->
</body>

</html>