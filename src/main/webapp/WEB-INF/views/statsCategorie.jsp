<%-- 
    Document   : statsCategorie
    Created on : 1 mai 2020, 21:48:02
    Author     : marie
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<head>
    <title>Chiffre d'affaire par catégorie</title>
    <meta charset="UTF-8">
    <!-- On charge JQuery -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <!-- On charge l'API Google -->
    <script type="text/javascript" src="https://www.google.com/jsapi"></script>
    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    <script type="text/javascript">
        // cf. https://developers.google.com/chart/interactive/docs/gallery/piechart
        google.charts.load('current', {'packages': ['corechart']});

        // On fait l'appel AJAX dès le chargement de la page
        google.charts.setOnLoadCallback(doAjax);

        function drawPiechart(result) {
            // On met le résultat au format attendu par google
            var data = [['Produit', 'Prix unités vendues']];
            result.forEach(ligne => data.push([ligne.libelle, ligne.prix]));
            var dataTable = google.visualization.arrayToDataTable(data);

            var chart = new google.visualization.PieChart(document.getElementById('piechart'));
            var options = {title: 'Voici un beau camembert'};
            chart.draw(dataTable, options);
        }

        // Afficher les unités vendues pour la catégorie choisie selon des dates choisies
        function doAjax() {
            $.ajax({
                url: "mvc/service/unitesVendues/dates",
                // Les données saisies dans le formlaire
                data: $('#formulaireStatsCategorie').serialize(),
                dataType: "json",
                success: drawPiechart, // La fonction qui traite les résultats
                error: showError
            });
        }

        // Fonction qui traite les erreurs de la requête
        function showError(xhr, status, message) {
            alert("Erreur: " + status + " : " + message);
        }

    </script>
</head>
<body>
    <h1>Produits vendus pour une catégorie</h1>
    <%-- Un formulaire pour choisir les dates --%>
    <form id="formulaireStatsCategorie">
        <input type="date" name="dateDebut"></br>
        <input type="date" name="dateFin">
        <%-- Pas de 'submit', on fait un appel AJAX --%>
        <input type="submit" value="ok">

    </form>	
    <!-- Le graphique apparaît ici -->
    <div id="piechart" style="width: 1000px; height: 500px;"></div>
    <hr>
    <a href="${pageContext.request.contextPath}/">Retour au menu</a>
</body>

