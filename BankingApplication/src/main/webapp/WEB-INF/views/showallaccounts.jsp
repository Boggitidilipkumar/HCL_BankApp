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
            <th>AccountId</th>
            <th>Name</th>
            <th>AadharNumber</th>
            <th>PanNumber</th>
            <th>AccountType</th>
            <th>phone</th>
            <th>email</th>
            <th>address</th>
            <th>update</th>
            <th>delete</th>
        </tr>
    </thead>
    <tbody>
        <c:forEach items="${accounts}" var="account">
            <tr>
                <td>${account.accountId}</td>
                <td>${account.name}</td>
                <td>${account.aadharNumber}</td>
                <td>${account.panNumber}</td>
                <td>${account.accountType}</td>
                <td>${account.phone}</td>
                <td>${account.email}</td>
                <td>${account.address}</td>
                <c:if test="${sessionScope.user.roles[0] == 'Admin'}">
                <td><a href="updateaccount?id=${account.accountId}">update Account</a></td>
                <td><a href="deleteaccount?id=${account.accountId}">delete Account</a></td>
                </c:if>
                
                <c:if test="${sessionScope.user.roles[0] == 'Clerk'}">
                 <td><a href="showtransactions?id=${account.accountId}">show transactions</a></td>
                 </c:if>
            </tr>
        </c:forEach>
    </tbody>
</table>
<a href="home">home</a>
</body>
</html>