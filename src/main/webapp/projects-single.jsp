<%@ page import="java.sql.*" %>
<%@ page contentType="text/html; charset=UTF-8" language="java" %>

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

         <%@ page import="java.sql.*" %>
         <%@ page contentType="text/html; charset=UTF-8" language="java" %>

         <%
             // Database connection setup
             Connection con = null;
             PreparedStatement ps = null;
             ResultSet rs = null;
             String url = request.getParameter("url"); // Get the 'url' parameter from the request

             String query = "SELECT * FROM `addproject` WHERE url = ?";
             try {
             Class.forName("com.mysql.cj.jdbc.Driver");
                 con = DriverManager.getConnection("jdbc:mysql://localhost:3306/basudevconstructions_db", "root", "system");
                 ps = con.prepareStatement(query);
                 ps.setString(1, url); // Set the URL parameter in the query
                 rs = ps.executeQuery();

                 if (rs.next()) {
                     // Fetch the details of the project
                     String name = rs.getString("name");
                     String status = rs.getString("status");
                     String details = rs.getString("details");
                     String image = rs.getString("image");
                     String map = rs.getString("map");
                     String fplan = rs.getString("fplan");
         %>

         <!-- Banner Area Start -->
         <div id="banner-area" class="banner-area" style="background-image:linear-gradient(rgba(0, 53, 88, 0.409), rgba(0, 0, 0, 0.728)),url(images/banner/banner5.png)">
             <div class="banner-text">
                 <div class="container">
                     <div class="row">
                         <div class="col-lg-12">
                             <div class="banner-heading">
                                 <h1 class="banner-title" style="font-family: 'Times New Roman', serif; font-weight: bold;">Project Details</h1>
                                 <nav aria-label="breadcrumb">
                                     <ol class="breadcrumb justify-content-center">
                                         <li class="breadcrumb-item"><a href="index.jsp">Home</a></li>
                                         <li class="breadcrumb-item"><a href="ongoingprojects.jsp"><%= status %></a></li>
                                         <li class="breadcrumb-item"><%= name %></li>
                                     </ol>
                                 </nav>
                             </div>
                         </div>
                     </div>
                 </div>
             </div>
         </div>

         <!-- Features Section Start -->
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
                     </div>
                     <div class="col-lg-6 mt-4 mt-lg-0" data-aos="fade-up">
                         <img src="backend/imgadmin/<%= image %>" class="img-fluid">
                     </div>
                 </div>
             </div>
         </section>

         <!-- Map & Floor Plan Section Start -->
         <section id="main-container" class="main-container pb-5">
             <div class="container">
                 <div class="row text-center">
                     <div class="col-lg-12">
                         <h3 class="section-sub-title" data-aos="fade-up" style="font-family: 'Times New Roman', serif; font-weight: bold;">Map & <span style="font-family: 'Times New Roman', serif; font-weight: bold;">Floor Plan</span></h3>
                     </div>
                 </div>
                 <div class="row">
                     <div class="col-lg-6 mt-4 mt-lg-0">
                         <img src="backend/imgadmin/<%= map %>" class="img-fluid">
                     </div>
                     <div class="col-lg-6 mt-4 mt-lg-0">
                         <img src="backend/imgadmin/<%= fplan %>" class="img-fluid">
                     </div>
                 </div>
             </div>
         </section>

         <%
                 }
             } catch (SQLException e) {
                 e.printStackTrace();
             } finally {
                 // Close database resources
                 try {
                     if (rs != null) rs.close();
                     if (ps != null) ps.close();
                     if (con != null) con.close();
                 } catch (SQLException e) {
                     e.printStackTrace();
                 }
             }
         %>
        
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