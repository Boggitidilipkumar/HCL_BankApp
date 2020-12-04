<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Hcl bookstore app</title>
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
<table>
    <thead>
        <tr>
            <th>UserId</th>
            <th>UserName</th>
            <th>role</th> 
            <th>address</th>
            <th>phone</th>
            <th>email</th>
            <th>update</th>
            <th>delete</th>
        </tr>
    </thead>
    <tbody>
        <c:forEach items="${users}" var="user">
            <tr>
                <td>${user.uId}</td>
                <td>${user.username}</td>
                <td>${user.roles}</td>
                <td>${user.address}</td>
                <td>${user.phone}</td>
                <td>${user.email}</td>
                <td><a href="updateuser?id=${user.uId}">update User</a></td>
                <td><a href="deleteuser?id=${user.uId}">delete User</a></td>
            </tr>
        </c:forEach>
    </tbody>
</table>
<a href="home">home</a>
</body>
</html>