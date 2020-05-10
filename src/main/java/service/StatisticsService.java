package service;

import comptoirs.model.dao.StatisticsDao;
import comptoirs.model.dto.StatsResult;
import comptoirs.model.dto.StatsResultCat;
import java.util.Date;
import java.util.List;
import javax.inject.Inject;

import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.QueryParam;
import javax.ws.rs.core.MediaType;

@Path("service/unitesVendues")
public class StatisticsService {

    @Inject
    StatisticsDao dao;

    @GET
    @Path("categories")
    @Produces({MediaType.APPLICATION_JSON, MediaType.APPLICATION_XML})
    public List<StatsResult> unitesVenduesJSON() {
        return dao.unitesVenduesParCategorieDTO();
    }

    @GET
    @Path("produits")
    @Produces(MediaType.APPLICATION_JSON)
    public List<StatsResult> produitsVendus(@QueryParam("code") Integer codeCategorie) {
        return dao.produitsVendusPour(codeCategorie);
    }

    @GET
    @Path("vector")
    @Produces(MediaType.APPLICATION_JSON)
    public List unitesVenduesParCategorie() {
        List result = dao.unitesVenduesParCategorie();
        return result;
    }

    @GET
    @Path("categories2")
    @Produces({MediaType.APPLICATION_JSON, MediaType.APPLICATION_XML})
    public List<StatsResultCat> prixUnitesVenduesJSON() {
        return dao.prixUnitesVenduesParCategorieDTO();
    }

    @GET
    @Path("pays")
    @Produces({MediaType.APPLICATION_JSON, MediaType.APPLICATION_XML})
    public List<StatsResultCat> prixUnitesVenduesParPaysJSON() {
        return dao.prixUnitesVenduesParPaysDTO();
    }
    
    @GET
    @Path("clients")
    @Produces({MediaType.APPLICATION_JSON, MediaType.APPLICATION_XML})
    public List<StatsResultCat> prixUnitesVenduesParClientJSON() {
        return dao.prixUnitesVenduesParClientDTO();
    }
    
    @GET
    @Path("dates")
    @Produces(MediaType.APPLICATION_JSON)
    public List<StatsResultCat> produitsVendus(@QueryParam("dateDebut") Date dateDebut, @QueryParam("dateFin") Date dateFin) {
        return dao.prixUnitesVenduesParCategorieDatesDTO(dateDebut,dateFin);
    }
}
