package servlet;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class AdministrateurServlet extends HttpServlet{

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        this.getServletContext().getRequestDispatcher( "/WEB-INF/jsp/creerLivre.jsp" ).forward( request, response );
    }
    public void doPost( HttpServletRequest request, HttpServletResponse response ) throws IOException {

            response.sendRedirect("administrateur");
        }
}