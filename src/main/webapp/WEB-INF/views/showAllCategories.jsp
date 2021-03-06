<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>

<head>
	<title>Affiche toutes les catégories</title>
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/AffichCat.css">
    <meta name="viewport" content="width=device-width, initial-scale=1">

</head>

<body>


<div id="entete" >
<a href="${pageContext.request.contextPath}/"><img id="imghome" class="left" src="houseIcon.png" alt="Bouton retour à l'accueil" /></a>
</div>
<br>
<br>

	<h1>Liste des catégories</h1>

	<table border='1' id="customers">
		<tr><th>Code</th><th>Libellé</th><th>Description</th></tr>
		<%-- Pour chaque catégorie, une ligne dans la table HTML --%>
		<c:forEach var="categorie" items="${categories}">
			<tr></tr>>
				<td>${categorie.code}</td>
				<%-- Le libellé ou la description peuvent contenir des caractères spéciaux HTML ! --%>
				<td>${mvc.encoders.html(categorie.libelle)}</td>
				<td>${mvc.encoders.html(categorie.description)}</td>
			</tr>
		</c:forEach>
	</table>

	<footer>
	<h3>Code source : </h3>
	<ul>
		<li><a href="https://bitbucket.org/rbastide/comptoirs_mvc/src/test/src/main/java/controller/CategorieController.java"  target="_blank">Le contrôleur</a></li>
		<li><a href="https://bitbucket.org/rbastide/comptoirs_mvc/src/test/src/main/webapp/WEB-INF/views/showAllCategories.jsp"  target="_blank">La vue</a></li>
	</ul>
</footer>
</body>

</html>