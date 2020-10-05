package servlet;

import beans.Emprunt;
import beans.Support;
import beans.Utilisateur;
import dao.EmpruntDAO;
import dao.SupportDAO;

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

        response.sendRedirect("emprunt");
    }
}