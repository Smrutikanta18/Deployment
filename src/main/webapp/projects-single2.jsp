
<!DOCTYPE html>
<html lang="en">
   <head>
      <!-- Basic Page Needs
         ================================================== -->
      <meta charset="utf-8">
      <title>Project Details </title>
      <!-- Mobile Specific Metas
         ================================================== -->
      <meta http-equiv="X-UA-Compatible" content="IE=edge">
      <meta name="description" content="Construction Html5 Template">
      <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=5.0">
      <!-- Favicon
         ================================================== -->
<link rel="icon" type="image/png" href="${pageContext.request.contextPath}/images/logo.png">
      <!-- CSS
         ================================================== -->
      <link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet">
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
        <%@ include file="connection.jsp" %>
        <div id="banner-area" class="banner-area"
             style="background-image:linear-gradient(rgba(0, 53, 88, 0.409), rgba(0, 0, 0, 0.728)),url(images/banner/banner5.png)">
            <div class="banner-text">
                <div class="container">
                    <%
                        String urlParam = request.getParameter("url");
                        PreparedStatement stmt = null;
                        ResultSet rs = null;
                        String name = "", status = "", details = "", image = "", map = "", location = "";

                        try {
                            String query = "SELECT * FROM addproject WHERE url = ?";
                            stmt = con.prepareStatement(query);
                            stmt.setString(1, urlParam);
                            rs = stmt.executeQuery();

                            if (rs.next()) {
                                name = rs.getString("name");
                                status = rs.getString("status");
                                details = rs.getString("details");
                                image = rs.getString("image");
                                map = rs.getString("map");
                                location = rs.getString("location");
                            }
                        } catch (Exception e) {
                            e.printStackTrace();
                        } finally {
                            if (rs != null) rs.close();
                            if (stmt != null) stmt.close();
                        }
                    %>
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="banner-heading">
                                <h1 class="banner-title" style="font-family: 'Times New Roman', serif; font-weight: bold;">Project Details</h1>
                                <nav aria-label="breadcrumb">
                                    <ol class="breadcrumb justify-content-center">
                                        <li class="breadcrumb-item"><a href="index.jsp">Home</a></li>
                                        <li class="breadcrumb-item"><a href="completedprojects.jsp"><%= status %></a></li>
                                        <li class="breadcrumb-item"><%= name %></li>
                                    </ol>
                                </nav>
                            </div>
                        </div>
                        <!-- Col end -->
                    </div>
                    <!-- Row end -->
                </div>
                <!-- Container end -->
            </div>
            <!-- Banner text end -->
        </div>
        <!-- Banner area end -->
        <section id="ts-features" class="ts-features">
            <div class="container">
                <div class="row">
                    <div class="col-lg-6">
                        <div class="ts-intro">
                            <h3 class="section-sub-title" data-aos="fade-up"><span style="font-family: 'Times New Roman', serif; font-weight: bold;"><%= name %></span></h3>
                            <p data-aos="fade-up">
                                <%= details %>
                            </p>
                        </div>
                        <!-- Intro box end -->
                    </div>
                    <!-- Col end -->
                    <div class="col-lg-6 mt-4 mt-lg-0" data-aos="fade-up">
                        <img src="backend/imgadmin/<%= image %>" class="img-fluid">
                    </div>
                    <!-- Col end -->
                </div>
                <!-- Row end -->
            </div>
            <!-- Container end -->
        </section>
        <section id="main-container" class="main-container pb-5">
            <div class="container">
                <div class="row text-center">
                    <div class="col-lg-12">
                        <h3 class="section-sub-title" data-aos="fade-up" style="font-family: 'Times New Roman', serif; font-weight: bold;">Map & <span style="font-family: 'Times New Roman', serif; font-weight: bold;">Location</span></h3>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-6 mt-4 mt-lg-0">
                        <img src="backend/imgadmin/<%= map %>" class="img-fluid">
                    </div>
                    <!-- Col end -->
                    <div class="col-lg-6 mt-4 mt-lg-0">
                        <h4 class="text-danger mt-5"><%= location %></h4>
                    </div>
                    <!-- Col end -->
                </div>
                <!-- Row end -->
            </div>
        </section>
        
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
      </div>
      <!-- Body inner end -->
   </body>
</html>