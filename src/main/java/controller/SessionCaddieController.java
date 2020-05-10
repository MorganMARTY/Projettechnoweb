/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import comptoirs.model.entity.Ligne;
import comptoirs.model.entity.Produit;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import javax.enterprise.context.SessionScoped;
import javax.inject.Named;

/**
 *
 * @author marie
 */
@SessionScoped
@Named("caddie")
public class SessionCaddieController implements Serializable {

    Collection<Ligne> lignesCaddie;

    public Collection<Ligne> getLignesCaddie() {
        return lignesCaddie;
    }

    public void setLignesCaddie(Collection<Ligne> lignesCaddie) {
        this.lignesCaddie = lignesCaddie;
    }

    public void ajouterLigneCaddie(Ligne l) {
        lignesCaddie.add(l);
    }

    public int taille() {
        return (lignesCaddie.size());
    }


}
