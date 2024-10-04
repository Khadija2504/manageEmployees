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
    <title>Ajouter un employé</title>
</head>
<body>
<%@ include file="navbar.jsp" %>
<h1>Ajouter un nouvel employé</h1>
<form action="addEmployee?action=updateEmployee" method="post">
    <label>Nom: <input type="text" name="name"></label><br>
    <label>Email: <input type="email" name="email"></label><br>
    <label>Téléphone: <input type="text" name="phone"></label><br>
    <label>Département: <input type="text" name="department"></label><br>
    <label>Poste: <input type="text" name="position"></label><br>
    <button type="submit">Ajouter</button>
</form>

<div class="container">
    <div class="screen">
        <div class="screen__content">
            <form class="login">
                <div class="login__field">
                    <i class="login__icon fas fa-user"></i>
                    <input type="text" class="login__input" placeholder="User name / Email">
                </div>
                <div class="login__field">
                    <i class="login__icon fas fa-lock"></i>
                    <input type="password" class="login__input" placeholder="Password">
                </div>
                <button class="button login__submit">
                    <span class="button__text">Log In Now</span>
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
