package model;

import db.Database;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;

@WebServlet("/backend/AddProjectServlet")
@MultipartConfig(
        fileSizeThreshold = 1024 * 1024 * 2, // 2MB
        maxFileSize = 1024 * 1024 * 10,      // 10MB
        maxRequestSize = 1024 * 1024 * 50   // 50MB
)
public class AddProjectServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("application/json");
        PrintWriter out = response.getWriter();

        String status = request.getParameter("status");
        System.out.println(status);
        String name = request.getParameter("name");
        System.out.println(name);
        String urlName = name.replace(" ", "-").toLowerCase()
                .replaceAll("[^A-Za-z0-9-]", "")
                .replaceAll("-+", "-");

        // Define the folder path where files will be uploaded
        String uploadPath = getServletContext().getRealPath("/") + "backend/imgadmin/";
        File uploadDir = new File(uploadPath);

        // Ensure the folder exists
        if (!uploadDir.exists()) {
            uploadDir.mkdirs();
        }

        try {
            // Handle file uploads
            String imageFileName = uploadFile(request.getPart("image"), uploadPath);
            String mapFileName = uploadFile(request.getPart("map"), uploadPath);
            String fplanFileName = uploadFile(request.getPart("fplan"), uploadPath);

            // Retrieve other form data
            String location = request.getParameter("location");
            String details = request.getParameter("details");

            // Database insertion logic
            try (Connection con = Database.getCon()) { // Using Database.getCon() for connection
                String insertQuery = "INSERT INTO addproject (url, status, name, image, map, fplan, location, details) VALUES (?, ?, ?, ?, ?, ?, ?, ?)";
                PreparedStatement pstmt = con.prepareStatement(insertQuery);
                pstmt.setString(1, urlName);
                pstmt.setString(2, status);
                pstmt.setString(3, name);
                pstmt.setString(4, imageFileName);
                pstmt.setString(5, mapFileName);
                pstmt.setString(6, fplanFileName);
                pstmt.setString(7, location);
                pstmt.setString(8, details);

                int result = pstmt.executeUpdate();

                if (result > 0) {
                    out.write("{\"status\":\"success\",\"message\":\"Project added successfully.\"}");
                } else {
                    out.write("{\"status\":\"error\",\"message\":\"Failed to add project to the database.\"}");
                }

                pstmt.close();
            }
        } catch (Exception e) {
            e.printStackTrace();
            out.write("{\"status\":\"error\",\"message\":\"" + e.getMessage() + "\"}");
        }
    }

    // Helper method to handle file uploads
    private String uploadFile(Part filePart, String uploadPath) throws IOException {
        String fileName = filePart.getSubmittedFileName();
        if (fileName != null && !fileName.isEmpty()) {
            String filePath = uploadPath + fileName;
            filePart.write(filePath); // Write the file to the specified location
            return fileName; // Return the uploaded file name
        }
        return null; // Return null if no file was uploaded
    }
}
