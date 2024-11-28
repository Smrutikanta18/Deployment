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
import java.sql.SQLException;

@WebServlet("/backend/GalleryServlet")
@MultipartConfig
public class GalleryServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("application/json");
        PrintWriter out = response.getWriter();

        Part filePart = request.getPart("image"); // Get the uploaded file part
        String uploadPath = getServletContext().getRealPath("/") + "backend/imgadmin/"; // Folder path to store the image

        // Ensure the folder exists
        File uploadDir = new File(uploadPath);
        if (!uploadDir.exists()) {
            uploadDir.mkdirs();
        }

        try {
            if (filePart != null) {
                String fileName = filePart.getSubmittedFileName();
                String filePath = uploadPath + fileName;

                // Save the file to the server
                filePart.write(filePath);

                // Save the relative path to the database
                String relativePath =  fileName;

                // Database connection and query
                Connection con = Database.getCon(); // Replace with your Database connection method
                String insertQuery = "INSERT INTO gallery (photo) VALUES (?)";
                PreparedStatement pstmt = con.prepareStatement(insertQuery);
                pstmt.setString(1, relativePath);

                int result = pstmt.executeUpdate();

                if (result > 0) {
                    out.write("{\"status\":\"success\",\"message\":\"File uploaded successfully.\"}");
                } else {
                    out.write("{\"status\":\"error\",\"message\":\"Failed to save file info to the database.\"}");
                }

                pstmt.close();
                con.close();
            }
        } catch (IOException | SQLException e) {
            e.printStackTrace();
            out.write("{\"status\":\"error\",\"message\":\"" + e.getMessage() + "\"}");
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }
}
