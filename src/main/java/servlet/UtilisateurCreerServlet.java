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

public class UtilisateurCreerServlet  extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        this.getServletContext().getRequestDispatcher( "/WEB-INF/jsp/creerUtilisateur.jsp" ).forward( request, response );
    }

    public void doPost( HttpServletRequest request, HttpServletResponse response ) throws IOException {

        try {
            // Modifier un livre par son ID
            if(request.getParameter("modifierNomLivre") != null) {
                Support support = new Support();
                support.setId_support(Integer.parseInt(request.getParameter("idLivreModifier")));;
                support.setTitre(request.getParameter("modifierNomLivre"));
                support.setAuteur(request.getParameter("modifierAuteurLivre"));
                support.setDate(request.getParameter("modifierAnneeLivre"));
                support.setQuantite(Integer.parseInt(request.getParameter("modifierQuantiteLivre")));
                support.setType(TypeDAO.getTypeById(Integer.parseInt(request.getParameter("modifierTypeLivre"))));
                SupportDAO.modifierSupport(support);

            }
            response.sendRedirect("livre");
        } catch (SQLException | ClassNotFoundException throwables) {
            throwables.printStackTrace();
        }
    }
}
