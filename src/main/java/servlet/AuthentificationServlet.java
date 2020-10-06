package servlet;

import beans.Utilisateur;
import dao.AuthentificationDAO;

import java.io.IOException;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class AuthentificationServlet extends HttpServlet {

    public void doGet( HttpServletRequest request, HttpServletResponse response ) throws ServletException, IOException{

        this.getServletContext().getRequestDispatcher( "/WEB-INF/jsp/authentification.jsp" ).forward( request, response );
    }
    /**
     * Connexion
     */
    public void doPost(HttpServletRequest request,
                          HttpServletResponse response) throws ServletException, IOException {

        HttpSession session = request.getSession();
        Utilisateur utilisateur = new Utilisateur();

        if (request.getParameter("login") != null){

            String login = request.getParameter("login");
            String mdp  = request.getParameter("mdp");
            utilisateur.setEmail(login);
            utilisateur.setMdp(mdp);
            try {
                utilisateur = AuthentificationDAO.SeConnecter(utilisateur);
            } catch (SQLException | ClassNotFoundException throwables) {
                throwables.printStackTrace();
            }
            if (utilisateur.getRole() != null){

                if(utilisateur.getRole().getId_role() == 1){
                    session.setAttribute("login", login);
                    response.sendRedirect("accueil_administrateur");
                }
                else {
                    session.setAttribute("login", login);
                    response.sendRedirect("accueil_utilisateur");
                }
            }
            else{
                response.sendRedirect("authentification");
                System.out.println("login et/ou mot de passe invalide");
            }
        }
    }
}
