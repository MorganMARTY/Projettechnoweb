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
    
    @Inject
    SessionClientController client;

    @GET
    public void show() {
        models.put("client", dao.findAll());
    }

    @POST
    @ValidateOnExecution(type = ExecutableType.ALL)
    public String login(@FormParam("contact") String contact, @FormParam("code") String code) {
        try {
            Client p = dao.find(code);
            if (p.getContact().equals(contact)) {
                client.setCode(code);
                return "redirect:/pageClient";

            } else {
                models.put("databaseErrorMessage", "Ce contact ne correspond pas au client");
            }
        } catch (Exception e) {
            models.put("databaseErrorMessage", "Ce code n'existe pas");
        }

        return null;
    }
}
