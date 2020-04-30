<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>

	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Ajout d'un nouveau produit</title>
                <link rel="stylesheet" href="CreationProd.css">
                <meta name="viewport" content="width=device-width, initial-scale=1">
	</head>

	<body>
            
             <div id="entete" >
    <a href="${pageContext.request.contextPath}/">
    <img id="imghome" class="left" src="houseIcon.png" alt="Bouton retour à l'accueil" /></a>
                </div>
<br>
<br>
            
		<h3>Nouveau produit</h3>
		<form method='POST'> 	<%-- L'action par défaut est de revenir à l'URL du contrôleur --%>
			<label>Nom du produit :</label> <input name="nom"><br><br>
			
                        <label>	Prix unitaire :</label> <input name="prixUnitaire" type="number" min="0.00" max="10000.00" step="0.01" /><br><br>
			<%-- Une liste de choix pour le paramètre 'code' --%>
			<label>Catégorie :</label><select name='codeCategorie'>
				<%-- On parcourt la liste des catégories en mettant une option pour chaque catégorie --%>
				<c:forEach var="categorie" items="${categories}">
					<option value='${categorie.code}'>${categorie.libelle}</option>
				</c:forEach>
			</select><br><br>
			<input type='submit' class="Prod-btn">
		</form>
		<hr>
		</html>
</html>