package servlet;

import beans.Support;
import beans.Type;
import dao.SupportDAO;
import dao.TypeDAO;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class LivreSerlvet extends HttpServlet {

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        int id_type_livre = 1;

        try {
            request.setAttribute("livres", SupportDAO.afficherSupportsFiltres(id_type_livre));
            request.setAttribute("types", TypeDAO.afficherType());

        } catch (SQLException | ClassNotFoundException throwables) {
            throwables.printStackTrace();
        }


        this.getServletContext().getRequestDispatcher( "/WEB-INF/jsp/livre.jsp" ).forward( request, response );
    }

    public void doPost( HttpServletRequest request, HttpServletResponse response ) throws IOException {
        if(request.getParameter("idLivreModifier") != null){
        Support support = new Support();
        support.setTitre(request.getParameter("modifierNomLivre"));
        support.setAuteur(request.getParameter("modifierAuteurLivre"));
        support.setDate(request.getParameter("modifierAnneeLivre"));
        support.setQuantite(Integer.parseInt(request.getParameter("modifierQuantiteLivre")));
            try {
                support.setType(TypeDAO.getTypeById(Integer.parseInt(request.getParameter("modifierTypeLivre"))));
            } catch (SQLException | ClassNotFoundException throwables) {
                throwables.printStackTrace();
            }
            try {
            SupportDAO.modifierSupport(support);
        } catch (SQLException | ClassNotFoundException throwables) {
            throwables.printStackTrace();
        }

        response.sendRedirect("livre");
        }
    }
}
