package servlet;

import beans.Support;
import beans.Type;
import dao.SupportDAO;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class LivreSerlvet extends HttpServlet {

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            SupportDAO.afficherSupports();
            SupportDAO.afficherSupportsFiltres(1);
            Type type = new Type();
            type.setId_type(1);

            Support support = new Support("Balalal", "Chiouioui", "20/01/2020" , 11, type);
            SupportDAO.creerSupport(support);

            SupportDAO.modifierSupport(support);


        } catch (SQLException | ClassNotFoundException throwables) {
            throwables.printStackTrace();
        }


        this.getServletContext().getRequestDispatcher( "/WEB-INF/jsp/livre.jsp" ).forward( request, response );
    }

    public void doPost( HttpServletRequest request, HttpServletResponse response ) throws IOException {

        response.sendRedirect("livre");
    }
}
