<!DOCTYPE html>
<html lang="en">

<head>

  <!-- Basic Page Needs
================================================== -->
  <meta charset="utf-8">
  <title>Services - Arya Construction</title>

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
    <style>
        .ts-service-box:hover .ts-service-image-wrapper img {
            transform: scale(1.05);
        }
        .ts-service-box:hover {
            box-shadow: 0 8px 16px rgba(0,0,0,0.2);
            transform: translateY(-5px);
        }
    </style>
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


    <div id="banner-area" class="banner-area" style="background-image:linear-gradient(rgba(0, 53, 88, 0.409), rgba(0, 0, 0, 0.728)), url(images/banner/banner5.png)">
      <div class="banner-text">
        <div class="container">
          <div class="row">
            <div class="col-lg-12">
              <div class="banner-heading" data-aos="fade-up">
                <h1 class="banner-title" style="font-family: 'Times New Roman', serif; font-weight: bold;">Services</h1>
                <nav aria-label="breadcrumb">
                  <ol class="breadcrumb justify-content-center">
                    <li class="breadcrumb-item"><a href="index.jsp">Home</a></li>
                    <li class="breadcrumb-item"><a href="services.jsp">Services</a></li>
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
            <div class="row text-center">
                <div class="col-lg-12">
                    <h3 class="section-sub-title" data-aos="fade-up" style="font-family: 'Times New Roman', serif; font-weight: bold;>Our <span style="font-family: 'Times New Roman', serif;">Services</span></h3>
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