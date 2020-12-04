<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
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
  background-color: ;
  padding: 20px;
  }
  .error{
  color:#EF1313;
  font-style:italic;
  }
  .align{
  align="center";
  }
  .image{
   background-image:url('https://sea.webfirm.com/images/img-login.png');
  background-repeat: no-repeat;
  background-attachment: fixed; 
  background-size: 100% 100%;
  }
}
</style>
</head>
<body class="image">
<h1>Login</h1>
<div class=align>
<form:form action="login" method="post" modelAttribute="userBean" align="center">
		<table align="left">
			<tr>
				<td>Enter User Name:</td>
				<td><form:input path="username"/><form:errors path="username" class="error"/></td>
			</tr>
			
			<tr>
				<td>Enter password:</td>
				<td><form:input path="password"/><form:errors path="password" class="error"/></td>
			</tr>
			
			
			<tr>
				<td><input type="submit" value="login"> </td>				
			</tr>
		</table>
	</form:form>
	</div>



</body>
</html>