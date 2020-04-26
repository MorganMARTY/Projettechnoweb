<%-- 
    Document   : historiqueCommandes
    Created on : 26 avr. 2020, 05:53:30
    Author     : marie
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Commandes pour le client</h1>
        <table border='1'>
            <tr><th>Numéro</th><th>Saisie le</th><th>nb. lignes</th></tr>
                    <%-- Pour chaque commande, une ligne dans la table HTML --%>
            <c:forEach var="commande" items="${historiqueCollection}">
                <tr>
                    <td>${commande.numero}</td>
                    <td>${commande.saisieLe}</td>
                    <td>${commande.ligneCollection.size()}</td>
                </tr>
            </c:forEach>
        </table>

    </body>
</html>
