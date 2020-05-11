/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import comptoirs.model.dao.ClientFacade;
import comptoirs.model.dao.CommandeFacade;
import comptoirs.model.dao.LigneFacade;
import comptoirs.model.dao.ProduitFacade;
import comptoirs.model.entity.Client;
import comptoirs.model.entity.Commande;
import comptoirs.model.entity.Ligne;
import comptoirs.model.entity.Produit;
import java.math.BigDecimal;
import java.util.Collection;
import java.util.Date;
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
    ClientFacade facadeCl;

    @Inject
    LigneFacade facadeL;

    @Inject
    SessionCaddieController caddie;

    @Inject
    SessionClientController client;

    @Inject
    CommandeFacade facadeC;

    @GET
    public void show() {
        models.put("produits", facadeP.findAll());
        models.put("clients", facadeCl.findAll());
    }

    @POST
    @ValidateOnExecution(type = ExecutableType.ALL)
    public String nvLigne(@FormParam("codeProduit") Integer codeP, @FormParam("qteP") BigDecimal qteP) {
        Ligne l = new Ligne();
        Produit p = facadeP.find(codeP);
        l.setProduit1(p);
        l.setQuantite(qteP.shortValueExact());
        l.setCommande1(new Commande());
        facadeL.create(l);
        caddie.ajouterLigneCaddie(l);
        models.put("lignesCaddie", caddie);
        models.put("test", "ok");
        return "redirect:/produits";

    }
//créer une commande:
//    @GET
//    @Path("nvCommande")
//    public void create() {
//        models.put("panier", caddie);
//    }
//
//    @POST
//    @Path("nvCommande")
//    public void nvllCommande() {
//        Commande nvCommande = new Commande();
//        Client c = new Client();
//        for (Client cl : facadeCl.findAll()) {
//            if (cl.getCode().equals(client.getCode())) {
//                c = cl;
//            }
//        }
//        nvCommande.setClient(c);
//        nvCommande.setSaisieLe(new Date());
//        nvCommande.setEnvoyeeLe(null);
//        nvCommande.setAdresseLivraison(c.getAdresse());
//        nvCommande.setCodePostalLivrais(c.getCodePostal());
//        nvCommande.setDestinataire(c.getSociete());
//        nvCommande.setRegionLivraison(c.getRegion());
//        nvCommande.setLigneCollection(caddie.getLignesCaddie());
//        nvCommande.setVilleLivraison(c.getVille());
//        nvCommande.setPaysLivraison(c.getPays());
//        nvCommande.setRemise(BigDecimal.ZERO);
//        nvCommande.setPort(BigDecimal.ZERO);
//        nvCommande.setNumero(12000);
//
//        facadeC.create(nvCommande);
//        
//        if(nvCommande.getNumero()!=null){
//            models.put("validation", "Panier validé!");
//        }
//        else{
//            models.put("validation", "Panier vide!");
//        }
//    }
}
