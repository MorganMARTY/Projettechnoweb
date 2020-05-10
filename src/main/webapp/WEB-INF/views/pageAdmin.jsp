<%-- 
    Document   : pageAdmin
    Created on : 26 avr. 2020, 15:12:01
    Author     : marie
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Administrateur</title>
         <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/PageAdmin.css">
        <meta name="viewport" content="width=device-width, initial-scale=1">
    </head>
    <body>
        <h1>Bienvenue dans la partie Administrateur</h1>
        <br><br>

        <h2>Chiffres d'affaires : </h2>

        <br>

    <li><a href="http://localhost:8080/Projettechnoweb/statsCategories.html">Chiffre d'affaires par catégorie</a></li>
    <li><a href="http://localhost:8080/Projettechnoweb/statsPays.html">Chiffre d'affaires par pays</a></li>
    <li><a href="http://localhost:8080/Projettechnoweb/statsClients.html">Chiffre d'affaire par client</a></li>  

</body>
</html>
