package servlet;

import beans.Abonnement;
import beans.Role;
import beans.Utilisateur;
import dao.AbonnementDAO;
import dao.RoleDAO;
import dao.UtilisateurDAO;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.lang.reflect.Array;
import java.sql.SQLException;
import java.util.ArrayList;

public class UtilisateurServlet extends HttpServlet {

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        UtilisateurDAO utilisateurDAO = new UtilisateurDAO();
        RoleDAO roleDAO = new RoleDAO();
        AbonnementDAO abonnementDAO = new AbonnementDAO();
/*
        try {


            Role r =  roleDAO.afficherRole(1);
            Abonnement ab = new Abonnement("AA051020", 0, "05-10-2020");
            abonnementDAO.creerAbonnement(ab);

            Abonnement ab;
            ab = abonnementDAO.afficherAbonnement(1);

            Utilisateur u = new Utilisateur("agharbi", "ayman", "76 rue etienne falconet",
                    "ayman", "ayman072@hotmail.fr", "Le Mans", r, 72100, "0640145910",
            1, ab);
            utilisateurDAO.creerUtilisateur(u);


            ArrayList<Role> liste_role = roleDAO.afficherRole();
            ArrayList<Utilisateur> liste_utilisateur = utilisateurDAO.afficherListeUtilisateur();

            for (Role role: liste_role) {
                System.out.println(role.toString());
            }
            for (Utilisateur utilisateur: liste_utilisateur) {
                System.out.println(utilisateur.toString());
            }

        } catch (SQLException throwables) {
            throwables.printStackTrace();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
*/
        this.getServletContext().getRequestDispatcher( "/WEB-INF/jsp/utilisateur.jsp" ).forward( request, response );
    }

    public void doPost( HttpServletRequest request, HttpServletResponse response ) throws IOException {

        response.sendRedirect("utilisateur");
    }
}
