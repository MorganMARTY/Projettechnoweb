/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import comptoirs.model.dao.ClientFacade;
import comptoirs.model.dao.CommandeFacade;
import comptoirs.model.entity.Client;
import comptoirs.model.entity.Commande;
import java.util.Collection;
import java.util.List;
import javax.inject.Inject;
import javax.mvc.Controller;
import javax.mvc.Models;
import javax.mvc.View;
import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.QueryParam;

/**
 *
 * @author marie
 */
@Controller
@Path("historiqueCommandes") // Le chemin d'accès au contrôleur
@View("historiqueCommandes.jsp") // La vue qui affiche le résultat

public class ClientCommandeController {

    @Inject // Le DAO (auto-généré) qui gère les entités "Client"
    ClientFacade facadeCl;

    @Inject
    Models models; // Pour transmettre les infos à la vue

    @Inject
    SessionClient client;

    @GET
    public void afficheCommandesPourLeClient() {
        // On utilise le DAO pour trouver le client 
        // qui correspond au paramètre
        Client c = facadeCl.find(client.getCode());

        // TODO : gérer les erreurs : et si le client n'existe pas ?
        // On transmet les informations à la vue
        models.put("utilisateur", c);

    }
}
