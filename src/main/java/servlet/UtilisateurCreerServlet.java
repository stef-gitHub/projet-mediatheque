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
        RoleDAO roleDAO = new RoleDAO();

        try {
            request.setAttribute("roles", roleDAO.afficherRole());
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
        this.getServletContext().getRequestDispatcher( "/WEB-INF/jsp/creerUtilisateur.jsp" ).forward( request, response );
    }

    public void doPost( HttpServletRequest request, HttpServletResponse response ) throws IOException {
        RoleDAO roleDAO = new RoleDAO();
        UtilisateurDAO utilisateurDAO = new UtilisateurDAO();

        try {
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
                u.setRole(roleDAO.afficherRole(Integer.parseInt(request.getParameter("roleUtilisateurCreer"))));

                if(u.getRole().getId_role() == 2){
                    Abonnement a = new Abonnement();
                    a.setNumero_abonne(a.creerNumABonne(u.getNom(), u.getPrenom()));
                    a.setPenalite(0);
                    SimpleDateFormat formatter = new SimpleDateFormat("dd-MM-yyyy");
                    Date date = new Date();
                    a.setDate_souscription(formatter.format(date));
                    u.setAbonnement(a);
                }

                utilisateurDAO.creerUtilisateur(u);

            }
        } catch (SQLException | ClassNotFoundException throwables) {
            throwables.printStackTrace();
        }

        response.sendRedirect("utilisateur");
    }
}
