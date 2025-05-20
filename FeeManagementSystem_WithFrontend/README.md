# Fee Management System

A Java Servlet and JSP-based web application to manage student fee records.

## Features
- Add student fee data
- View all fee payment records
- Backend: Java Servlet + MySQL
- Frontend: JSP, HTML, CSS

## Setup
1. Create `feemgmt` database in MySQL.
2. Create a `fees` table:
```sql
CREATE TABLE fees (
  id INT PRIMARY KEY AUTO_INCREMENT,
  student_name VARCHAR(100),
  fee_type VARCHAR(100),
  amount DOUBLE,
  payment_date DATE
);
```
3. Import the project into Eclipse.
4. Add MySQL Connector JAR to `lib/`.
5. Deploy using Apache Tomcat.
