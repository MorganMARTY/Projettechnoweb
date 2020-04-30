/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package comptoirs.model.dto;

import java.math.BigDecimal;
import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement; 

/**
 *
 * @author marie
 */
@XmlRootElement
@XmlAccessorType(XmlAccessType.FIELD)
public class StatsResultCat {

	public StatsResultCat(String libelle, BigDecimal prix) {
		this.prix = prix;
		this.libelle = libelle;
	}
	
	public StatsResultCat() {
		this("Inconnu", BigDecimal.valueOf(0l));
	}
	
	// Pas utile de mettre des "getter" ici (final)
	@XmlElement
	public final BigDecimal prix;

	@XmlElement
	public final String libelle;
	
}
