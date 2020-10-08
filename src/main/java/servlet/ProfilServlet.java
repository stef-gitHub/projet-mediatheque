package servlet;

import beans.Utilisateur;
import dao.UtilisateurDAO;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.SQLException;

public class ProfilServlet extends HttpServlet {

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        try {
            HttpSession session = request.getSession();
            int id_utilisateur = (int) session.getAttribute("id_utilisateur");
            request.setAttribute("utilisateur", UtilisateurDAO.afficherUtilisateur(id_utilisateur));
        } catch (SQLException | ClassNotFoundException throwables) {
            throwables.printStackTrace();
        }

        this.getServletContext().getRequestDispatcher( "/WEB-INF/jsp/profil.jsp" ).forward( request, response );
    }

    public void doPost( HttpServletRequest request, HttpServletResponse response ) throws IOException {

        try {
            if(request.getParameter("utilisateurProfil") != null){

                HttpSession session = request.getSession();
                int id_utilisateur = (int) session.getAttribute("id_utilisateur");
                Utilisateur u = UtilisateurDAO.afficherUtilisateur(id_utilisateur);

                if(request.getParameter("mdpUtilisateurProfil") != ""){
                    u.setMdp(request.getParameter("mdpUtilisateurProfil"));
                }
                u.setAdresse(request.getParameter("adresseUtilisateurProfil"));
                u.setVille(request.getParameter("villeEleveProfil"));
                u.setCode_postal(Integer.parseInt(request.getParameter("cpUtilisateurModifier")));
                u.setNum_telephone(request.getParameter("telUtilisateurProfil"));
                u.setEmail(request.getParameter("mailUtilisateurProfil"));

                UtilisateurDAO.modifierUtilisateur(u);
            }
        } catch (SQLException | ClassNotFoundException throwables) {
            throwables.printStackTrace();
        }
        response.sendRedirect("profil");
    }
}
