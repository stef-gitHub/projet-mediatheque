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

public class EmpruntCreerServlet extends HttpServlet{

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        this.getServletContext().getRequestDispatcher( "/WEB-INF/jsp/creerEmprunt.jsp" ).forward( request, response );
    }
    public void doPost( HttpServletRequest request, HttpServletResponse response ) throws IOException {
        try {
            if(request.getParameter("creerTitreLivre") != null) {
                Support support = new Support();
                support.setTitre(request.getParameter("creerTitreLivre"));
                support.setAuteur(request.getParameter("creerAuteurLivre"));
                support.setDate(request.getParameter("creerAnneeLivre"));
                support.setQuantite(Integer.parseInt(request.getParameter("creerQuantiteLivre")));
                support.setActif(1);
                support.setType(TypeDAO.getTypeById(1));
                SupportDAO.creerSupport(support);
            }
            response.sendRedirect("livre");
        } catch (SQLException | ClassNotFoundException throwables) {
            throwables.printStackTrace();
        }
    }
}