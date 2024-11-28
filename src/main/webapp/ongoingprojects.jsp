 <%@ page import="java.sql.*" %>
 <%@ page contentType="text/html; charset=UTF-8" language="java" %><!DOCTYPE html>
<html lang="en">
   <head>
      <!-- Basic Page Needs
         ================================================== -->
      <meta charset="utf-8">
      <title>Ongoing Projects</title>
      <!-- Mobile Specific Metas
         ================================================== -->
      <meta http-equiv="X-UA-Compatible" content="IE=edge">
      <meta name="description" content="Construction Html5 Template">
      <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=5.0">
      <link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet">
      <!-- Favicon
         ================================================== -->
<link rel="icon" type="image/png" href="${pageContext.request.contextPath}/images/logo.png">
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
      <!-- Swiper js for carousel -->
      <!-- use 1st two link or  -->
      <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.css">
      <script src="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.js"></script>
   </head>
   <body>
      <div class="body-inner">
         <%@ include file="header.jsp" %>

         <div id="banner-area" class="banner-area" style="background-image:linear-gradient(rgba(0, 53, 88, 0.409), rgba(0, 0, 0, 0.728)),  url(images/banner/banner5.png)">
            <div class="banner-text">
               <div class="container">
                  <div class="row">
                     <div class="col-lg-12">
                        <div class="banner-heading" data-aos="fade-up">
                           <h1 class="banner-title" style="font-family: 'Times New Roman', serif; font-weight: bold;">Ongoing Projects</h1>
                           <nav aria-label="breadcrumb">
                              <ol class="breadcrumb justify-content-center">
                                 <li class="breadcrumb-item"><a href="index.jsp">Home</a></li>
                                 <li class="breadcrumb-item"><a href="ongoingprojects.jsp">Ongoing Projects</a></li>
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
         <section id="main-container" class="project-area pb-2">
            <div class="container">
               <!--/ Title row end -->
               <div class="row">

                 <%
                     // Connection setup (assuming you have a connection utility for DB)
                     Connection con = null;
                     Statement stmt = null;
                     ResultSet rs = null;
                     String url = "jdbc:mysql://localhost:3306/basudevconstructions_db";
                                             String user = "root";
                                             String password = "system";
                     String selectquery = "SELECT * from `addproject` WHERE status = 'ongoing';";
                     try {
                         Class.forName("com.mysql.cj.jdbc.Driver");
                                                     con = DriverManager.getConnection(url, user, password);
                         stmt = con.createStatement();
                         rs = stmt.executeQuery(selectquery);

                         while (rs.next()) {
                 %>
                             <div class="col-lg-4 col-md-6 mb-5" data-aos="fade-up" >
                                 <div class="swiper-slide" style="overflow: hidden; border-radius: 10px;">
                                     <div class="item" style="text-align: center; padding: 20px;">
                                         <a href="projects-single.jsp?url=<%= rs.getString("url") %>" style="text-decoration: none;">
                                             <img loading="lazy" class="w-100" src="backend/imgadmin/<%= rs.getString("image") %>" alt="service-image" style="border-radius: 10px; transition: transform 0.3s ease; max-height: 200px; object-fit: cover;">
                                         </a>
                                         <h4 style="margin-top: 15px; font-size: 18px; font-weight: bold; color: #333; position: relative; transition: color 0.3s ease;">
                                             <a href="projects-single.jsp?url=<%= rs.getString("url") %>" style="text-decoration: none; color: inherit;">
                                                 <%= rs.getString("name") %>
                                             </a>
                                             <span style="position: absolute; left: 0; bottom: -5px; width: 0; height: 2px; background-color: #007bff; transition: width 0.3s ease;"></span>
                                         </h4>
                                         <h5 class="text-danger" style="font-size: 16px; margin-top: 5px;"><%= rs.getString("location") %></h5>
                                         <div class="main-button border-top" style="padding-top: 10px; margin-top: 15px; border-top: 1px solid #ddd;">
                                             <a href="projects-single.jsp?url=<%= rs.getString("url") %>" style="color: #007bff; font-size: 14px; text-decoration: none; display: inline-block; padding: 8px 15px; border: 1px solid #007bff; border-radius: 5px; transition: background-color 0.3s ease, color 0.3s ease;">
                                                 <i class="fa fa-caret-right" style="margin-right: 5px;"></i> Schedule a visit
                                             </a>
                                         </div>
                                     </div>
                                 </div>
                             </div>



                 <%
                         }
                     } catch (SQLException e) {
                         e.printStackTrace();
                     } finally {
                         try {
                             if (rs != null) rs.close();
                             if (stmt != null) stmt.close();
                             if (con != null) con.close();
                         } catch (SQLException e) {
                             e.printStackTrace();
                         }
                     }
                 %>
               </div>
               <!-- Content row end -->
            </div>
            <!--/ Container end -->
         </section>
         <!-- Project area end -->
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

<script>
    // Add hover effects dynamically using JavaScript
    document.querySelectorAll('.col-lg-4').forEach(card => {
        const image = card.querySelector('img');
        const name = card.querySelector('h4 span');
        const button = card.querySelector('.main-button a');

        // Hover effect for the image
        image.addEventListener('mouseover', () => {
            image.style.transform = 'scale(1.1)';
        });
        image.addEventListener('mouseout', () => {
            image.style.transform = 'scale(1)';
        });

        // Hover effect for the name underline
        card.querySelector('h4').addEventListener('mouseover', () => {
            name.style.width = '100%';
        });
        card.querySelector('h4').addEventListener('mouseout', () => {
            name.style.width = '0';
        });

        // Hover effect for the "Schedule a visit" button
        button.addEventListener('mouseover', () => {
            button.style.backgroundColor = 'red';
            button.style.color = '#fff';
        });
        button.addEventListener('mouseout', () => {
            button.style.backgroundColor = 'transparent';
            button.style.color = '#007bff';
        });
    });
</script>
      <!-- Body inner end -->
   </body>
</html>