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

public class CdCreerServlet extends HttpServlet {

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        this.getServletContext().getRequestDispatcher( "/WEB-INF/jsp/creerCD.jsp" ).forward( request, response );
    }
    public void doPost( HttpServletRequest request, HttpServletResponse response ) throws IOException {
        try {
            if(request.getParameter("creerTitreCd") != null) {
                Support support = new Support();
                support.setTitre(request.getParameter("creerTitreCd"));
                support.setAuteur(request.getParameter("creerAuteurCd"));
                support.setDate(request.getParameter("creerAnneeCd"));
                support.setQuantite(Integer.parseInt(request.getParameter("creerQuantiteCd")));
                support.setActif(1);
                support.setType(TypeDAO.getTypeById(2));
                SupportDAO.creerSupport(support);
            }
            response.sendRedirect("cd");
        } catch (SQLException | ClassNotFoundException throwables) {
            throwables.printStackTrace();
        }
    }
}
