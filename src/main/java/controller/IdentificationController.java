/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import comptoirs.model.dao.ClientFacade;
import comptoirs.model.entity.Client;
import java.util.List;
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
 * @author mjp81
 */
@Controller
@Path("identification")
@View("identification.jsp")
public class IdentificationController {

    @Inject // Le DAO généré par netBeans
    ClientFacade dao;

    @Inject
    Models models;
    
    @Inject // Les infos du joueur, Session scoped
    private RechercheId resultat;


    @GET
    public void show() {
        List<Client> toutlesclients = dao.findAll();
        models.put("client", toutlesclients);
    }

    @POST
    @ValidateOnExecution(type = ExecutableType.ALL)
    public String login(@FormParam("contact") String contact) {
        Client p = dao.find(contact);
        try {
            if (p != null) {
                resultat.login(p.getContact();
                return "ce contact existe";
            } else {
                models.put("databaseErrorMessage", "Ce contact n'existe pas");
            }
        } catch (Exception e) {
            models.put("databaseErrorMessage", "Ce dispositif n'existe pas");
        }
        return null;
    }
}
