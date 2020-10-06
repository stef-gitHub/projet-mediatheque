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

public class CDSerlvet extends HttpServlet {

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        int id_type_cd = 2;

        try {
            // Affiche tous les CD dans cd.jsp
            request.setAttribute("cds", SupportDAO.afficherSupportsFiltres(id_type_cd));
            request.setAttribute("types", TypeDAO.afficherType());

        } catch (SQLException | ClassNotFoundException throwables) {
            throwables.printStackTrace();
        }
        this.getServletContext().getRequestDispatcher( "/WEB-INF/jsp/cd.jsp" ).forward( request, response );
    }

    public void doPost( HttpServletRequest request, HttpServletResponse response ) throws IOException {

        try {
            // Modifier un CD via le formulaire dans la vue cd.jsp
            if(request.getParameter("modifierNomCD") != null) {
                System.out.println("test");
                Support support = new Support();
                support.setId_support(Integer.parseInt(request.getParameter("idCDModifier")));
                support.setTitre(request.getParameter("modifierNomCD"));
                support.setAuteur(request.getParameter("modifierAuteurCD"));
                support.setDate(request.getParameter("modifierAnneeCD"));
                support.setQuantite(Integer.parseInt(request.getParameter("modifierQuantiteCD")));
                support.setType(TypeDAO.getTypeById(Integer.parseInt(request.getParameter("modifierTypeCD"))));
                SupportDAO.modifierSupport(support);

                // Arichver un CD via le formulaire dans la vue cd.jsp
            }else if(request.getParameter("supprimerCD") != null){
                Support support = new Support();
                support.setId_support(Integer.parseInt(request.getParameter("idCD")));
                SupportDAO.archiverSupport(support);
            }
            response.sendRedirect("cd");
        } catch (SQLException | ClassNotFoundException throwables) {
                throwables.printStackTrace();
        }
    }
}
