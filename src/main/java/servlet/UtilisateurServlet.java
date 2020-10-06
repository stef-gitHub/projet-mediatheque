package servlet;

import beans.Abonnement;
import beans.Role;
import beans.Support;
import beans.Utilisateur;
import dao.*;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.lang.reflect.Array;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

public class UtilisateurServlet extends HttpServlet {

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        UtilisateurDAO utilisateurDAO = new UtilisateurDAO();
        RoleDAO roleDAO = new RoleDAO();
        AbonnementDAO abonnementDAO = new AbonnementDAO();

        try {
            request.setAttribute("utilisateurs", UtilisateurDAO.afficherListeUtilisateur());
            request.setAttribute("roles", roleDAO.afficherRole());
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }

        this.getServletContext().getRequestDispatcher( "/WEB-INF/jsp/utilisateur.jsp" ).forward( request, response );
    }

    public void doPost( HttpServletRequest request, HttpServletResponse response ) throws IOException {
        UtilisateurDAO utilisateurDAO = new UtilisateurDAO();
        RoleDAO roleDAO = new RoleDAO();
        AbonnementDAO abonnementDAO = new AbonnementDAO();
        /*

        try {
            if(request.getParameter("creerUtilisateur") != null) {
                Utilisateur u = new Utilisateur();
                u.setNom(request.getParameter("creerTitreLivre"));
                u.setPrenom(request.getParameter("creerTitreLivre"));
                u.setMdp(request.getParameter("creerTitreLivre"));
                u.setAdresse(request.getParameter("creerTitreLivre"));
                u.setVille(request.getParameter("creerTitreLivre"));
                u.setCode_postal(request.getParameter("creerTitreLivre"));
                u.setNum_telephone(request.getParameter("creerTitreLivre"))
                u.setEmail(request.getParameter("creerTitreLivre"));

                Abonnement a = new Abonnement();
                a.setNumero_abonne(a.creerNumABonne(u.getNom(), u.getPrenom()));
                a.setPenalite(0);
                SimpleDateFormat formatter = new SimpleDateFormat("ddMMyyyy");
                Date date = new Date();
                a.setDate_souscription(formatter.format(date));

                u.setAbonnement();
                u.setRole(roleDAO.afficherRole(request.getParameter("creerTitreLivre")));
            }
        } catch (SQLException | ClassNotFoundException throwables) {
            throwables.printStackTrace();
        }*/
        response.sendRedirect("utilisateur");
    }
}
