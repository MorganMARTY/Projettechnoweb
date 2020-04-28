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

    private Collection<Ligne> lignesCaddie;

    public Collection<Ligne> getlignesCaddie() {
        return lignesCaddie;
    }

    public void setlignesCaddie(Collection<Ligne> lignesCaddie) {
        this.lignesCaddie = lignesCaddie;
    }

    public void ajouterlignesCaddie(Ligne l) {
        lignesCaddie.add(l);
    }

    public int taille() {
        return (lignesCaddie.size());
    }

    public Produit getProduit(int i) {
        int k = 0;
        Ligne li = null;
        for (Ligne l : lignesCaddie) {
            if (k == i) {
                li = l;
            }
            k += 1;
        }
        return (li.getProduit1());
    }

}
