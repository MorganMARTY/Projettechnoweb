<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!-- Import des "tag libraries" de JSP -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Page Client</title>
        <link rel="stylesheet" href="../css/pageclient.css">
        <meta name="viewport" content="width=device-width, initial-scale=1">
    </head>
    <body>
      
        <div id="entete" >
<a href="${pageContext.request.contextPath}/"><img id="imghome" class="left" src="../Image/houseIcon.png" alt="Bouton retour à l'accueil" /></a>
</div>

        <h1>Bienvenue ${utilisateur.contact}</h1>


      
       <br><br><br><br>

        <h2>Liste des produits</h2>

        <br><br>
        
        
        <table border='1' id="customers">
            <tr><th>Référence</th><th>Nom</th><th>Prix Unitaire</th><th>Catégorie</th><th>Unités en stock</th></tr>
                    <%-- Pour chaque produit, une ligne dans la table HTML --%>
                    <c:forEach var="produit" items="${produits}">
                <tr>
                    <td>${produit.reference}</td>
                    <%-- Le nom peut contenir des caractères spéciaux HTML ! --%>
                    <td>${mvc.encoders.html(produit.nom)}</td>
                    <%-- Exemple d'utilisation des fonctions de formatage de données de la JSTL --%>
                    <td><fmt:formatNumber value="${produit.prixUnitaire}" type="currency"/></td>
                    <td>${mvc.encoders.html(produit.categorie.libelle)}</td>
                    <td><${produit.unitesEnStock} ></td>
                </tr>
            </c:forEach>
        </table>
                    
      <footer id="footer">
        <ul id="nav">
            <li><a href="historiqueCommandes">Historique des commandes</a></li>
            <li><a href="monCompte">Mon compte</a></li>
            <li><a href="caddie">Mon panier</a></li>     
        </ul>
</footer >              
        
    </body>
</html>
