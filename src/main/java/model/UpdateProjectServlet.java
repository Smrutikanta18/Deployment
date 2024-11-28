package model;

import db.Database;
import jakarta.servlet.*;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;
import lombok.SneakyThrows;

import java.io.*;
import java.sql.*;

@WebServlet("/backend/updateProject")
@MultipartConfig
public class UpdateProjectServlet extends HttpServlet {

    @SneakyThrows
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("application/json");
        PrintWriter out = response.getWriter();

        // Get form parameters
        String id = request.getParameter("id");
        String status = request.getParameter("status");
        String name = request.getParameter("name");
        String location = request.getParameter("location");
        String details = request.getParameter("details");

        // Handle file uploads (image, map, floor plan)
        String imageFile = uploadFile(request, "image");
        String mapFile = uploadFile(request, "map");
        String floorPlanFile = uploadFile(request, "fplan");

        // If no new image is uploaded, use the existing image
        if (imageFile == null || imageFile.isEmpty()) {
            imageFile = request.getParameter("existingImage");  // Get the existing image filename from the hidden field
        }
        if (mapFile == null || mapFile.isEmpty()) {
            mapFile = request.getParameter("existingMap");  // Get the existing image filename from the hidden field
        }
        if (floorPlanFile == null || floorPlanFile.isEmpty()) {
            floorPlanFile = request.getParameter("existingFplan");  // Get the existing image filename from the hidden field
        }


        // Database update
        try (Connection con = Database.getCon()) {  // Use Database class to get connection
            String query = "UPDATE addproject SET status=?, name=?, image=?, map=?, fplan=?, location=?, details=? WHERE id=?";
            try (PreparedStatement ps = con.prepareStatement(query)) {
                ps.setString(1, status);
                ps.setString(2, name);
                ps.setString(3, imageFile);  // File path stored for image (may be the existing one)
                ps.setString(4, mapFile);    // File path stored for map
                ps.setString(5, floorPlanFile);  // File path stored for floor plan
                ps.setString(6, location);
                ps.setString(7, details);
                ps.setString(8, id);  // Set project ID to identify the record to update

                int result = ps.executeUpdate();

                if (result > 0) {
                    out.println("{\"message\": \"Data updated successfully\", \"status\": \"success\"}");
                } else {
                    out.println("{\"message\": \"Failed to update data\", \"status\": \"error\"}");
                }
            }
        } catch (SQLException e) {
            out.println("{\"message\": \"Database error: " + e.getMessage() + "\", \"status\": \"error\"}");
        }
    }

    // Utility method to handle file uploads
    private String uploadFile(HttpServletRequest request, String fieldName) throws IOException, ServletException {
        Part filePart = request.getPart(fieldName);
        String fileName = "";

        if (filePart != null && filePart.getSize() > 0) {  // Check if file is uploaded
            fileName = filePart.getSubmittedFileName();  // Get the original file name
            if (fileName != null && !fileName.isEmpty()) {
                String filePath = getServletContext().getRealPath("/backend/imgadmin/") + fileName;  // Define the file path
                File file = new File(filePath);

                // Ensure the directory exists
                if (!file.getParentFile().exists()) {
                    file.getParentFile().mkdirs();  // Create directories if not exist
                }

                // Save the uploaded file to the server
                filePart.write(filePath);  // Write the file to the server directory
            }
        }
        return fileName.isEmpty() ? null : fileName;  // Return null if no file uploaded
    }
}
