<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!-- Import des "tag libraries" de JSP -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<html>

<head>
	<title>Affiche tous les produits</title>
	 <link rel="stylesheet" type="text/css" href="/AffichProd.css">
        <meta name="viewport" content="width=device-width, initial-scale=1">
</head>

<body>

<div id="entete" >
<a href="${pageContext.request.contextPath}/"><img id="imghome" class="left" src="houseIcon.png" alt="Bouton retour à l'accueil" /></a>
</div>

<br><br><br><br><br><br><br><br>
  
	<h1>Liste des produits</h1><br><br>
	<a href="produits/create">Ajouter un nouveau produit</a>
	<br><br>
	<table border='1' id="customers">
		<tr><th>Référence</th><th>Nom</th><th>Prix Unitaire</th><th>Catégorie</th></tr>
		<%-- Pour chaque produit, une ligne dans la table HTML --%>
		<c:forEach var="produit" items="${produits}">
			<tr>
				<td>${produit.reference}</td>
				<%-- Le nom peut contenir des caractères spéciaux HTML ! --%>
				<td>${mvc.encoders.html(produit.nom)}</td>
				<%-- Exemple d'utilisation des fonctions de formatage de données de la JSTL --%>
				<td><fmt:formatNumber value="${produit.prixUnitaire}" type="currency"/></td>
				<td>${mvc.encoders.html(produit.categorie.libelle)}</td>
			</tr>
		</c:forEach>
	</table>
</body>

</html>