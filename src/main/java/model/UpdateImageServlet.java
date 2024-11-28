package model;

import db.Database;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;
import lombok.SneakyThrows;

import java.io.*;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

@WebServlet("/backend/UpdateImageServlet")
@MultipartConfig
public class UpdateImageServlet extends HttpServlet {

    @SneakyThrows
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("application/json");  // Set response type to JSON
        PrintWriter out = response.getWriter();

        // Retrieve the ID parameter from the request
        String id = request.getParameter("id");

        if (id == null || id.isEmpty()) {
            out.print("{\"status\":\"error\", \"message\":\"Invalid ID\"}");
            return;
        }

        // Fetch the current image filename from the database
        String existingImage = "";
        String fetchQuery = "SELECT photo FROM gallery WHERE id = ?";
        try (Connection con = Database.getCon()) {
            try (PreparedStatement ps = con.prepareStatement(fetchQuery)) {
                ps.setInt(1, Integer.parseInt(id));  // Set the ID parameter
                ResultSet rs = ps.executeQuery();
                if (rs.next()) {
                    existingImage = rs.getString("photo");  // Get the existing image
                }
            }
        } catch (SQLException e) {
            out.print("{\"status\":\"error\", \"message\":\"Database error: " + e.getMessage() + "\"}");
            return;
        }

        // Initialize file handling variables
        String filename = existingImage;  // Default to existing image if no new file is uploaded

        // Check if a new file is uploaded
        Part filePart = request.getPart("photo");  // Get the uploaded file part
        if (filePart != null && filePart.getSize() > 0) {
            String fileName = filePart.getSubmittedFileName();
            String filePath = getServletContext().getRealPath("/backend/imgadmin/") + fileName;

            // Save the new file to the server
            filePart.write(filePath);
            filename = fileName;  // Update filename with the new file
        }

        // Database update query
        String updateQuery = "UPDATE gallery SET photo = ? WHERE id = ?";
        try (Connection con = Database.getCon()) {
            try (PreparedStatement ps = con.prepareStatement(updateQuery)) {
                ps.setString(1, filename);  // Set the filename (either new or existing) in the database
                ps.setInt(2, Integer.parseInt(id));  // Set the ID to update

                int result = ps.executeUpdate();
                if (result > 0) {
                    out.print("{\"status\":\"success\", \"message\":\"Image updated successfully!\"}");
                } else {
                    out.print("{\"status\":\"error\", \"message\":\"Failed to update image.\"}");
                }
            }
        } catch (SQLException e) {
            out.print("{\"status\":\"error\", \"message\":\"Database error: " + e.getMessage() + "\"}");
        } catch (Exception e) {
            out.print("{\"status\":\"error\", \"message\":\"Error: " + e.getMessage() + "\"}");
        }
    }
}
