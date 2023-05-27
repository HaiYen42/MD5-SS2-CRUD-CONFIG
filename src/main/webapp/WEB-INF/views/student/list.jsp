<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 26/05/2023
  Time: 4:35 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1 style="text-align: center; color: blue">******************STUDENT MANAGER************</h1>
<a href="student/create">Create New Student</a>
<table border="1" style="width: 100%">
<tr>
    <th>STT</th>
    <th>Name</th>
    <th>Email</th>
    <th>Address</th>
    <th>Edit</th>
    <th>Delete</th>
</tr>
    <c:forEach items="${listStudent}" var="st">
    <tr>
        <td>${st.id}</td>
        <td><a href="/student/${st.id}">${st.name}</a></td>
        <td>${st.email}</td>
        <td>${st.address}</td>
        <td><a href="/student/update/${st.id}"><button>Edit</button></a></td>
        <td><a href="/student/delete/${st.id}"><button>Delete</button></a></td>

    </tr>
    </c:forEach>
</table>
</body>
</html>
