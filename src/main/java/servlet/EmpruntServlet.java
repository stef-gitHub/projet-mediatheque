package servlet;

import beans.Emprunt;
import beans.Support;
import beans.Utilisateur;
import dao.EmpruntDAO;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;

public class EmpruntServlet extends HttpServlet {

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            EmpruntDAO.afficherEmprunts();
            Utilisateur utilisateur = new Utilisateur();
            utilisateur.setId_utilisateur(1);
            Support support = new Support();
            support.setId_support(1);
            Emprunt emprunt = new Emprunt(utilisateur, support, "10/04/2020", "10/05/2020");
            //EmpruntDAO.creerEmprunt(emprunt);
            /*Emprunt emprunt2 = new Emprunt();
            emprunt2.setId_emprunt(2);
            System.out.println(emprunt2.getId_emprunt());
            EmpruntDAO.modifierEmprunt(emprunt2);*/
        } catch (SQLException | ClassNotFoundException throwables) {
            throwables.printStackTrace();
        }
        this.getServletContext().getRequestDispatcher( "/WEB-INF/jsp/emprunt.jsp" ).forward( request, response );
    }

    public void doPost( HttpServletRequest request, HttpServletResponse response ) throws IOException {

        response.sendRedirect("emprunt");
    }
}