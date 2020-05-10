<%-- 
    Document   : historiqueCommandes
    Created on : 26 avr. 2020, 05:53:30
    Author     : marie
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>


<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
         <link rel="stylesheet" type="text/css" href="/HistComm.css">
        <meta name="viewport" content="width=device-width, initial-scale=1">
    </head>
    <body>

        <div id="entete" >
<a href="${pageContext.request.contextPath}/"><img id="imghome" class="left" src="houseIcon.png" alt="Bouton retour à l'accueil" /></a>
</div>
<br>
<br>
        <h1>Commandes du client '${utilisateur.societe}'</h1>
        <table border='1' id="customers">
            <tr><th>Numéro</th><th>Saisie le</th><th>nb. lignes</th></tr>
            <c:if test="${empty utilisateur.commandeCollection}">
                <tr><td colspan="3">aucun produit dans cette catégorie</td></tr>	
            </c:if>
            <%-- Pour chaque commande, une ligne dans la table HTML --%>
            <c:forEach var="commande" items="${utilisateur.commandeCollection}">
                <tr>
                    <td>${commande.numero}</td>
                    <td>${commande.saisieLe}</td>
                    <td>${commande.ligneCollection.size()}</td>
                </tr>
            </c:forEach>
        </table>

    </body>
</html>
