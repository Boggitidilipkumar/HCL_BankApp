<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Add new User</title>
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
<form:form action="addusers" method="post" modelAttribute="addUserBean">
	<form:hidden path="uId" value="0"/>
	<table>
		<tr>
			<td>Enter UserName</td>
			<td><form:input path="username"/><form:errors path="username" class="error"/></td>
		</tr>
		<tr>
			<td>Enter password</td>
			<td><form:input path="password"/><form:errors path="password" class="error"></form:errors></td>
		</tr>
		<tr>
			<td>Enter Role</td>
			<td><form:input path="roles"/><form:errors path="roles" class="error"></form:errors> </td>
		</tr>
		<tr>
			<td>Enter phone</td>
			<td><form:input path="phone"/><form:errors path="phone" class="error"></form:errors></td>
		</tr>
		<tr>
			<td>Enter address</td>
			<td><form:input path="address"/><form:errors path="address" class="error"></form:errors></td>
		</tr>
		<tr>
			<td>Enter email</td>
			<td><form:input path="email"/><form:errors path="email" class="error"></form:errors></td>
		</tr>
		<tr>
			<td><input type="submit" value="add user"></td>
		</tr>
	</table>
</form:form>
</body>
</html>