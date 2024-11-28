<%@page import="java.sql.*"%>
<%@page import="java.util.*"%>
<!DOCTYPE html>
<html lang="en">
   <head>
      <!-- Basic Page Needs
         ================================================== -->
      <meta charset="utf-8">
      <title>Home - Basudev Construction</title>
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
      <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;700&display=swap" rel="stylesheet">
      <!-- Bootstrap -->
      <link rel="stylesheet" href="plugins/bootstrap/bootstrap.min.css">
      <!-- FontAwesome -->
      <link rel="stylesheet" href="plugins/fontawesome/css/all.min.css">
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
      <style>
                    .ts-service-box:hover .ts-service-image-wrapper img {
                        transform: scale(1.05);
                    }
                    .ts-service-box:hover {
                        box-shadow: 0 8px 16px rgba(0,0,0,0.2);
                        transform: translateY(-5px);
                    }
                </style>
      <script src="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.js"></script>
   </head>
   <body>
      <div class="body-inner">
      <%@ include file="header.jsp" %>
      <div class="banner-carousel banner-carousel-1 mb-0" data-aos="fade-down">
         <div class="banner-carousel-item" style="background-image:linear-gradient(rgba(0, 53, 88, 0.409), rgba(0, 0, 0, 0.728)),url(images/slider-main/img.png)">
            <div class="slider-content">
               <div class="container h-100">
                  <div class="row align-items-center h-100">
                     <div class="col-md-12 text-center" data-aos="fade-down">
                        <h2 class="slide-title" style="font-family: 'Times New Roman', serif; font-weight: bold;">Unmatched excellence</h2>
                        <h3 class="slide-sub-title" style="font-family: 'Times New Roman', serif; font-weight: bold;">Construction Industry</h3>
                        <p data-animation-in="slideInLeft">
                           <a href="services.jsp" class="slider btn btn-primary">Our Services</a>
                           <a href="contact.jsp" class="slider btn btn-primary border">Contact Now</a>
                        </p>
                     </div>
                  </div>
               </div>
            </div>
         </div>
         <div class="banner-carousel-item" style="background-image:linear-gradient(rgba(0, 53, 88, 0.409), rgba(0, 0, 0, 0.728)),url(images/slider-main/img_1.png)">
            <div class="slider-content text-left">
               <div class="container h-100">
                  <div class="row align-items-center h-100">
                     <div class="col-md-12" data-aos="fade-left">
                        <h2 class="slide-title-box">World Class Service</h2>
                        <h3 class="slide-title" style="font-family: 'Times New Roman', serif; font-weight: bold;">Where Excellence Meets Service</h3>
                        <h3 class="slide-sub-title" style="font-family: 'Times New Roman', serif; font-weight: bold;">Making Your Choice Effortless</h3>
                        <p data-animation-in="slideInRight">
                           <a href="services.jsp" class="slider btn btn-primary border">Our Projects</a>
                        </p>
                     </div>
                  </div>
               </div>
            </div>
         </div>
         <div class="banner-carousel-item" style="background-image:linear-gradient(rgba(0, 53, 88, 0.409), rgba(0, 0, 0, 0.728)),url(images/slider-main/img_2.png)">
            <div class="slider-content text-right">
               <div class="container h-100">
                  <div class="row align-items-center h-100">
                     <div class="col-md-12" data-aos="fade-right">
                        <h2 class="slide-title" style="font-family: 'Times New Roman', serif; font-weight: bold;">Introducing Our Expert Engineers</h2>
                        <h3 class="slide-sub-title" style="font-family: 'Times New Roman', serif; font-weight: bold;">We Support Sustainable Solutions</h3>
                        <div data-animation-in="slideInLeft">
                           <a href="contact.jsp" class="slider btn btn-primary" aria-label="contact-with-us">Get Free Quote</a>
                           <a href="about.jsp" class="slider btn btn-primary border" aria-label="learn-more-about-us">Learn more</a>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </div>
      <section id="ts-features" class="ts-features">
         <div class="container">
            <div class="row">
               <div class="col-lg-6">
                  <div class="ts-intro" data-aos="fade-left">
                     <h3 class="section-sub-title" data-aos="fade-up" style="font-family: 'Times New Roman', serif;">About<span style="font-family: 'Times New Roman', serif; font-weight: bold;"> Basudev Group</span></h3>
                     <p>With a group of young and dedicated professional at its core Basudev Constructions (P) Ltd is passionately committed to the cause of good living.</p>
                     <p> Spearheading the group is Er. S.K.Jha with substantial experience of 30 years as managing director of Lord Engineering, constructions and Consultancy Pvt. Ltd which had promoted reputed projects like Lord Gunjan Palace, Gagan Awas, Shanti Niwas, Bright Residency, 12th Milestone, Kalinga Kutir, Arya Vertex, Nanda Kutir, Aryavarata & Aryabhatt (at Cuttack) etc. The technical strength of the team has resulted in successfully carving out projects offering elegant living condition with a decent price tag.
                     </p>
                     <a href="about.jsp" class="slider btn btn-primary">Read More</a>
                  </div>
                  <!-- Intro box end -->
               </div>
               <!-- Col end -->
               <div class="col-lg-6 mt-4 mt-lg-0" data-aos="fade-right">
                  <img src="images/img.png" style="height:450px; width:100%; object-fit:cover; ">
                  <!----   <div class="inner-div top-left">
                     <h2>World Class Service</h2>
                        </div>--->
               </div>
               <!-- Col end -->
            </div>
            <!-- Row end -->
         </div>
         <!-- Container end -->
      </section>
      <!-- Feature are end -->
      <section id="facts" class="youtube-area1" data-aos="fade-left">
         <div class="container">
            <div class="facts-wrapper mt-5">
               <div class="row">
                  <div class="col-md-3 col-sm-6 ts-facts col-6  mt-md-0">

                                <div class="ts-facts-content" data-aos="fade-left" style="text-align: center; padding: 50px 0; background-color: #2c3e50; border-radius: 100%; box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);">
                                    <h2 class="ts-facts-num" style="font-size: 60px; color: #f39c12; font-weight: bold; margin-bottom: 10px;">
                                        <span class="counterUp" data-count="30" style="transition: all 1s ease-in-out;">0</span>
                                    </h2>
                                    <h3 class="ts-facts-title text-white" style="font-size: 24px; font-weight: 500; text-transform: uppercase; letter-spacing: 1px;">
                                        Years Of Experience
                                    </h3>
                                </div>

                              </div><!-- Col end -->
                              <div class="col-md-3 col-sm-6 col-6 ts-facts">
                              <div class="ts-facts-content" data-aos="fade-left" style="text-align: center; padding: 50px 0; background-color: #2c3e50; border-radius: 100%; box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);">
                                  <h2 class="ts-facts-num" style="font-size: 60px; color: #f39c12; font-weight: bold; margin-bottom: 10px;">
                                      <span class="counterUp" data-count="20" style="transition: all 1s ease-in-out;">0</span>
                                  </h2>
                                  <h3 class="ts-facts-title text-white" style="font-size: 24px; font-weight: 500; text-transform: uppercase; letter-spacing: 1px;">
                                      Completed Projects
                                  </h3>
                              </div>
                              </div><!-- Col end -->

                              <div class="col-md-3 col-sm-6 ts-facts col-6  mt-sm-0">
                                  <div class="ts-facts-content" data-aos="fade-left" style="text-align: center; padding: 50px 0; background-color: #2c3e50; border-radius: 100%; box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);">
                                      <h2 class="ts-facts-num" style="font-size: 60px; color: #f39c12; font-weight: bold; margin-bottom: 10px;">
                                          <span class="counterUp" data-count="8" style="transition: all 1s ease-in-out;">0</span>
                                      </h2>
                                      <h3 class="ts-facts-title text-white" style="font-size: 24px; font-weight: 500; text-transform: uppercase; letter-spacing: 1px;">
                                         Upcoming Projects
                                      </h3>
                                  </div>
                              </div><!-- Col end -->

                              <div class="col-md-3 col-sm-6 ts-facts col-6  mt-md-0">
                                <div class="ts-facts-content" data-aos="fade-left" style="text-align: center; padding: 50px 0; background-color: #2c3e50; border-radius: 100%; box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);">
                                    <h2 class="ts-facts-num" style="font-size: 60px; color: #f39c12; font-weight: bold; margin-bottom: 10px;">
                                        <span class="counterUp" data-count="15" style="transition: all 1s ease-in-out;">0</span>
                                    </h2>
                                    <h3 class="ts-facts-title text-white" style="font-size: 24px; font-weight: 500; text-transform: uppercase; letter-spacing: 1px;">
                                        Awards & Accolades
                                    </h3>
                                </div>
                              </div>
                  <!-- Col end -->
               </div>
               <!-- Facts end -->
            </div>
            <!--/ Content row end -->
         </div>
         <!--/ Container end -->
      </section>
       <br/>
          <br/>

      <!-- Facts end -->
      <section id="main-container" class="main-container pb-2">
              <div class="container">
                  <div class="row text-center">
                      <div class="col-lg-12">
                            <h3 class="section-sub-title" data-aos="fade-up" style="font-family: 'Times New Roman', serif; font-weight: bold;">Our <span style="font-family: 'Times New Roman', serif; font-weight: bold;">Services</span></h3>

                      </div>
                  </div>
                  <div class="row">
                      <!-- Service Box 1 -->
                      <div class="col-lg-4 col-md-6 mb-5">
                          <div class="ts-service-box" data-aos="fade-up" style="height: 350px; display: flex; flex-direction: column; justify-content: space-between; background-color: #fff; border-radius: 10px; box-shadow: 0 4px 8px rgba(0,0,0,0.1); transition: all 0.3s ease-in-out;">
                              <div class="ts-service-image-wrapper" style="flex-grow: 1; overflow: hidden; border-radius: 10px;">
                                  <img loading="lazy" class="w-100" src="images/services/img_2.png" alt="service-image" style="object-fit: cover; height: 250px; transition: transform 0.3s ease;">
                              </div>
                              <div class="d-flex">
                                  <div class="ts-service-box-img">
                                      <img loading="lazy" width="80px" src="images/servicel1.png" alt="service-icon" style="border-radius: 50%; box-shadow: 0 2px 5px rgba(0,0,0,0.1);">
                                  </div>
                                  <div class="ts-service-info">
                                      <h5><a href="services.jsp" style="color: #333; font-size: 1.2rem; font-weight: bold; text-decoration: none;">Pre Purchase Land Verification & Comprehensive Legal Advice</a></h5>
                                  </div>
                              </div>
                          </div>
                      </div>

                      <!-- Service Box 2 -->
                      <div class="col-lg-4 col-md-6 mb-5">
                          <div class="ts-service-box" data-aos="fade-up" style="height: 350px; display: flex; flex-direction: column; justify-content: space-between; background-color: #fff; border-radius: 10px; box-shadow: 0 4px 8px rgba(0,0,0,0.1); transition: all 0.3s ease-in-out;">
                              <div class="ts-service-image-wrapper" style="flex-grow: 1; overflow: hidden; border-radius: 10px;">
                                  <img loading="lazy" class="w-100" src="images/services/img.png" alt="service-image" style="object-fit: cover; height: 200px; transition: transform 0.3s ease;">
                              </div>
                              <div class="d-flex">
                                  <div class="ts-service-box-img">
                                      <img loading="lazy" width="80px" src="images/servicel2.png" alt="service-icon" style="border-radius: 50%; box-shadow: 0 2px 5px rgba(0,0,0,0.1);">
                                  </div>
                                  <div class="ts-service-info">
                                      <h3 class="service-box-title"><a href="services.jsp" style="color: #333; font-size: 1.2rem; font-weight: bold; text-decoration: none;">Documentation</a></h3>
                                  </div>
                              </div>
                          </div>
                      </div>

                      <!-- Service Box 3 -->
                      <div class="col-lg-4 col-md-6 mb-5">
                          <div class="ts-service-box" data-aos="fade-up" style="height: 350px; display: flex; flex-direction: column; justify-content: space-between; background-color: #fff; border-radius: 10px; box-shadow: 0 4px 8px rgba(0,0,0,0.1); transition: all 0.3s ease-in-out;">
                              <div class="ts-service-image-wrapper" style="flex-grow: 1; overflow: hidden; border-radius: 10px;">
                                  <img loading="lazy" class="w-100" src="images/services/img_1.png" alt="service-image" style="object-fit: cover; height: 200px; transition: transform 0.3s ease;">
                              </div>
                              <div class="d-flex">
                                  <div class="ts-service-box-img">
                                      <img loading="lazy" width="80px" src="images/servicel3.png" alt="service-icon" style="border-radius: 50%; box-shadow: 0 2px 5px rgba(0,0,0,0.1);">
                                  </div>
                                  <div class="ts-service-info">
                                      <h3 class="service-box-title"><a href="services.jsp" style="color: #333; font-size: 1.2rem; font-weight: bold; text-decoration: none;">Architectural Plans & Design</a></h3>
                                  </div>
                              </div>
                          </div>
                      </div>

                      <!-- Service Box 4 -->
                      <div class="col-lg-4 col-md-6 mb-5">
                          <div class="ts-service-box" data-aos="fade-up" style="height: 350px; display: flex; flex-direction: column; justify-content: space-between; background-color: #fff; border-radius: 10px; box-shadow: 0 4px 8px rgba(0,0,0,0.1); transition: all 0.3s ease-in-out;">
                              <div class="ts-service-image-wrapper" style="flex-grow: 1; overflow: hidden; border-radius: 10px;">
                                  <img loading="lazy" class="w-100" src="images/services/img_3.png" alt="service-image" style="object-fit: cover; height: 200px; transition: transform 0.3s ease;">
                              </div>
                              <div class="d-flex">
                                  <div class="ts-service-box-img">
                                      <img loading="lazy" width="80px" src="images/servicel4.png" alt="service-icon" style="border-radius: 50%; box-shadow: 0 2px 5px rgba(0,0,0,0.1);">
                                  </div>
                                  <div class="ts-service-info">
                                      <h3 class="service-box-title"><a href="services.jsp" style="color: #333; font-size: 1.2rem; font-weight: bold; text-decoration: none;">Project Evaluation</a></h3>
                                  </div>
                              </div>
                          </div>
                      </div>

                      <!-- Service Box 5 -->
                      <div class="col-lg-4 col-md-6 mb-5">
                          <div class="ts-service-box" data-aos="fade-up" style="height: 350px; display: flex; flex-direction: column; justify-content: space-between; background-color: #fff; border-radius: 10px; box-shadow: 0 4px 8px rgba(0,0,0,0.1); transition: all 0.3s ease-in-out;">
                              <div class="ts-service-image-wrapper" style="flex-grow: 1; overflow: hidden; border-radius: 10px;">
                                  <img loading="lazy" class="w-100" src="images/services/img_4.png" alt="service-image" style="object-fit: cover; height: 200px; transition: transform 0.3s ease;">
                              </div>
                              <div class="d-flex">
                                  <div class="ts-service-box-img">
                                      <img loading="lazy" width="80px" src="images/servicel5.png" alt="service-icon" style="border-radius: 50%; box-shadow: 0 2px 5px rgba(0,0,0,0.1);">
                                  </div>
                                  <div class="ts-service-info">
                                      <h3 class="service-box-title"><a href="services.jsp" style="color: #333; font-size: 1.2rem; font-weight: bold; text-decoration: none;">Real Estate Broking</a></h3>
                                  </div>
                              </div>
                          </div>
                      </div>

                      <!-- Service Box 6 -->
                      <div class="col-lg-4 col-md-6 mb-5">
                          <div class="ts-service-box" data-aos="fade-up" style="height: 350px; display: flex; flex-direction: column; justify-content: space-between; background-color: #fff; border-radius: 10px; box-shadow: 0 4px 8px rgba(0,0,0,0.1); transition: all 0.3s ease-in-out;">
                              <div class="ts-service-image-wrapper" style="flex-grow: 1; overflow: hidden; border-radius: 10px;">
                                  <img loading="lazy" class="w-100" src="images/services/services15.jpg" alt="service-image" style="object-fit: cover; height: 200px; transition: transform 0.3s ease;">
                              </div>
                              <div class="d-flex">
                                  <div class="ts-service-box-img">
                                      <img loading="lazy" width="80px" src="images/servicel1.png" alt="service-icon" style="border-radius: 50%; box-shadow: 0 2px 5px rgba(0,0,0,0.1);">
                                  </div>
                                  <div class="ts-service-info">
                                      <h3 class="service-box-title"><a href="services.jsp" style="color: #333; font-size: 1.2rem; font-weight: bold; text-decoration: none;">Post Purchase Property</a></h3>
                                  </div>
                              </div>
                          </div>
                      </div>

                  </div>
              </div>
          </section>
      <!-- Main container end -->
      <section id="facts" class="youtube-area2">
         <div class="container">
            <div class="row text-center">
               <div class="col-12">
                  <h3 class="section-sub-title text-white" data-aos="fade-up" style="font-family: 'Times New Roman', serif; font-weight: bold;">Our Mission</h3>
               </div>
            </div>
            <!--/ Title row end -->
            <div class="row text-center">
               <div class="col-12">
                  <p class="section-title text-white" data-aos="fade-up">Driven by a team of enthusiastic and skilled professionals, Basudev Constructions (P) Ltd., Bhubaneswar, is wholeheartedly devoted to creating exceptional living experiences.</p>
               </div>
            </div>
         </div>
      </section>
      <section class="project-area">
         <div class="container">
            <div class="row text-center">
               <div class="col-lg-12">
                  <h3 class="section-sub-title" data-aos="fade-up" style="font-family: 'Times New Roman', serif; font-weight: bold;">Our <span style="font-family: 'Times New Roman', serif; font-weight: bold;"> Projects</span></h3>
               </div>
            </div>
            <!--/ Title row end -->
            <div class="row">
               <div class="swiper" data-aos="fade-up">
                  <div class="slide-container-three">
                     <div class="card-wrapper swiper-wrapper">
                        <%
                            // Include database connection file
                            Connection con = null;
                            Statement stmt = null;
                            ResultSet rs = null;

                            try {
                                Class.forName("com.mysql.cj.jdbc.Driver");
                                con = DriverManager.getConnection("jdbc:mysql://localhost:3306/basudevconstructions_db", "root", "system");

                                String selectQuery = "SELECT * FROM addproject";
                                stmt = con.createStatement();
                                rs = stmt.executeQuery(selectQuery);
                        %>
                        <% while (rs.next()) { %>
                            <div class="swiper-slide" >
                                <div class="item" style="text-align: center; padding: 20px;">
                                    <a href="projects-single.jsp?url=<%= rs.getString("url") %>" style="text-decoration: none;">
                                        <img loading="lazy" class="w-100" src="backend/imgadmin/<%= rs.getString("image") %>" alt="service-image" style="border-radius: 10px; transition: transform 0.3s ease; max-height: 200px; object-fit: cover;">
                                    </a>
                                    <span class="category top-left" style="position: absolute; top: 10px; left: 10px; background-color: rgba(0, 123, 255, 0.8); color: #fff; padding: 5px 10px; border-radius: 5px; font-size: 14px; transition: background-color 0.3s ease;">
                                        <%= rs.getString("status") %>
                                    </span>
                                    <h4 style="margin-top: 15px; font-size: 18px; font-weight: bold; color: #333; position: relative; transition: color 0.3s ease;">
                                        <a href="projects-single.jsp?url=<%= rs.getString("url") %>" style="text-decoration: none; color: inherit;">
                                            <%= rs.getString("name") %>
                                        </a>
                                        <span style="position: absolute; left: 0; bottom: -5px; width: 0; height: 2px; background-color: #007bff; transition: width 0.3s ease;"></span>
                                    </h4>
                                    <h5 class="text-danger pt-2" style="font-size: 16px; margin-top: 5px;"><%= rs.getString("location") %></h5>
                                    <div class="main-button border-top" style="padding-top: 10px; margin-top: 15px; border-top: 1px solid #ddd;">
                                        <a href="projects-single.jsp?url=<%= rs.getString("url") %>" style="color: #007bff; font-size: 14px; text-decoration: none; display: inline-block; padding: 8px 15px; border: 1px solid #007bff; border-radius: 5px; transition: background-color 0.3s ease, color 0.3s ease;">
                                            <i class="fa fa-caret-right" style="margin-right: 5px;"></i> Schedule a visit
                                        </a>
                                    </div>
                                </div>
                            </div>
                        <% } %>
                        <%
                            } catch (Exception e) {
                                e.printStackTrace();
                            } finally {
                                try {
                                    if (rs != null) rs.close();
                                    if (stmt != null) stmt.close();
                                    if (con != null) con.close();
                                } catch (SQLException ex) {
                                    ex.printStackTrace();
                                }
                            }
                        %>
                     </div>
                  </div>
               </div>
               <!-- Content row end -->
            </div>
            <!--/ Container end -->
      </section>
      <!-- Project area end -->
     <section class="testimonal-sec pb-2" style="background-color: #f4f7fc; padding: 60px 0;">
       <div class="container">
         <div class="row text-center">
           <div class="col-lg-12">
             <h3 class="section-sub-title" data-aos="fade-up" style="font-family: 'Times New Roman', serif; font-weight: bold; font-size: 36px; color: #2d3e50;">
               Our <span style="font-family: 'Times New Roman', serif; font-weight: bold;">Testimonial</span>
             </h3>
           </div>
         </div>
         <!-- Title row end -->

         <div class="row">
           <div class="swiper" data-aos="fade-up">
             <div class="slide-container-three">
               <div class="card-wrapper swiper-wrapper">
                 <!-- Testimonial 1 -->
                 <div class="col-lg-4 swiper-slide">
                   <div class="quote-item quote-border mt-5" style="border-radius: 20px; border: 1px solid #ddd; background-color: white; padding: 30px; box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1); height: 250px; transition: transform 0.3s ease, box-shadow 0.3s ease;">
                     <div class="quote-text-border" style="font-style: italic; color: #555; margin-bottom: 20px;">
                       "Great team, great people, and outstanding support."
                     </div>
                     <div class="quote-item-footer" style="display: flex; align-items: center; margin-top: 20px;">
                       <img loading="lazy" class="testimonial-thumb" src="images/male.png" alt="testimonial" style="border-radius: 50%; width: 70px; height: 70px; border: 2px solid #ddd;">
                       <div class="quote-item-info" style="margin-left: 15px;">
                         <h3 class="quote-author" style="font-weight: bold; font-size: 18px; color: #2d3e50;">Rajat Pawar</h3>
                         <span class="quote-subtext" style="font-size: 14px; color: #777;">Chairman, Okt Industries</span>
                       </div>
                     </div>
                   </div><!-- Quote item end -->
                 </div>

                 <!-- Testimonial 2 -->
                 <div class="col-lg-4 testi-card swiper-slide">
                   <div class="quote-item quote-border mt-5" style="border-radius: 20px; border: 1px solid #ddd; background-color: white; padding: 30px; box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1); height: 250px; transition: transform 0.3s ease, box-shadow 0.3s ease;">
                     <div class="quote-text-border" style="font-style: italic; color: #555; margin-bottom: 20px;">
                       "Basudev Constructions highly values both quality and work."
                     </div>
                     <div class="quote-item-footer" style="display: flex; align-items: center; margin-top: 20px;">
                       <img loading="lazy" class="testimonial-thumb" src="images/male.png" alt="testimonial" style="border-radius: 50%; width: 70px; height: 70px; border: 2px solid #ddd;">
                       <div class="quote-item-info" style="margin-left: 15px;">
                         <h3 class="quote-author" style="font-weight: bold; font-size: 18px; color: #2d3e50;">Arijit Bera</h3>
                         <span class="quote-subtext" style="font-size: 14px; color: #777;">MD, JYZ Industries</span>
                       </div>
                     </div>
                   </div><!-- Quote item end -->
                 </div>

                 <!-- Testimonial 3 -->
                 <div class="col-lg-4 testi-card swiper-slide">
                   <div class="quote-item quote-border mt-5" style="border-radius: 20px; border: 1px solid #ddd; background-color: white; padding: 30px; box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1); height: 250px; transition: transform 0.3s ease, box-shadow 0.3s ease;">
                     <div class="quote-text-border" style="font-style: italic; color: #555; margin-bottom: 20px;">
                       "You truly made my dream a reality. Thank you."
                     </div>
                     <div class="quote-item-footer" style="display: flex; align-items: center; margin-top: 20px;">
                       <img loading="lazy" class="testimonial-thumb" src="images/male.png" alt="testimonial" style="border-radius: 50%; width: 70px; height: 70px; border: 2px solid #ddd;">
                       <div class="quote-item-info" style="margin-left: 15px;">
                         <h3 class="quote-author" style="font-weight: bold; font-size: 18px; color: #2d3e50;">Mohan Kumar</h3>
                         <span class="quote-subtext" style="font-size: 14px; color: #777;">Chairman, Swift Industries</span>
                       </div>
                     </div>
                   </div><!-- Quote item end -->
                 </div>

                 <!-- Testimonial 4 -->
                 <div class="col-lg-4 testi-card swiper-slide">
                   <div class="quote-item quote-border mt-5" style="border-radius: 20px; border: 1px solid #ddd; background-color: white; padding: 30px; box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1); height: 250px; transition: transform 0.3s ease, box-shadow 0.3s ease;">
                     <div class="quote-text-border" style="font-style: italic; color: #555; margin-bottom: 20px;">
                       "I've had a great experience with the company."
                     </div>
                     <div class="quote-item-footer" style="display: flex; align-items: center; margin-top: 20px;">
                       <img loading="lazy" class="testimonial-thumb" src="images/male.png" alt="testimonial" style="border-radius: 50%; width: 70px; height: 70px; border: 2px solid #ddd;">
                       <div class="quote-item-info" style="margin-left: 15px;">
                         <h3 class="quote-author" style="font-weight: bold; font-size: 18px; color: #2d3e50;">Rahul Jain</h3>
                         <span class="quote-subtext" style="font-size: 14px; color: #777;">Chairman, Quickbyte Solutions</span>
                       </div>
                     </div>
                   </div><!-- Quote item end -->
                 </div>
               </div>
             </div>
             <div class="swiper-button-next-three swiper-navBtn"></div>
             <div class="swiper-button-prev-three swiper-navBtn"></div>
           </div>
         </div><!-- Content row end -->
       </div>
       <!--/ Container end -->
     </section>

<!-- Project area end -->
      <section class="youtube-area3">
      <div class="container">
      <!--/ Title row end -->
      <div class="row ">
      <div class="col-12 text-center">
      <h2 class="text-white" data-aos="fade-up" style="font-family: 'Times New Roman', serif; font-weight: bold;"><b> Join Us</b></h2>
      <h3 class="text-white" data-aos="fade-up"><b> Strong Team, Exceptional Projects</b></h3>
      <p class="section-title text-white" data-aos="fade-up">Discover Our Opportunities and Find Your Perfect Role.</p>
      <a href="contact.jsp" class="slider btn btn-primary">Contact Us</a>
      </div>
      </div>
      </div>
      </section>
      <section id="ts-features" class="ts-features bg-white">
      <div class="container">
      <div class="row">
      <div class="col-lg-5  contact-info " data-aos="fade-right">
      <div class=" ts-intro">
      <h3 class="section-sub-title" style="font-family: 'Times New Roman', serif; font-weight: bold;">It's Time To <br /> <span style="font-family: 'Times New Roman', serif; font-weight: bold;"> Find Your Perfect Home</span></h3>
      <div class="col-12">
      <h4> <i class="fas fa-envelope" style="font-size:25px;"></i> E-Mail :</h4>
      <p> basudevconstructionbbsr@gmail.com</p>
      </div>
      <div class="col-12">
      <h4><i class="fas fa-map"></i> Address :</h4>
      <p>Flat No. 102 . Shanti Niwas,<br />
      Cuttack Road, Bhubaneswar- 751010 </p>
      </div>
      <div class="col-12">
      <h4> <i class="fas fa-phone  " style="font-size:25px;"></i> Phone :</h4>
     <!--  <p>Tel: 0674 - 2549113, 9238324216</p> <br />
      Cell: 9437024213 / 7978626374</p> -->
       <p> Phone: 9861610876  </p>
      </div>
      </div>
      </div>
      <div class="col-lg-7 mt-4 mt-lg-0" data-aos="fade-left">
      <img src=" images/laptop2.png" class="img-fluid">
      </div><!-- Col end -->
      </div><!-- Row end -->
      </div><!-- Container end -->
      </section><!-- Feature are end -->
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
      <script>
          // Add hover effects using JavaScript for consistent dynamic behavior
          document.querySelectorAll('.swiper-slide').forEach(card => {
              const image = card.querySelector('img');
              const status = card.querySelector('.category');
              const nameUnderline = card.querySelector('h4 span');
              const button = card.querySelector('.main-button a');

              // Hover effect for the image
              image.addEventListener('mouseover', () => {
                  image.style.transform = 'scale(1.1)';
              });
              image.addEventListener('mouseout', () => {
                  image.style.transform = 'scale(1)';
              });

              // Hover effect for the status
              status.addEventListener('mouseover', () => {
                  status.style.backgroundColor = '#0056b3';
              });
              status.addEventListener('mouseout', () => {
                  status.style.backgroundColor = 'rgba(0, 123, 255, 0.8)';
              });

              // Hover effect for the name underline
              card.querySelector('h4').addEventListener('mouseover', () => {
                  nameUnderline.style.width = '100%';
              });
              card.querySelector('h4').addEventListener('mouseout', () => {
                  nameUnderline.style.width = '0';
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
   </body>
</html>