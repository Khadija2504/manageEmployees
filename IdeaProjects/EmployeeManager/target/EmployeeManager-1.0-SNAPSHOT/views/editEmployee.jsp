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
    <link href="${pageContext.request.contextPath}/styles/formsStyle.css" rel="stylesheet" type="text/css">
    <link href="${pageContext.request.contextPath}/styles/navStyle.css" rel="stylesheet" type="text/css">
    <link href="${pageContext.request.contextPath}/styles/searchbar.css" rel="stylesheet" type="text/css">
</head>
<body>
<%@ include file="navbar.jsp" %>
<h2>Modifier un employé</h2>
<div class="container">
    <div class="screen">
        <div class="screen__content">
            <form class="login" action="editEmployee?action=updateEmployee" method="post">
                <input type="hidden" name="id" value="${employee.id}">
                <div class="login__field">
                    <i class="login__icon fas fa-user"></i>
                    <input type="text" name="name" class="login__input" value="${employee.name}" placeholder="Name">
                </div>
                <div class="login__field">
                    <i class="login__icon fas fa-lock"></i>
                    <input type="email" name="email" class="login__input" value="${employee.email}" placeholder="Email">
                </div>
                <div class="login__field">
                    <i class="login__icon fas fa-user"></i>
                    <input type="text" name="phone" class="login__input" value="${employee.phone}" placeholder="phone">
                </div>
                <div class="login__field">
                    <i class="login__icon fas fa-user"></i>
                    <input type="text" class="login__input" name="department" value="${employee.department}" placeholder="Department">
                </div>
                <div class="login__field">
                    <i class="login__icon fas fa-user"></i>
                    <input type="text" class="login__input" name="poste" value="${employee.poste}" placeholder="Poste">
                </div>
                <button type="submit" class="button login__submit">
                    <span class="button__text">Modify</span>
                    <i class="button__icon fas fa-chevron-right"></i>
                </button>
            </form>
        </div>
        <div class="screen__background">
            <span class="screen__background__shape screen__background__shape4"></span>
            <span class="screen__background__shape screen__background__shape3"></span>
            <span class="screen__background__shape screen__background__shape2"></span>
            <span class="screen__background__shape screen__background__shape1"></span>
        </div>
    </div>
</div>
</body>
</html>
