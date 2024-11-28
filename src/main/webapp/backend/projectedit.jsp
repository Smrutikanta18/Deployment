<%@ page import="java.sql.*, jakarta.servlet.*, jakarta.servlet.http.*, java.io.*" %>
<%@ include file="adminconnection.jsp" %>

<%
    String userprofile = (String) session.getAttribute("em_ail");
        if (userprofile == null) {
            response.sendRedirect("login.jsp");
        }


%>
<!doctype html>
<html lang="en">

<head>
   <meta charset="utf-8">
   <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
   <title> Update Projects | Arya Constructions</title>
   <!-- Favicon -->
   <link rel="shortcut icon" href="assets/images/favicon.ico" />
   <link rel="stylesheet" href="assets/css/backend-plugin.min.css">
   <link rel="stylesheet" href="assets/css/backend.css?v=1.0.0">
</head>

<body class=" ">
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
               <h3 class="card-title ml-5 mb-4">Update Projects</h3>
            </div>
            <div class="row">
               <div class="col-sm-12 col-lg-12">
                  <div class="card">
                      <div class="card-body">
                        <%  String id = request.getParameter("ids");
                                                 String query = "SELECT * FROM addproject WHERE id = ?";
                                                        PreparedStatement     ps = con.prepareStatement(query);
                                                             ps.setInt(1, Integer.parseInt(id));

                                                          ResultSet rs = ps.executeQuery();
                                                             if (rs.next()) {
                                                                                        %>
                                                     <form id="projectForm" method="post" enctype="multipart/form-data">
                                                        <input name="id" type="hidden" value="<%= rs.getInt("id") %>" />
                                                        <input type="hidden" name="existingImage" value="<%= rs.getString("image") %>" />
                                                        <input type="hidden" name="existingMap" value="<%= rs.getString("map") %>" />
                                                        <input type="hidden" name="existingFplan" value="<%= rs.getString("fplan") %>" />
                                                        <div class="form-row">
                                                            <div class="col-md-6 mb-3">
                                                                <label for="status">Project Status</label>
                                                                <input type="text" class="form-control" id="status" name="status" value="<%= rs.getString("status") %>">
                                                            </div>
                                                            <div class="col-md-6 mb-3">
                                                                <label for="name">Project Name</label>
                                                                <input type="text" class="form-control" id="name" name="name" value="<%= rs.getString("name") %>">
                                                            </div>
                                                            <div class="col-md-6">
                                                                <p><b>Project Image:</b></p>
                                                                <div class="custom-file mb-3">
                                                                    <input type="file" class="custom-file-input" id="image" name="image" >
                                                                    <label class="custom-file-label" for="image">Choose file</label>
                                                                </div>
                                                            </div>
                                                            <div class="col-md-6">
                                                                <p><b>Map:</b></p>
                                                                <div class="custom-file mb-3">
                                                                    <input type="file" class="custom-file-input" id="map" name="map" >
                                                                    <label class="custom-file-label" for="map">Choose file</label>
                                                                </div>
                                                            </div>
                                                            <div class="col-md-6 mb-3">
                                                                <label for="location">Location</label>
                                                                <input type="text" class="form-control" id="location" name="location" value="<%= rs.getString("location") %>">
                                                            </div>
                                                            <div class="col-md-6">
                                                                <p><b>Floor Plan:</b></p>
                                                                <div class="custom-file mb-3">
                                                                    <input type="file" class="custom-file-input" id="fplan" name="fplan" >
                                                                    <label class="custom-file-label" for="fplan">Choose file</label>
                                                                </div>
                                                            </div>
                                                            <div class="col-md-6 mb-3">
                                                                <label for="details">Project Details</label>
                                                                <input type="text" class="form-control" id="details" name="details" value="<%= rs.getString("details") %>">
                                                            </div>
                                                            <div class="form-group mb-0" style="margin-top:30px;">
                                              <button class="btn btn-primary" type="button" onclick="submitForm()">Update</button>
                                                                                               </div>
                                                                                       <div id="message"></div>
                                                        </div>
                                                    </form>
                                                  <%
                                                                                                }
                                                                                                rs.close();
                                                                                                ps.close();
                                                                                            %>
                      </div>
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
          function submitForm() {
              var formData = new FormData(document.getElementById("projectForm"));
              for (let pair of formData.entries()) {
                          console.log(pair[0] + ": " + pair[1]);
                      }

              $.ajax({
                  url: 'updateProject',
                  type: 'POST',
                  data: formData,
                  processData: false,
                  contentType: false,
                  success: function(response) {
                      if (response.status === "success") {
                          $('#message').html('<div class="alert alert-success">' + response.message + '</div>');
                      } else {
                          $('#message').html('<div class="alert alert-danger">' + response.message + '</div>');
                      }
                  },
                  error: function() {
                      $('#message').html('<div class="alert alert-danger">There was an error processing your request.</div>');
                  }
              });
          }
      </script>
</body>

</html>