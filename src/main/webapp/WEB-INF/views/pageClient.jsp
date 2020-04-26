<%-- 
    Document   : pageClient
    Created on : 26 avr. 2020, 05:31:18
    Author     : marie
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Page Client</title>
    </head>
    <body>
        <h1>Bienvenue ${utilisateur.contact}</h1>
        <ul>
            <li><a href="historiqueCommandes">Historique des commandes</a></li>
            <li><a href="monCompte">Mon compte</a></li>
        </ul>
        <a href="${pageContext.request.contextPath}/">Retour au menu</a>
    </body>
</html>
