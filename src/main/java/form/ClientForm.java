/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package form;

import java.io.Serializable;
import javax.mvc.binding.MvcBinding;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;
import javax.ws.rs.FormParam;

/**
 *
 * @author marie
 */
public class ClientForm implements Serializable {

    private static final long serialVersionUID = -3523783484400524581L;

    @MvcBinding
    private String nvNom;

    @MvcBinding
    private String nvSociete;
    
    @MvcBinding
    private String nvFonction;
    
    @MvcBinding
    private String nvAdresse;
    
    @MvcBinding
    private String nvVille;
    
    @MvcBinding
    private String nvRegion;
    
    @MvcBinding
    private String nvCodeP;
    
    @MvcBinding
    private String nvPays;
    
    @MvcBinding
    private String nvTel;
    
    @MvcBinding
    private String nvFax;
    
    public String getSociete() {
		return nvSociete;
	}

	public void setSociete(final String societe) {
		this.nvSociete = societe;
	}

	public String getContact() {
		return nvNom;
	}

	public void setContact(final String contact) {
		this.nvNom = contact;
	}

	public String getFonction() {
		return nvFonction;
	}

	public void setFonction(final String fonction) {
		this.nvFonction = fonction;
	}

	public String getAdresse() {
		return nvAdresse;
	}

	public void setAdresse(final String adresse) {
		this.nvAdresse = adresse;
	}

	public String getVille() {
		return nvVille;
	}

	public void setVille(final String ville) {
		this.nvVille = ville;
	}

	public String getRegion() {
		return nvRegion;
	}

	public void setRegion(final String region) {
		this.nvRegion = region;
	}

	public String getCodePostal() {
		return nvCodeP;
	}

	public void setCodePostal(final String codePostal) {
		this.nvCodeP = codePostal;
	}

	public String getPays() {
		return nvPays;
	}

	public void setPays(final String pays) {
		this.nvPays = pays;
	}

	public String getTelephone() {
		return nvTel;
	}

	public void setTelephone(final String telephone) {
		this.nvTel = telephone;
	}

	public String getFax() {
		return nvFax;
	}

	public void setFax(final String fax) {
		this.nvFax = fax;
}
}
