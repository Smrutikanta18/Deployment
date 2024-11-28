<%@ page import="java.sql.*" %>

<%
    // Include the database connection
    String dbURL = "jdbc:mysql://localhost:3306/basudevconstructions_db";
    String dbUser = "root";
    String dbPassword = "system";

    Connection con = null;
    PreparedStatement pstmt = null;

    // Check if the form is submitted
    String submit = request.getParameter("submit");
    if (submit != null) {
        // Retrieve form data
        String firstname = request.getParameter("firstname");
        String lastname = request.getParameter("lastname");
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");
        String message = request.getParameter("message");

        try {
            // Establish database connection
            Class.forName("com.mysql.cj.jdbc.Driver");
            con = DriverManager.getConnection(dbURL, dbUser, dbPassword);

            // Insert query
            String insertQuery = "INSERT INTO contactform (firstname, lastname, email, phone, message) VALUES (?, ?, ?, ?, ?)";
            pstmt = con.prepareStatement(insertQuery);

            // Set parameters
            pstmt.setString(1, firstname);
            pstmt.setString(2, lastname);
            pstmt.setString(3, email);
            pstmt.setString(4, phone);
            pstmt.setString(5, message);

            // Execute update
            int rows = pstmt.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
            out.println("Error: " + e.getMessage());
        } finally {
            // Close resources
            if (pstmt != null) pstmt.close();
            if (con != null) con.close();
        }
    }
%>

<!DOCTYPE html>
<html lang="en">

<head>

  <!-- Basic Page Needs
================================================== -->
  <meta charset="utf-8">
  <title>Contact Us - Arya Constructions</title>

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


    <div id="banner-area" class="banner-area" style="background-image:linear-gradient(rgba(0, 53, 88, 0.409), rgba(0, 0, 0, 0.728)), url(images/banner/banner5.png)">
      <div class="banner-text">
        <div class="container">
          <div class="row">
            <div class="col-lg-12">
              <div class="banner-heading">
                <h1 class="banner-title" style="font-family: 'Times New Roman', serif; font-weight: bold;">Contact Us</h1>
                <nav aria-label="breadcrumb">
                  <ol class="breadcrumb justify-content-center">
                    <li class="breadcrumb-item"><a href="index.jsp">Home</a></li>
                    <li class="breadcrumb-item"><a href="contact.jsp">Contact Us</a></li>

                  </ol>
                </nav>
              </div>
            </div><!-- Col end -->
          </div><!-- Row end -->
        </div><!-- Container end -->
      </div><!-- Banner text end -->
    </div><!-- Banner area end -->

    <section id="main-container" class="contact-area ">
      <div class="container">
        <div class="row">
          <div class="col-md-12">
            <h3 class="" style="font-family: 'Times New Roman', serif; font-weight: bold;">We <br /> <span style="font-family: 'Times New Roman', serif; font-weight: bold;">Appreciate Your Thoughts </span></h3>

            <!-- contact form works with formspree.io  -->
            <!-- contact form activation doc: https://docs.themefisher.com/constra/contact-form/ -->
            <form id="contact-form" action="contact.jsp" method="post" role="form">
              <div class="error-container"></div>

              <div class="row">

                <div class="col-md-6">
                  <div class="form-group">
                    <label> First Name</label>
                    <input class="form-control form-control-name" name="firstname" id="name" placeholder="" type="text" required />
                  </div>
                </div>

                <div class="col-md-6">
                  <div class="form-group">
                    <label> Last Name</label>
                    <input class="form-control form-control-name" name="lastname" id="name" placeholder="" type="text" required />
                  </div>
                </div>

                <div class="col-md-6">
                  <div class="form-group">
                    <label>Email Address</label>
                    <input class="form-control form-control-email" name="email" id="email" placeholder="" type="email" required />
                  </div>
                </div>

                <div class="col-md-6">
                  <div class="form-group">
                    <label>Phone No</label>
                    <input class="form-control form-control-subject" name="phone" id="subject" placeholder="" maxlength="200" required />
                  </div>
                </div>
              </div>

              <div class="form-group">
                <label>Message</label>
                <textarea class="form-control form-control-message" name="message" id="message" placeholder="" rows="10" required></textarea>
              </div>

              <div class="text-right"><br>
                <button class="btn btn-primary solid blank  text-center" type="submit" name="submit">Submit Now</button>
              </div>

            </form>
          </div>

        </div><!-- Content row -->
      </div>
    </section>


    <div class="google-map" data-aos="fade-right">
      <iframe src="https://www.google.com/maps/dir/20.2221926,85.8383847/basudev+construction+map+location/@20.2206307,85.8362056,15z/data=!3m1!4b1!4m9!4m8!1m1!4e1!1m5!1m1!1s0x3a19a1cf7bc4123d:0x5954658b237dbacf!2m2!1d85.8547208!2d20.2143914?entry=ttu&g_ep=EgoyMDI0MTExOS4yIKXMDSoASAFQAw%3D%3D" width="100%" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
    </div>

    <section id="ts-features" class="ts-features bg-white">
      <div class="container">
        <div class="row">

          <div class="col-lg-5  contact-info " data-aos="fade-right">
            <div class="ts-intro">

              <h3 class="" style="font-family: 'Times New Roman', serif; font-weight: bold;">It's Time To <br /> <span style="font-family: 'Times New Roman', serif; font-weight: bold;"> Find Your Perfect Home</span></h3>

              <div class="col-12">

                <h4>E-Mail :</h4>
                <p> basudevconstructionbbsr@gmail.com </p>
              </div>
              <div class="col-12">

                <h4>Address :</h4>
                <p>Flat No. 102 . Shanti Niwas,<br />
                  Cuttack Road, Bhubaneswar- 751010 </p>
              </div>

              <div class="col-12">
                <h4>Phone :</h4>
                <!-- <p>Tel: 0674 - 2549113, 9238324216 <br />
                   Cell: 9437024213 / 7978626374</p> -->
                <p> Phone: 9861610876  </p>
              </div>


            </div>
          </div>

          <div class="col-lg-7 mt-4 mt-lg-0" data-aos="fade-left">

            <img src="images/laptop2.png" class="img-fluid">

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
</body>

</html>