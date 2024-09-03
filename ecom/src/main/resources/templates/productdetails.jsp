<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Employee Details</title>
</head>
<body>
    <h1>Employee Details</h1>
    
    <%-- Import necessary Java packages --%>
    <%
        // Define your MySQL database connection details
        String jdbcUrl = "jdbc:mysql://localhost:3306/klu";
        String dbUsername = "root";
        String dbPassword = "MadhuKiran@21l6";
        
        try {
            // Load the MySQL JDBC driver
            Class.forName("com.mysql.jdbc.Driver");
            
            // Establish a database connection
            java.sql.Connection connection = java.sql.DriverManager.getConnection(jdbcUrl, dbUsername, dbPassword);
            
            // Create a SQL statement
            java.sql.Statement statement = connection.createStatement();
            
            // Execute an SQL query to retrieve data
            String sql = "SELECT * FROM products";
            java.sql.ResultSet resultSet = statement.executeQuery(sql);
    %>
    
    <table border="1">
        <tr>
            <th>Product Id</th>
            <th>Product Lowest Price</th>
            <th>Product Highest Price</th>
            <th>Product Current Price</th>
            <th>Product Price Low date</th>
            <th>Product Price High date</th>
            
        </tr>
        <%
            // Iterate through the database results and display them in the table
            while (resultSet.next()) {
        %>
        <tr>
            <td><%= resultSet.getInt("id") %></td>
            <td><%= resultSet.getString("pricelow") %></td>
            <td><%= resultSet.getString("priccehigh") %></td>
            <td><%= resultSet.getDouble("pricecurrent") %></td>
            <td><%= resultSet.getDouble("lowdate") %></td>
            <td><%= resultSet.getDouble("lowdate") %></td>
        </tr>
        <%
            }
            
            // Close the result set, statement, and database connection
            resultSet.close();
            statement.close();
            connection.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        %>
    </table>
</body>
</html>
