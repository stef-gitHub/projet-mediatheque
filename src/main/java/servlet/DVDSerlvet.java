package servlet;

import beans.Support;
import dao.SupportDAO;
import dao.TypeDAO;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;

public class DVDSerlvet extends HttpServlet {

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        int id_type_dvd = 3;

        try {
            request.setAttribute("dvds", SupportDAO.afficherSupportsFiltres(id_type_dvd));
            request.setAttribute("types", TypeDAO.afficherType());

        } catch (SQLException | ClassNotFoundException throwables) {
            throwables.printStackTrace();
        }


        this.getServletContext().getRequestDispatcher( "/WEB-INF/jsp/dvd.jsp" ).forward( request, response );
    }

    public void doPost( HttpServletRequest request, HttpServletResponse response ) throws IOException {

        try {

        if(request.getParameter("modifierNomDVD") != null) {
            System.out.println("test");
            Support support = new Support();
            support.setId_support(Integer.parseInt(request.getParameter("idDVDModifier")));;
            support.setTitre(request.getParameter("modifierNomDVD"));
            support.setAuteur(request.getParameter("modifierAuteurDVD"));
            support.setDate(request.getParameter("modifierAnneeDVD"));
            support.setQuantite(Integer.parseInt(request.getParameter("modifierQuantiteDVD")));
            support.setType(TypeDAO.getTypeById(Integer.parseInt(request.getParameter("modifierTypeDVD"))));
            SupportDAO.modifierSupport(support);

        }else if(request.getParameter("supprimerDVD") != null){
            Support support = new Support();
            support.setId_support(Integer.parseInt(request.getParameter("idDVD")));
            SupportDAO.archiverSupport(support);
        }
        response.sendRedirect("dvd");
        } catch (SQLException | ClassNotFoundException throwables) {
                throwables.printStackTrace();
        }
    }
}
