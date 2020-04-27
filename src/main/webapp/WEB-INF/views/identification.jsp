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
    </head>
    <body>
        <h1>S'IDENTIFIER</h1>
        <form method="POST"> <%-- L'action par défaut est de revenir à l'URL du contrôleur --%>
            Nom : <input name="contact"></br>
            Code : <input name="code" type="password"></br>
            <input type="submit" value="Valider">
        </form>
      
    <a href="${pageContext.request.contextPath}/">Retour au menu</a>
</body>
</html>
