/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import comptoirs.model.dao.ClientFacade;
import comptoirs.model.entity.Client;
import javax.inject.Inject;
import javax.mvc.Controller;
import javax.mvc.Models;
import javax.mvc.View;
import javax.ws.rs.GET;
import javax.ws.rs.Path;

/**
 *
 * @author marie
 */

@Controller
@Path("monCompte") // Le chemin d'accès au contrôleur
@View("monCompte.jsp") // La vue qui affiche le résultat

public class MonCompteController {
    @Inject // Le DAO (auto-généré) qui gère les entités "Client"
    ClientFacade facadeCl;

    @Inject
    Models models; // Pour transmettre les infos à la vue

    @Inject
    SessionClientController client;
    


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
