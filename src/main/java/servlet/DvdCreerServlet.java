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

public class DvdCreerServlet extends HttpServlet {

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        this.getServletContext().getRequestDispatcher( "/WEB-INF/jsp/creerDVD.jsp" ).forward( request, response );
    }
    public void doPost( HttpServletRequest request, HttpServletResponse response ) throws IOException {
        try {
            // Créer un DVD via le formulaire dans la vue creerDVD.jsp
            if(request.getParameter("creerTitreDvd") != null) {
                Support support = new Support();
                support.setTitre(request.getParameter("creerTitreDvd"));
                support.setAuteur(request.getParameter("creerAuteurDvd"));
                support.setDate(request.getParameter("creerAnneeDvd"));
                support.setQuantite(Integer.parseInt(request.getParameter("creerQuantiteDvd")));
                support.setActif(1);
                support.setType(TypeDAO.getTypeById(3));
                SupportDAO.creerSupport(support);
            }
            response.sendRedirect("dvd");
        } catch (SQLException | ClassNotFoundException throwables) {
            throwables.printStackTrace();
        }
    }
}
