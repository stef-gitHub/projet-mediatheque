package servlet;

import beans.Emprunt;
import beans.Support;
import beans.Utilisateur;
import dao.EmpruntDAO;
import dao.SupportDAO;
import dao.TypeDAO;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;

public class EmpruntServlet extends HttpServlet {

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {

            request.setAttribute("emprunts", EmpruntDAO.afficherEmprunts());
        } catch (SQLException | ClassNotFoundException throwables) {
            throwables.printStackTrace();
        }
        this.getServletContext().getRequestDispatcher( "/WEB-INF/jsp/emprunt.jsp" ).forward( request, response );
    }

    public void doPost( HttpServletRequest request, HttpServletResponse response ) throws IOException {
        try {

            if(request.getParameter("modifierDateDebutEmprunt") != null) {
                System.out.println("test");
                Emprunt emprunt = new Emprunt();

                emprunt.setId_emprunt(Integer.parseInt(request.getParameter("idEmpruntModifier")));

                emprunt.setDate_debut(request.getParameter("modifierDateDebutEmprunt"));
                emprunt.setDate_fin(request.getParameter("modifierDateFinEmprunt"));

                EmpruntDAO.modifierEmprunt(emprunt);

            }else if(request.getParameter("supprimerEmprunt") != null){
                Emprunt emprunt = new Emprunt();
                emprunt.setId_emprunt(Integer.parseInt(request.getParameter("idEmprunt")));
                EmpruntDAO.archiverEmprunt(emprunt);
            }
            response.sendRedirect("emprunt");
        } catch (SQLException | ClassNotFoundException throwables) {
            throwables.printStackTrace();
        }


    }
}