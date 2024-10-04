<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Liste des employés</title>
    <link href="${pageContext.request.contextPath}/styles/tableStyle.css" rel="stylesheet" type="text/css">
    <link href="${pageContext.request.contextPath}/styles/navStyle.css" rel="stylesheet" type="text/css">
    <link href="${pageContext.request.contextPath}/styles/searchbar.css" rel="stylesheet" type="text/css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@24,400,0,0" />
</head>
<body>
<%@ include file="navbar.jsp" %>
<a href="views/addEmployee.jsp">Ajouter un employé</a>

<h2>Employees list</h2>
<div class="table-wrapper">
    <table class="fl-table">
        <thead>
        <tr>
            <th>Name</th>
            <th>Email</th>
            <th>Phone</th>
            <th>Department</th>
            <th>Poste</th>
            <th>Actions</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="employee" items="${employees}">
        <tr>
            <td>${employee.name}</td>
            <td>${employee.email}</td>
            <td>${employee.phone}</td>
            <td>${employee.department}</td>
            <td>${employee.poste}</td>
            <td>
                <a href="editEmployee?action=editEmployee&id=${employee.id}"><button class="acceptButton">Modifier</button></a>
                <a href="deleteEmployee?action=deleteEmployee&id=${employee.id}"><button class="declineButton">Supprimer</button></a>
            </td>
        </tr>
        </c:forEach>
        <tbody>
    </table>
</div>

</body>
</html>
