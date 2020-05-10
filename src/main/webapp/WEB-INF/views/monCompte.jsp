<%-- 
    Document   : monCompte
    Created on : 26 avr. 2020, 13:14:48
    Author     : marie
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Mon Compte</title>
        <link rel="stylesheet" type="text/css" href="/compte.css">
        <meta name="viewport" content="width=device-width, initial-scale=1">
    </head>
    <body>
        <body>

<div id="entete" >
    <a href="${pageContext.request.contextPath}/"><img id="imghome" class="left" src="../Image/houseIcon.png" alt="Bouton retour à l'accueil" /></a>
</div>

<br><br><br><br>

    <h1> Mon compte </h1>
<br><br>
        <ul class="un">
            <li>Ma société: ${utilisateur.societe}</li></br>
            <li>Ma fonction: ${utilisateur.fonction}</li></br>
            <li>Mon adresse: 
                <ul class="deux">
                    <li>Adresse: ${utilisateur.adresse}</li>
                </ul >
                <ul class="deux">
                    <li>Ville: ${utilisateur.ville}</li>
                </ul>
                <ul class="deux">
                    <li>Région: ${utilisateur.region}</li>
                </ul>
                <ul class="deux">
                   <li>Code Postal: ${utilisateur.codePostal}</li>
                </ul>
                <ul class="deux">
                   <li>Pays: ${utilisateur.pays}</li>
                </ul>
            </li></br>
            <li>Mon téléphone: ${utilisateur.telephone}</li></br>
            <li>Mon fax: ${utilisateur.fax}</li></br>
        </ul>
        <a href="editionCompte" class="modif">Modifier mes informations</a>
    </body>
</html>
