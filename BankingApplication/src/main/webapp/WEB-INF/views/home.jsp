<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>HCL BANKING APPLICATION</title>
<style>
input[type=text], select {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px dashed #e9967a;
  border-radius: 4px;
  box-sizing: border-box;
}

input[type=submit] {
  width: 100%;
  background-color: #e9967a;
  color: lavender;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  border-radius: 4px;
  cursor: pointer;
}

input[type=submit]:hover {
  background-color: black;
}

div {
  border-radius: 5px;
  background-color: #f2f2f2;
  padding: 20px;
  }
  .error{
  color:#EF1313;
  font-style:italic;
  }
}
</style>
</head>
<body>

<h3 style="color: black;"> <i>HCL ONLINE BANKING APPLICATION</i></h3>
<h2>Hi, ${sessionScope.user.roles[0]}</h2>  <br>

<c:if test="${sessionScope.user.roles[0] == 'Admin'}"> 
	<a href="showaccounts">showAllAccounts</a><br>
	<a href="transfer">Transfer Money</a><br>
	<a href="withdraw">Withdraw</a><br>
	<a href="deposit">deposit</a><br>
	<a href="addaccount"> Add New BankAccount </a> <br>
	<a href="showallusers">showAllUsers</a><br>
	<a href="addusers"> Add new User </a> <br>
	<a href="logout"> Logout </a>
</c:if> 

<c:if test="${sessionScope.user.roles[0] == 'Manager'}">
	
	<a href="transfer">Transfer Money</a><br>
	<a href="withdraw">Withdraw</a><br>
	<a href="deposit">deposit</a><br>
	<a href="logout"> Logout </a>
</c:if>

<c:if test="${sessionScope.user.roles[0] == 'Clerk'}">
	<a href="showaccounts">showAllAccounts</a><br>
	<a href="showalltransactions">allTransactions</a><br>
	<a href="logout"> Logout </a>
</c:if>
</body>
</html>