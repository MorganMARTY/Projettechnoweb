<%-- 
    Document   : editionCompte
    Created on : 27 avr. 2020, 17:00:17
    Author     : marie
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>


<!DOCTYPE html>


<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Modifier vos données</title>
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/ModifDonnée.css">
        <meta name="viewport" content="width=device-width, initial-scale=1">
    </head>
    <body>

<div id="entete" >
<a href="${pageContext.request.contextPath}/"><img id="imghome" class="left" src="houseIcon.png" alt="Bouton retour à l'accueil" /></a>
</div>
<br>
<br>
        
    <h3>Modifier vos données :</h3>

        <ul>
            <form method="POST">
                <li>Mon nom: ${utilisateur.contact} </br></br><ul><label>Nouveau nom: </label><input name="nvNom"></li></ul></br></br>

                <li>Ma société: ${utilisateur.societe} </br></br> <ul><label>Nouvelle société: </label><input name="nvSociete"></li></ul></br></br>

                <li>Ma fonction: ${utilisateur.fonction} </br></br> <ul><label>Nouvelle fonction: </label><input name="nvFonction"></li></ul></br></br>

                <li>Mon adresse: 
                    <ul>
                        ${utilisateur.adresse} </br></br><label> Nouvelle adresse: </label><input name="nvAdresse"></br></br>
                    </ul>
                    <ul>
                        ${utilisateur.ville} </br></br> <label>Nouvelle ville: </label><input name="nvVille"></br></br>
                    </ul>
                    <ul>
                        ${utilisateur.region} </br></br> <label>Nouvelle région: </label><input name="nvRegion"></br></br>
                    </ul>
                    <ul>
                        ${utilisateur.codePostal} </br></br> <label>Nouveau code postal:</label> <input name="nvCodeP"></br></br>
                    </ul>
                    <ul>
                        ${utilisateur.pays} </br></br> <label>Nouveau pays: </label><input name="nvPays"></br></br>
                    </ul>
                </li></br>
                <li>Mon téléphone: ${utilisateur.telephone} </br></br><ul> <label>Nouveau numéro:</label> <input name="nvTel"></li></ul></br></br>

                <li>Mon fax: ${utilisateur.fax} </br></br><ul> <label>Nouveau fax:</label> <input name="nvFax"></li></ul></br></br>

                <input type="submit" value="Valider" class="Vald-btn">
            </form>
        </ul>

    </body>
</html>

