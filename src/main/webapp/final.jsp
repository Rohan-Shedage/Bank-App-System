<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>

<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Transaction Success</title>
  <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
  <link href="styles02.css" rel="stylesheet">
</head>
<body>
  <div class="container mt-5">
    <div class="card text-center">
      <div class="card-header">
        <h2>Transaction Successful</h2>
      </div>
      
      <%
      
      String accountnumber = request.getParameter("accountnumber");
      String withdraw = request.getParameter("withdraw");
      String deposit = request.getParameter("deposit");
      String balanceCheck = request.getParameter("balanceCheck");
     	Connection connection;
     	PreparedStatement preparedStatement;
     	ResultSet resultSet;
     	
     	try{
     	Class.forName("com.mysql.cj.jdbc.Driver");
        connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/banking_system?user=root&password=Rohan@16");
        String query = "update accounts set balance = ? where accountnumber = ?";
        preparedStatement = connection.prepareStatement(query);
        preparedStatement.setString(1,balanceCheck);
        preparedStatement.setString(2,accountnumber);
        int result = preparedStatement.executeUpdate();
        
        String query1 = "SELECT * FROM accounts WHERE balance = ?";
        preparedStatement = connection.prepareStatement(query1);
        preparedStatement.setString(1,balanceCheck);
        preparedStatement.executeQuery();
        
     	} catch(Exception e){
     		  e.printStackTrace();
     		
     	} 
     	
     	
     	
    
    
      %>
      <div class="card-body">
        <h5 class="card-title">Thank you for your transaction!</h5>
        <p class="card-text">Your transaction was completed successfully.</p>
        <a href="Home.jsp" class="btn btn-primary">Go to Dashboard</a>
      </div>
    </div>
    <div class="card mt-4">
      <div class="card-body text-center">
        <h5 class="card-title">Your Current Balance</h5>
        <p class="card-text" id="balance"><%= balanceCheck %></p>
       
      </div>
    </div>
  </div>

  <script src="script.js"></script>
</body>
</html>
    