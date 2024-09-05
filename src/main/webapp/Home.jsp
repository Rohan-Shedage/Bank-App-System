<%@page import="com.mysql.cj.xdevapi.Result"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.mysql.cj.xdevapi.PreparableStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Transaction Input Page</title>
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background-color: #ee9696;
        }
        .transaction-form {
            max-width: 500px;
            margin: 50px auto;
            padding: 30px;
            background-color: rgb(252, 255, 254);
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
            border-radius: 10px;
        }
        .form-header {
            margin-bottom: 20px;
        }
    </style>
</head>
<body>

<div class="container">
    <div class="transaction-form">
        <h2 class="text-center form-header">Transaction Input Page</h2>
        <form  action="final.jsp">
            <div class="form-group">
                <label for="accountNumber">Account Number</label>
                <input type="text" class="form-control" id="accountNumber" name="accountnumber" placeholder="Enter account number" required>
            </div>
            <div class="form-group">
                <label>Transaction Type</label>
                <div class="form-check">
                    <input class="form-check-input" type="radio" name="transactionType" id="withdraw" name="withdraw" value="withdraw" required>
                    <label class="form-check-label" for="withdraw">Withdraw</label>
                </div>
                <div class="form-check">
                    <input class="form-check-input" type="radio" name="transactionType" id="deposit" name="deposit" value="deposit" required>
                    <label class="form-check-label" for="deposit">Deposit</label>
                </div>
                <div class="form-check">
                    <input class="form-check-input" type="radio" name="transactionType" id="balanceCheck" name="balanceCheck"  value="balanceCheck" required>
                    <label class="form-check-label" for="balanceCheck">Balance Check</label>
                </div>
            </div>
            <div class="form-group">
                <label for="amount">Amount</label>
                <input type="number" class="form-control" id="amount" name="amount" placeholder="Enter amount" required>
            </div>
            <button type="submit" class="btn btn-primary btn-block">Submit</button>
        </form>
        
      
    </div>
</div>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
    