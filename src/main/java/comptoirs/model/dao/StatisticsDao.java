package comptoirs.model.dao;

import comptoirs.model.dto.StatsResult;
import comptoirs.model.dto.StatsResultCat;
import java.util.Date;
import java.util.List;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

@Stateless
public class StatisticsDao {

    private static final String UNITS_SOLD
            = "SELECT cat.libelle, SUM(li.quantite) "
            + "FROM Categorie cat "
            + "JOIN cat.produitCollection p "
            + "JOIN p.ligneCollection li "
            + "GROUP BY cat.libelle";

    private static final String UNIT_SOLDS_DTO
            = "SELECT new comptoirs.model.dto.StatsResult"
            + "(cat.libelle, SUM(li.quantite)) "
            + "FROM Categorie cat "
            + "JOIN cat.produitCollection p "
            + "JOIN p.ligneCollection li "
            + "GROUP BY cat.libelle";

    private static final String PRODUCTS_SOLDS_DTO
            = "SELECT new comptoirs.model.dto.StatsResult"
            + "(p.nom, SUM(li.quantite)) "
            + "FROM Produit p "
            + "JOIN p.categorie cat "
            + "JOIN p.ligneCollection li "
            + "WHERE cat.code = :code "
            + "GROUP BY p.nom ";

    private static final String PRICE_UNIT_SOLDS_DTO
            = "SELECT new comptoirs.model.dto.StatsResultCat"
            + "(cat.libelle, SUM(li.quantite*p.prixUnitaire)) "
            + "FROM Categorie cat "
            + "JOIN cat.produitCollection p "
            + "JOIN p.ligneCollection li "
            + "GROUP BY cat.libelle";

    private static final String PRICE_UNIT_SOLDS_PAYS_DTO
            = "SELECT new comptoirs.model.dto.StatsResultCat"
            + "(co.paysLivraison, SUM(li.quantite*p.prixUnitaire)) "
            + "FROM Commande co "
            + "JOIN co.produitCollection li "
            + "JOIN li.produitl p"
            + "GROUP BY co.paysLivraison";

    private static final String PRICE_UNIT_SOLDS_CLIENTS_DTO
            = "SELECT new comptoirs.model.dto.StatsResultCat"
            + "(co.client, SUM(li.quantite*p.prixUnitaire)) "
            + "FROM Commande co "
            + "JOIN co.produitCollection p "
            + "JOIN p.ligneCollection li "
            + "GROUP BY co.client";

    private static final String PRICE_UNIT_SOLDS_DATE_DTO
            = "SELECT new comptoirs.model.dto.StatsResultCat"
            + "(cat.libelle, SUM(li.quantite*p.prixUnitaire)) "
            + "FROM Categorie cat "
            + "JOIN cat.produitCollection p "
            + "JOIN p.ligneCollection li "
            + "WHERE cat.saisieLe>:dateDebut AND cat.saisieLe<:dateFin"
            + "GROUP BY cat.libelle";

    @PersistenceContext(unitName = "comptoirs")
    private EntityManager em;

    public List unitesVenduesParCategorie() {
        Query query = em.createQuery(UNITS_SOLD);
        List results = query.getResultList();
        return results;
    }

    public List<StatsResult> unitesVenduesParCategorieDTO() {
        Query query = em.createQuery(UNIT_SOLDS_DTO, StatsResult.class);
        List<StatsResult> results = query.getResultList();
        return results;
    }

    public List<StatsResult> produitsVendusPour(Integer codeCategorie) {
        Query query = em.createQuery(PRODUCTS_SOLDS_DTO, StatsResult.class);
        List<StatsResult> results = query.setParameter("code", codeCategorie).getResultList();
        return results;
    }

    public List<StatsResultCat> prixUnitesVenduesParCategorieDTO() {
        Query query = em.createQuery(PRICE_UNIT_SOLDS_DTO, StatsResultCat.class);
        List<StatsResultCat> results = query.getResultList();
        return results;
    }

    public List<StatsResultCat> prixUnitesVenduesParPaysDTO() {
        Query query = em.createQuery(PRICE_UNIT_SOLDS_PAYS_DTO, StatsResultCat.class);
        List<StatsResultCat> results = query.getResultList();
        return results;
    }

    public List<StatsResultCat> prixUnitesVenduesParClientDTO() {
        Query query = em.createQuery(PRICE_UNIT_SOLDS_CLIENTS_DTO, StatsResultCat.class);
        List<StatsResultCat> results = query.getResultList();
        return results;
    }

    public List<StatsResultCat> prixUnitesVenduesParCategorieDTO(Date dateDebut, Date dateFin) {
        Query query = em.createQuery(PRICE_UNIT_SOLDS_DATE_DTO, StatsResultCat.class);
        List<StatsResultCat> results = query.setParameter("dateDebut", dateDebut).getResultList();
        return results;
    }
}
