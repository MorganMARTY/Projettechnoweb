<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!-- Import des "tag libraries" de JSP -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

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
        <form type="POST">
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
                        <td><input type="checkbox" name="${mvc.encoders.html(produit.reference)}"></td>
                    </tr>
                </c:forEach>
            </table>

            <input type="submit" value="Ajouter au panier">
        </form>
        <a href="${pageContext.request.contextPath}/">Retour au menu</a>
    </body>
</html>
