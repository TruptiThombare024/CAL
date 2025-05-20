<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<html>
<head>
  <title>Add Fee</title>
  <link rel="stylesheet" href="style.css">
</head>
<body>
  <h1>Add Fee Record</h1>
  <form method="post" action="AddFeeServlet">
    <label>Student Name:</label><input type="text" name="studentName" required><br>
    <label>Fee Type:</label><input type="text" name="feeType" required><br>
    <label>Amount:</label><input type="number" name="amount" required><br>
    <label>Payment Date:</label><input type="date" name="date" required><br>
    <input type="submit" value="Submit Fee">
  </form>
</body>
</html>
