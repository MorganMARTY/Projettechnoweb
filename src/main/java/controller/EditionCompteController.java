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

import form.ClientForm;

/**
 *
 * @author marie
 */
@Controller
@Path("edtionController")
@View("edtionController.jsp")
public class EditionCompteController {

    @Inject // Le DAO généré par netBeans
    ClientFacade facadeCl;

    @Inject
    Models models;

    @Inject
    SessionClientController client;

    @GET
    public void afficheLeClient() {
        Client c = facadeCl.find(client.getCode());
        models.put("utilisateur", c);

    }

    @POST
    public void edition(@FormParam("nvNom") String nvNom, @FormParam("nvSociete") String nvSociete, @FormParam("nvFonction") String nvFonction, @FormParam("nvAdresse") String nvAdresse, @FormParam("nvVille") String nvVille, @FormParam("nvRegion") String nvRegion, @FormParam("nvCodeP") String nvCodeP, @FormParam("nvPays") String nvPays, @FormParam("nvTel") String nvTel, @FormParam("nvFax") String nvFax) {
        Client c = facadeCl.find(client.getCode());
        if (nvNom != null) {
            c.setContact(nvNom);
        }
        if (nvSociete != null) {
            c.setSociete(nvSociete);
        }
        if (nvFonction != null) {
            c.setFonction(nvFonction);
        }
        if (nvAdresse != null) {
            c.setAdresse(nvAdresse);
        }
        if (nvVille != null) {
            c.setVille(nvVille);
        }
        if (nvRegion != null) {
            c.setRegion(nvRegion);
        }
        if (nvCodeP != null) {
            c.setCodePostal(nvCodeP);
        }
        if (nvPays != null) {
            c.setPays(nvPays);
        }
        if (nvTel != null) {
            c.setTelephone(nvTel);
        }
        if (nvFax != null) {
            c.setFax(nvFax);
        }
        
        models.put("utilisateur", c);
    }
//    @POST
//    @ValidateOnExecution(type = ExecutableType.ALL)
//    public String edit(@Valid @BeanParam ClientForm formData) {
//        Client c = facadeCl.find(client.getCode());
////        if (formData.getContact() != null) {
//            c.setContact(formData.getContact());
////        }
////        if (formData.getSociete() != null) {
//            c.setSociete(formData.getSociete());
////        }
////        if (formData.getFonction() != null) {
//            c.setFonction(formData.getFonction());
////        }
////        if (formData.getAdresse() != null) {
//            c.setAdresse(formData.getAdresse());
////        }
////        if (formData.getVille() != null) {
//            c.setVille(formData.getVille());
////        }
////        if (formData.getRegion() != null) {
//            c.setRegion(formData.getRegion());
////        }
////        if (formData.getCodePostal() != null) {
//            c.setCodePostal(formData.getCodePostal());
////        }
////        if (formData.getPays() != null) {
//            c.setPays(formData.getPays());
////        }
////        if (formData.getTelephone() != null) {
//            c.setTelephone(formData.getTelephone());
////        }
////        if (formData.getFax() != null) {
//            c.setFax(formData.getFax());
////        }
//        facadeCl.edit(c);
//        models.put("utilisateur", c);
//        return ("redirect:monCompte");
//    }
}
