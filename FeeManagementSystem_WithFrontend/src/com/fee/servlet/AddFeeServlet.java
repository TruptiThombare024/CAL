package com.fee.servlet;

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.sql.*;

public class AddFeeServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String studentName = request.getParameter("studentName");
        String feeType = request.getParameter("feeType");
        String amount = request.getParameter("amount");
        String date = request.getParameter("date");

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection(
                    "jdbc:mysql://localhost:3307/feemgmt", "root", "");

            PreparedStatement ps = con.prepareStatement(
                "INSERT INTO fees (student_name, fee_type, amount, payment_date) VALUES (?, ?, ?, ?)");
            ps.setString(1, studentName);
            ps.setString(2, feeType);
            ps.setDouble(3, Double.parseDouble(amount));
            ps.setString(4, date);
            ps.executeUpdate();

            response.sendRedirect("admin-dashboard.jsp");
        } catch (Exception e) {
            e.printStackTrace();
            response.getWriter().println("Error: " + e.getMessage());
        }
    }
}
