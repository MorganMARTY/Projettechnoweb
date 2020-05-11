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
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/Caddie.css">
        <meta name="viewport" content="width=device-width, initial-scale=1">
    </head>
    <body>

        <div id="entete" >
            <a href="${pageContext.request.contextPath}/"><img id="imghome" class="left" src="../Image/houseIcon.png" alt="Bouton retour à l'accueil" /></a>
        </div>
        <br>
        <br>
        <h2>Ajouter un produit au panier:</h2>

        <form type="POST">
            <label>Produit :</label><select name='codeProduit'>
                <%-- On parcourt la liste des catégories en mettant une option pour chaque catégorie --%>
                <c:forEach var="produit" items="${produits}">
                    <option value='${produit.reference}'>${produit.nom}</option>
                </c:forEach>
            </select><br><br>
            <label>Quantité :</label> <input name="qteP" type="number" min="0.00" max="10000.00" step="1.00" /><br><br>
            <input class="Caddie-btn" type="submit" value="Ajouter au panier">
        </form>

        <br><br><br><br><h1>Votre Panier</h1><br><br>

        <table border='1' id="customers">
            <tr><th>Référence</th><th>Nom</th><th>Prix Unitaire</th><th>Catégorie</th><th> </th></tr>
                    <%-- Pour chaque produit, une ligne dans la table HTML --%>
                    <c:if test="${!empty lignesCaddie}">
                        <c:forEach var="ligne" items="${lignesCaddie}">
                    <tr>
                        <td>${ligne.produit1.reference}</td>
                        <td>${mvc.encoders.html(ligne.produit1.nom)}</td>
                        <td>${ligne.produit1.prixUnitaire}</td>
                        <td>${mvc.encoders.html(ligne.produit1.categorie.libelle)}</td>
                    </tr>
                </c:forEach>
            </c:if>
        </table>
        <!--        <form type="POST">
                    <input type="submit" value="Valider le panier">
                    <a></a>
                </form>-->

    </body>
</html>
