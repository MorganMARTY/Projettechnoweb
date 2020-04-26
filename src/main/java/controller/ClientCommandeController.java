/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import comptoirs.model.dao.ClientFacade;
import comptoirs.model.entity.Client;
import comptoirs.model.entity.Commande;
import java.util.Collection;
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
    ClientFacade facade;
    
    @Inject
    Models models; // Pour transmettre les infos à la vue
    
    @Inject
    SessionClientController client;
  
    @GET
    public void afficheCommandesPourLeClient(){
        Client c = facade.find(client.getCode());
        Collection<Commande> historique = c.getCommandeCollection();
        models.put("historiqueCommandes",historique);
    }
}
