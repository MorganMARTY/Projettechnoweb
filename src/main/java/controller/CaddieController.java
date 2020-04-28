/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import comptoirs.model.dao.LigneFacade;
import comptoirs.model.dao.ProduitFacade;
import comptoirs.model.entity.Ligne;
import comptoirs.model.entity.Produit;
import java.util.Collection;
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
@Path("caddie")
@View("caddie.jsp")
public class CaddieController {

    @Inject
    Models models;
    
    @Inject
    ProduitFacade facadeP;
    
    @Inject
    LigneFacade facadeL;
    
    @Inject
    SessionCaddieController lignesCaddie;
    
    @GET
    public void voirPanier() {
        Collection<Produit> produitsCaddie = null;
        for (int i = 0; i < lignesCaddie.taille(); i++) {
            produitsCaddie.add(lignesCaddie.getProduit(i));        
                    }
        models.put("lignesCaddie", lignesCaddie);
        models.put("produitsCaddie", produitsCaddie);
    }
}
