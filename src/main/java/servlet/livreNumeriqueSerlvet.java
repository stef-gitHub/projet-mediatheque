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

public class livreNumeriqueSerlvet extends HttpServlet {

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        int id_type_livre_numerique = 4;

        try {
            request.setAttribute("livresNumeriques", SupportDAO.afficherSupportsFiltres(id_type_livre_numerique));
            request.setAttribute("types", TypeDAO.afficherType());

        } catch (SQLException | ClassNotFoundException throwables) {
            throwables.printStackTrace();
        }


        this.getServletContext().getRequestDispatcher( "/WEB-INF/jsp/livreNumerique.jsp" ).forward( request, response );
    }

    public void doPost( HttpServletRequest request, HttpServletResponse response ) throws IOException {

        try {

        if(request.getParameter("modifierNomLivreNumerique") != null) {
            System.out.println("test");
            Support support = new Support();
            support.setId_support(Integer.parseInt(request.getParameter("idLivreNumeriqueModifier")));;
            support.setTitre(request.getParameter("modifierNomLivreNumerique"));
            support.setAuteur(request.getParameter("modifierAuteurLivreNumerique"));
            support.setDate(request.getParameter("modifierAnneeLivreNumerique"));
            support.setQuantite(Integer.parseInt(request.getParameter("modifierQuantiteLivreNumerique")));
            support.setType(TypeDAO.getTypeById(Integer.parseInt(request.getParameter("modifierTypeLivreNumerique"))));
            SupportDAO.modifierSupport(support);

        }else if(request.getParameter("supprimerLivreNumerique") != null){
            Support support = new Support();
            support.setId_support(Integer.parseInt(request.getParameter("idLivreNumerique")));
            SupportDAO.archiverSupport(support);
        }
        response.sendRedirect("livre_numerique");
        } catch (SQLException | ClassNotFoundException throwables) {
                throwables.printStackTrace();
        }
    }
}
