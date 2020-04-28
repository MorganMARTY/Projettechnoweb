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
        <h1>Ajouter un produit au panier:</h1>
        <form type="POST">
            Nom: <input name="nomP">
            Quantité: <input name="qteP">
            <input type="submit" value="Ajouter au panier">
        </form>
        <h1>Votre panier:</h1>
        <table border='1'>
            <tr><th>Référence</th><th>Nom</th><th>Prix Unitaire</th><th>Catégorie</th><th> </th></tr>
                    <%-- Pour chaque produit, une ligne dans la table HTML --%>
                    <c:forEach var="ligne" items="${lignesCaddie}">
                <tr>
                    <td>${ligne.produit1.reference}</td>
                    <td>${mvc.encoders.html(ligne.produit1.nom)}</td>
                    <td>${ligne.produit1.prixUnitaire}</td>
                    <td>${mvc.encoders.html(ligne.produit1.categorie.libelle)}</td>
                </tr>
            </c:forEach>
        </table>
    </body>
</html>
