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
        <h2>Liste des produits</h2>
        <table border='1'>
            <tr><th>Référence</th><th>Nom</th><th>Prix Unitaire</th><th>Catégorie</th><th> </th></tr>
                    <%-- Pour chaque produit, une ligne dans la table HTML --%>
            <c:forEach var="produit" items="${produits}">
                <tr>
                    <td>${produit.reference}</td>
                    <%-- Le nom peut contenir des caractères spéciaux HTML ! --%>
                    <td>${mvc.encoders.html(produit.nom)}</td>
                    <%-- Exemple d'utilisation des fonctions de formatage de données de la JSTL --%>
                    <td><fmt:formatNumber value="${produit.prixUnitaire}" type="currency"/></td>
                <td>${mvc.encoders.html(produit.categorie.libelle)}</td>
                <td><input type="checkbox"></td>
                </tr>
            </c:forEach>
        </table>
        <form type="POST">
            <input type="submit" value="Ajouter au panier">
        </form>
        <a href="${pageContext.request.contextPath}/">Retour au menu</a>
    </body>
</html>
