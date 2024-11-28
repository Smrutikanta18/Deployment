<%@ page import="java.sql.*" %>
<%@ page import="jakarta.servlet.http.*, jakarta.servlet.*" %>
<%@ include file="adminconnection.jsp" %>

<%
    if (request.getParameter("submit") != null) {
        String email = request.getParameter("email");
        String userPassword = request.getParameter("password"); // Rename to avoid conflict

        PreparedStatement pstmt = null;
        ResultSet rs = null;

        try {
            if (con != null) {
                String query = "SELECT * FROM login WHERE email = ? AND password = ?";
                pstmt = con.prepareStatement(query);
                pstmt.setString(1, email);
                pstmt.setString(2, userPassword); // Use renamed variable
                rs = pstmt.executeQuery();

                if (rs.next()) {
                    // Login successful
                    session.setAttribute("em_ail", email); // Use the existing session

                    response.sendRedirect("dashboard.jsp"); // Redirect to dashboard
                } else {
                    // Login failed
                    out.println("<p style='color: red;'>Login failed: Invalid email or password.</p>");
                }
            } else {
                out.println("Database connection not established.");
            }
        } catch (SQLException e) {
            out.println("Error: " + e.getMessage());
        } finally {
            try {
                if (rs != null) rs.close();
                if (pstmt != null) pstmt.close();
                if (con != null) con.close();
            } catch (SQLException e) {
                out.println("Error closing resources: " + e.getMessage());
            }
        }
    }
%>


<!doctype html>
<html lang="en">

<head>
   <meta charset="utf-8">
   <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
   <title>Login| Arya Constructions</title>

   <!-- Favicon -->
   <link rel="shortcut icon" href="assets/images/favicon.ico" />

   <link rel="stylesheet" href="assets/css/backend-plugin.min.css">
   <link rel="stylesheet" href="assets/css/backend.css?v=1.0.0">
</head>

<body class=" ">
   <!-- loader Start -->
   <div id="loading">
      <div id="loading-center">
      </div>
   </div>
   <!-- loader END -->

   <div class="wrapper">
      <section class="login-content">
         <div class="container h-100">
            <div class="row align-items-center justify-content-center h-100">
               <div class="col-md-5">
                  <div class="card p-3">
                     <div class="card-body">

                        <h3 class="mb-3 font-weight-bold text-center"> Admin Login</h3>
                        <p class="text-center text-secondary mb-4">Log in to your account to continue</p>
                        <div class="social-btn d-flex justify-content-around align-items-center mb-4">

                        </div>

                        <div class="mb-5">
                           <p class="line-around text-secondary mb-0"><span class="line-around-1"></span></p>
                        </div>

                        <form action="" method="post">
                           <div class="row">
                              <div class="col-lg-12">
                                 <div class="form-group">
                                    <label class="text-secondary">Email</label>
                                    <input class="form-control" type="email" placeholder="Enter Email" name="email" required />
                                 </div>
                              </div>
                              <div class="col-lg-12 mt-2">
                                 <div class="form-group">
                                    <div class="d-flex justify-content-between align-items-center">
                                       <label class="text-secondary">Password</label>
                                    </div>
                                    <input class="form-control" type="password" placeholder="Enter Password" name="password" maxlength="6" required />
                                 </div>
                              </div>
                           </div>

                           <button type="submit" class="btn btn-primary btn-block mt-2" name="submit">Log In</button>

                        </form>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </section>
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
</body>

</html>