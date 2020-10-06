package servlet;

import beans.Abonnement;
import beans.Support;
import beans.Utilisateur;
import dao.*;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class UtilisateurCreerServlet  extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        try {
            request.setAttribute("roles", RoleDAO.afficherRole());
        } catch (SQLException | ClassNotFoundException throwables) {
            throwables.printStackTrace();
        }
        this.getServletContext().getRequestDispatcher( "/WEB-INF/jsp/creerUtilisateur.jsp" ).forward( request, response );
    }

    public void doPost( HttpServletRequest request, HttpServletResponse response ) throws IOException {

        try {

            // Créer un utilisateur via le formulaure dans creerUtilisateur.jsp
            if(request.getParameter("creerUtilisateur") != null) {

                Utilisateur u = new Utilisateur();
                u.setNom(request.getParameter("nomUtilisateurCreer"));
                u.setPrenom(request.getParameter("prenomUtilisateurCreer"));
                u.setMdp(request.getParameter("creerMdpUtilisateur"));
                u.setAdresse(request.getParameter("adresseUtilisateurCreer"));
                u.setVille(request.getParameter("villeEleveCreate"));
                u.setCode_postal(Integer.parseInt(request.getParameter("cpUtilisateurCreer")));
                u.setNum_telephone(request.getParameter("telUtilisateurCreer"));
                u.setEmail(request.getParameter("mailUtilisateurCreer"));
                u.setActif(1);

                Abonnement a = new Abonnement();
                a.setNumero_abonne(a.creerNumABonne(u.getNom(), u.getPrenom()));
                a.setPenalite(0);
                SimpleDateFormat formatter = new SimpleDateFormat("dd-MM-yyyy");
                Date date = new Date();
                a.setDate_souscription(formatter.format(date));

                u.setAbonnement(a);
                u.setRole(RoleDAO.afficherRole(Integer.parseInt(request.getParameter("roleUtilisateurCreer"))));

                UtilisateurDAO.creerUtilisateur(u);

            }
        } catch (SQLException | ClassNotFoundException throwables) {
            throwables.printStackTrace();
        }

        response.sendRedirect("utilisateur");
    }
}
