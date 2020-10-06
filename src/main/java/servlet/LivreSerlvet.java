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

        try {

        if(request.getParameter("modifierNomLivre") != null) {
            System.out.println("test");
            Support support = new Support();
            support.setId_support(Integer.parseInt(request.getParameter("idLivreModifier")));;
            support.setTitre(request.getParameter("modifierNomLivre"));
            support.setAuteur(request.getParameter("modifierAuteurLivre"));
            support.setDate(request.getParameter("modifierAnneeLivre"));
            support.setQuantite(Integer.parseInt(request.getParameter("modifierQuantiteLivre")));
            support.setType(TypeDAO.getTypeById(Integer.parseInt(request.getParameter("modifierTypeLivre"))));
            SupportDAO.modifierSupport(support);

        }else if(request.getParameter("supprimerLivre") != null){
            Support support = new Support();
            support.setId_support(Integer.parseInt(request.getParameter("idLivre")));
            SupportDAO.archiverSupport(support);
        }
        response.sendRedirect("livre");
        } catch (SQLException | ClassNotFoundException throwables) {
                throwables.printStackTrace();
        }
    }
}
