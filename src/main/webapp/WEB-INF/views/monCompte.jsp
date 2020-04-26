<%-- 
    Document   : monCompte
    Created on : 26 avr. 2020, 13:14:48
    Author     : marie
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Mon Compte</title>
    </head>
    <body>
        <body>
        <ul>
            <li>Ma société: ${utilisateur.societe}</li></br>
            <li>Ma fonction: ${utilisateur.fonction}</li></br>
            <li>Mon adresse: 
                <ul>
                    ${utilisateur.adresse}
                </ul>
                <ul>
                    ${utilisateur.ville}
                </ul>
                <ul>
                    ${utilisateur.région}
                </ul>
                <ul>
                    ${utilisateur.codepostal}
                </ul>
                <ul>
                    ${utilisateur.pays}
                </ul>
            </li></br>
            <li>Mon téléphone: ${utilisateur.telephone}</li></br>
            <li>Mon fax: ${utilisateur.fax}</li></br>
        </ul>
    <a href="${pageContext.request.contextPath}/">Retour au menu</a>
        
    </body>
</html>
