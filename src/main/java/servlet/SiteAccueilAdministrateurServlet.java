package servlet;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

public class SiteAccueilAdministrateurServlet extends HttpServlet {

        public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

            this.getServletContext().getRequestDispatcher( "/WEB-INF/jsp/siteAccueilAdministrateur.jsp" ).forward( request, response );
        }
}

