<%-- 
    Document   : identification
    Created on : 17 avr. 2020, 18:43:16
    Author     : mjp81
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Identification</title>
        <link rel="stylesheet" href="../css/identification.css">
        <meta name="viewport" content="width=device-width, initial-scale=1">
    </head>
    <body>
        
        <div class="contact-section">
        
        <h1>S'IDENTIFIER</h1>
        <div class="border">
            <form method="POST" class="ident-form"> <%-- L'action par défaut est de revenir à l'URL du contrôleur --%>
            Nom : <input name="contact" class="ident-form-text" placeholder="Votre Nom"></br>
            Code : <input name="code" type="password" class="ident-form-text" placeholder="Mot de Passe"></br>
            <input type="submit" value="Valider" class="ident-form-btn">
        </form>
      </div>
      </div>
    <a href="${pageContext.request.contextPath}/">Retour au menu</a>
</body>
</html>
