package servlet;

import beans.Support;
import dao.SupportDAO;
import dao.TypeDAO;
import dao.UtilisateurDAO;

import javax.json.Json;
import javax.json.JsonArray;
import javax.json.JsonObject;
import javax.json.stream.JsonLocation;
import javax.json.stream.JsonParser;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.math.BigDecimal;
import java.sql.SQLException;
import java.util.ArrayList;

public class EmpruntCreerServlet extends HttpServlet{

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        if(request.getParameter("demo") != null) {
            Integer id_type = Integer.valueOf(request.getParameter("demo"));
            System.out.println("afficherTypes : " + id_type);

            try {
                if(!SupportDAO.afficherSupportsFiltres(id_type).isEmpty()) {
                    String html = "";
                    for(Support s : SupportDAO.afficherSupportsFiltres(id_type)){
                        html += "<option style=\"white-space: pre\" value="+s.getId_support()+">"+ s.getAuteur() +"</option>";

                    }
                    session.setAttribute("supports", html);
                }else{
                    System.out.println("NULL");
                }
            } catch (SQLException | ClassNotFoundException throwables) {
                throwables.printStackTrace();
            }
        }else{
            System.out.println("NULLLLLLL");
        }
        try {
            request.setAttribute("abonnees", UtilisateurDAO.afficherAbonnee());
            request.setAttribute("types", TypeDAO.afficherType());





        } catch (SQLException | ClassNotFoundException throwables) {
            throwables.printStackTrace();
        }
        this.getServletContext().getRequestDispatcher( "/WEB-INF/jsp/creerEmprunt.jsp" ).forward( request, response );
    }
    public void doPost( HttpServletRequest request, HttpServletResponse response ) throws IOException {
        //Récupérer l'id type lors de la sélection du type dans la liste déroulante.
        //Integer id_type = Integer.valueOf(request.getParameter("demo_"));
        //System.out.println("afficherTypes : " + id_type);





        

       /* try {
            request.setAttribute("supports", SupportDAO.afficherSupportsFiltres(test));
        } catch (SQLException | ClassNotFoundException throwables) {
            throwables.printStackTrace();
        }*/

        /*try {
            if(request.getParameter("creerTitreLivre") != null) {
                Support support = new Support();
                support.setTitre(request.getParameter("creerTitreLivre"));
                support.setAuteur(request.getParameter("creerAuteurLivre"));
                support.setDate(request.getParameter("creerAnneeLivre"));
                support.setQuantite(Integer.parseInt(request.getParameter("creerQuantiteLivre")));
                support.setActif(1);
                support.setType(TypeDAO.getTypeById(1));
                SupportDAO.creerSupport(support);
            }*/
            //response.sendRedirect("emprunts");
       /* } catch (SQLException | ClassNotFoundException throwables) {
            throwables.printStackTrace();
        }*/
    }

    public int idType( HttpServletRequest request, HttpServletResponse response ) throws IOException{
        Integer id_type = Integer.valueOf(request.getParameter("demo_"));
        System.out.println("afficherTypes : " + id_type);
        return id_type;
    }
}