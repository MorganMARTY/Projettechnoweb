/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import comptoirs.model.dao.ClientFacade;
import comptoirs.model.dao.LigneFacade;
import comptoirs.model.dao.ProduitFacade;
import comptoirs.model.entity.Client;
import comptoirs.model.entity.Ligne;
import comptoirs.model.entity.Produit;
import java.util.Collection;
import javax.inject.Inject;
import javax.mvc.Controller;
import javax.mvc.Models;
import javax.mvc.View;
import javax.validation.executable.ExecutableType;
import javax.validation.executable.ValidateOnExecution;
import javax.ws.rs.FormParam;
import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.Path;
import javax.ws.rs.QueryParam;

/**
 *
 * @author marie
 */
@Controller
@Path("pageClient")

public class PageClientController {

    @Inject
    Models models;

    @Inject
    ClientFacade facade;

    @Inject
    SessionClient client;

    @Inject
    ProduitFacade facadeP;
    
    @Inject
    SessionCaddie lignesCaddie;
    
    @Inject
    LigneFacade facadeL;

    @GET
    @View("pageClient.jsp")
    public void bienvenue() {
        Client u = facade.find(client.getCode());
        models.put("utilisateur", u);
        Collection<Produit> prods = facadeP.findAll();
        models.put("produits", facadeP.findAll());
    }

    
    }
    
