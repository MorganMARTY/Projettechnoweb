<%-- 
    Document   : editionCompte
    Created on : 27 avr. 2020, 17:00:17
    Author     : marie
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Modifier vos données:</title>
    </head>
    <body>
        <ul>
            <form method="POST">
                <li>Mon nom: ${utilisateur.contact} </br> Nouveau nom: <input name="nvNom"></li></br>
                <li>Ma société: ${utilisateur.societe} </br> Nouvelle société: <input name="nvSociete"></li></br>
                <li>Ma fonction: ${utilisateur.fonction} </br> Nouvelle fonction: <input name="nvFonction"></li></br>
                <li>Mon adresse: 
                    <ul>
                        ${utilisateur.adresse} </br> Nouvelle adresse: <input name="nvAdresse">
                    </ul>
                    <ul>
                        ${utilisateur.ville} </br> Nouvelle ville: <input name="nvVille">
                    </ul>
                    <ul>
                        ${utilisateur.region} </br> Nouvelle région: <input name="nvRegion">
                    </ul>
                    <ul>
                        ${utilisateur.codePostal} </br> Nouveau code postal: <input name="nvCodeP">
                    </ul>
                    <ul>
                        ${utilisateur.pays} </br> Nouveau pays: <input name="nvPays">
                    </ul>
                </li></br>
                <li>Mon téléphone: ${utilisateur.telephone} </br> Nouveau numéro: <input name="nvTel"></li></br>
                <li>Mon fax: ${utilisateur.fax} </br> Nouveau fax: <input name="nvFax"></li></br>
                <input type="submit" value="Valider">
            </form>
        </ul>
        <a href="${pageContext.request.contextPath}/">Retour au menu</a>
    </body>
</html>
