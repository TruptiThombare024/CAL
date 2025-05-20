<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ page import="java.sql.*" %>
<%
    ResultSet rs = (ResultSet) request.getAttribute("resultSet");
%>
<html>
<head>
  <title>Fee Records</title>
  <link rel="stylesheet" href="style.css">
</head>
<body>
  <h1>All Fee Records</h1>
  <table border="1">
    <tr>
      <th>Student Name</th>
      <th>Fee Type</th>
      <th>Amount</th>
      <th>Payment Date</th>
    </tr>
    <%
        while (rs != null && rs.next()) {
    %>
    <tr>
      <td><%= rs.getString("student_name") %></td>
      <td><%= rs.getString("fee_type") %></td>
      <td><%= rs.getDouble("amount") %></td>
      <td><%= rs.getString("payment_date") %></td>
    </tr>
    <% } %>
  </table>
</body>
</html>
