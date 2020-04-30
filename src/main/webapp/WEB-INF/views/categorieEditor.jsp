<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>

	<head>
		<title>Edition des catégories</title>
		<link rel="stylesheet" href="Editioncat.css">
        <meta name="viewport" content="width=device-width, initial-scale=1">
	</head>

	<body>

  <div id="entete" >
<a href="${pageContext.request.contextPath}/"><img id="imghome" class="left" src="houseIcon.png" alt="Bouton retour à l'accueil" /></a>
</div>
<br>
<br>

		<h1>Edition des catégories</h1>
		
		<form method="POST"> <%-- L'action par défaut est de revenir à l'URL du contrôleur --%>
			
			<label>Libellé de la catégorie : </label> <input name="libelle" placeholder="Libellé de la catégorie"><br>
			<ul> <%-- On montre les erreurs de saisie éventuelles --%>
				<c:forEach var="error" items="${validationErrors.getErrors('libelle')}">
					<li><span style="color: red;">${mvc.encoders.html(error.message)}</span></li>
				</c:forEach>
			</ul>
			
			<label>Description de la catégorie : </label> <input name="description" placeholder="Description de la catégorie"><br>
			<ul> <%-- On montre les erreurs de saisie éventuelles --%>
				<c:forEach var="error" items="${validationErrors.getErrors('description')}">
					<li><span style="color: red;">${mvc.encoders.html(error.message)}</span></li>
				</c:forEach>
			</ul>
			<input type="submit" value="ajouter une nouvelle catégorie" class="newCat-btn">


		</form>
		<%-- Est-ce qu'on a un message d'erreur à afficher ? --%>
		<c:if test="${not empty databaseErrorMessage}">
			<h2>Erreur !</h2>
			<span style="color: red;">${databaseErrorMessage}</span>
		</c:if>
		<table border='1' id="customers">
			<tr><th>Code</th><th>Libellé</th><th>Description</th></tr>
			<%-- Pour chaque categorie, une ligne dans la table HTML --%>
			<c:forEach var="categorie" items="${categories}">
				<tr>
					<td>${categorie.code}</td>
					<td>${mvc.encoders.html(categorie.libelle)}</td>
					<td>${mvc.encoders.html(categorie.description)}</td>
				</tr>
			</c:forEach>
		</table>
		<hr>
		
	</body>
</html>