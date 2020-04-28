<%-- 
    Document   : caddie
    Created on : 27 avr. 2020, 18:04:06
    Author     : marie
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Caddie</title>
    </head>
    <body>
        <h1>Votre caddie:</h1>
        <table border='1'>
            <tr><th>Référence</th></tr>
                    <%-- Pour chaque produit, une ligne dans la table HTML --%>
                    <c:forEach var="ligne" items="${lignesCaddie}">
                <tr>
                    <td>${ligne.produit1.reference}</td>

                </tr>
            </c:forEach>
        </table>
    </body>
</html>
