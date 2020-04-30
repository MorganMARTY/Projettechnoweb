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
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.ejb.EJBException;
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
    SessionCaddieController caddie;

    @GET
    public void show() {
        models.put("produits", facadeP.findAll());
        models.put("ok", "ok");
    }

    @POST
    @ValidateOnExecution(type = ExecutableType.ALL)
    public void nvLigne(@FormParam("nomP") String nomP, @FormParam("qteP") Short qteP) {
        Ligne l = new Ligne();
        Produit p = new Produit();
        for (Produit pr : facadeP.findAll()) {
            if (pr.getNom() == nomP) {
                p = pr;
            }
        }
        if (p != null) {
            models.put("prd", p.getNom());
            l.setProduit1(p);
            l.setQuantite(qteP);

            facadeL.create(l);

            caddie.ajouterLigneCaddie(l);
            models.put("lignesCaddie", caddie);
            models.put("test", "ok");

        }

    }
}
