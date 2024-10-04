<%--
  Created by IntelliJ IDEA.
  User: youco
  Date: 10/2/2024
  Time: 10:06 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Modifier un employé</title>
</head>
<body>
<h1>Modifier un employé</h1>
<form action="editEmployee" method="post">
    <input type="hidden" name="id" value="${employee.id}">
    <label>Nom: <input type="text" name="name" value="${employee.name}"></label><br>
    <label>Email: <input type="email" name="email" value="${employee.email}"></label><br>
    <label>Téléphone: <input type="text" name="phone" value="${employee.phone}"></label><br>
    <label>Département: <input type="text" name="department" value="${employee.department}"></label><br>
    <label>Poste: <input type="text" name="position" value="${employee.poste}"></label><br>
    <button type="submit">Modifier</button>
</form>
</body>
</html>
