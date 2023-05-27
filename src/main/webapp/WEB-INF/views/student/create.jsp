<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 27/05/2023
  Time: 12:44 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>Form Create</h1>
<form action="/create" method="post">
<table border="1" >
  <tr>
    <th>Name</th>
    <td><input name="name"></td>
  </tr>
  <tr>
    <th>Email</th>
    <td><input name="email"></td>
  </tr>
  <tr>
    <th>Address</th>
    <td><input name="address"></td>
  </tr>
</table>
  <button type="submit">Submit</button>
</form>
</body>
</html>
