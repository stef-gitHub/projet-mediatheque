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

public class LivreNumeriqueCreerServlet extends HttpServlet{

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        this.getServletContext().getRequestDispatcher( "/WEB-INF/jsp/creerLivreNumerique.jsp" ).forward( request, response );
    }
    public void doPost( HttpServletRequest request, HttpServletResponse response ) throws IOException {
        try {
            if(request.getParameter("creerTitreLivreNumerique") != null) {
                Support support = new Support();
                support.setTitre(request.getParameter("creerTitreLivreNumerique"));
                support.setAuteur(request.getParameter("creerAuteurLivreNumerique"));
                support.setDate(request.getParameter("creerAnneeLivreNumerique"));
                support.setQuantite(Integer.parseInt(request.getParameter("creerQuantiteLivreNumerique")));
                support.setActif(1);
                support.setType(TypeDAO.getTypeById(4));
                SupportDAO.creerSupport(support);
            }
            response.sendRedirect("livre_numerique");
        } catch (SQLException | ClassNotFoundException throwables) {
            throwables.printStackTrace();
        }
    }
}