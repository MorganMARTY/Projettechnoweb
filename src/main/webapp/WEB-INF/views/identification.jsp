<%-- 
    Document   : identification
    Created on : 17 avr. 2020, 18:43:16
    Author     : mjp81
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Identification</title>
    </head>
    <body>
        <h1>S'IDENTIFIER</h1>
        <form method="POST"> <%-- L'action par défaut est de revenir à l'URL du contrôleur --%>

            <input type="search" name="contact" placeholder="Nom d'utilisateur">
            <br>
            <br>
            <input type="search" name="code" placeholder="Mot de passe">
            <br>
            <br>
            <input type="submit" value="Valider">
        </form>
      
    <a href="${pageContext.request.contextPath}/">Retour au menu</a>
</body>
</html>
