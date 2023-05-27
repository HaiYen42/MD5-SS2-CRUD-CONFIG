<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 26/05/2023
  Time: 5:33 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1 style="text-align: center; color: blue">******************STUDENT EDIT************</h1>
<form action="/update/${student.id}" method="post">
<table border="1" style="width: 100%">
    <tr>
        <th>STT</th>
        <th>Name</th>
        <th>Email</th>
        <th>Address</th>
    </tr>
        <tr>
            <td>
            <input type="text" value="${student.id}" hidden>
            </td>
            <td><input name="name" type="text" value="${student.name}"></td>
            <td><input name="email"  type="text" value="${student.email}"></td>
            <td><input name="address" type="text" value="${student.address}"></td>
        </tr>
</table>
    <button type="submit">Update</button>
</form>
</body>
</html>
