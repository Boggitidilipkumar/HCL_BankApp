<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>HCL Internal Bank Application</title>
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
  .image{
  background-image: url('https://images.indianexpress.com/2019/11/deposit-759.jpg');
  background-repeat: no-repeat;
  background-attachment: fixed; 
  background-size: 100% 100%;
  
  }
}
</style>
</head>
<body class="image">
<h1 align="center">Deposit in hcl bank app</h1>
<form:form action="deposit" method="post" modelAttribute="depositbean">
	<table align="center">
		<tr>
			<td>Enter Account:</td>
			<td><form:input path="accountId"/><form:errors path="accountId" class="error"></form:errors></td>
		</tr>
		
		<tr>
			<td>Enter Amount:</td>
			<td><form:input path="amount"/><form:errors path="amount" class="error"></form:errors></td>
		</tr>
		<tr>
			<td><input type="submit" value="deposit amount"></td>
		</tr>
	</table>
</form:form>
</body>
</html>