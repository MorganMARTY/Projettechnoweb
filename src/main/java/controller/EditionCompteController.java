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
import javax.validation.Valid;
import javax.validation.executable.ExecutableType;
import javax.validation.executable.ValidateOnExecution;
import javax.ws.rs.BeanParam;
import javax.ws.rs.FormParam;
import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.Path;

/**
 *
 * @author marie
 */
@Controller
@Path("editionCompte")
@View("editionCompte.jsp")
public class EditionCompteController {

    @Inject
    ClientFacade facadeCl;

    @Inject
    Models models;

    @Inject
    SessionClient client;

    @GET
    public void afficheLeClient() {
        Client c = facadeCl.find(client.getCode());
        models.put("utilisateur", c);

    }

    @POST
    public String edition(@FormParam("nvNom") String nvNom, @FormParam("nvSociete") String nvSociete, @FormParam("nvFonction") String nvFonction, @FormParam("nvAdresse") String nvAdresse, @FormParam("nvVille") String nvVille, @FormParam("nvRegion") String nvRegion, @FormParam("nvCodeP") String nvCodeP, @FormParam("nvPays") String nvPays, @FormParam("nvTel") String nvTel, @FormParam("nvFax") String nvFax) {
        Client c = facadeCl.find(client.getCode());
        if (nvNom.isEmpty() == false) {
            c.setContact(nvNom);
        }
        if (nvSociete.isEmpty() == false) {
            c.setSociete(nvSociete);
        }
        if (nvFonction.isEmpty() == false) {
            c.setFonction(nvFonction);
        }
        if (nvAdresse.isEmpty() == false) {
            c.setAdresse(nvAdresse);
        }
        if (nvVille.isEmpty() == false) {
            c.setVille(nvVille);
        }
        if (nvRegion.isEmpty() == false) {
            c.setRegion(nvRegion);
        }
        if (nvCodeP.isEmpty() == false) {
            c.setCodePostal(nvCodeP);
        }
        if (nvPays.isEmpty() == false) {
            c.setPays(nvPays);
        }
        if (nvTel.isEmpty() == false) {
            c.setTelephone(nvTel);
        }
        if (nvFax.isEmpty() == false) {
            c.setFax(nvFax);
        }
        facadeCl.edit(c);
        models.put("utilisateur", c);
        return ("redirect:monCompte");
    }
}
