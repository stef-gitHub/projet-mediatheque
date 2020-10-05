package dao;

import beans.ConnexionBDD;
import beans.Role;
import beans.Support;

import java.io.IOException;
import java.sql.SQLException;

public class SupportDAO {
    public static void creerSupport(Support support) throws SQLException, IOException, ClassNotFoundException {
        ConnexionBDD.connexion();
    }

    public static void modifierSupport(Support support) throws SQLException, IOException, ClassNotFoundException {
        ConnexionBDD.connexion();
    }

    public static void archiverSupport(Support Support) throws SQLException, IOException, ClassNotFoundException {
        ConnexionBDD.connexion();
    }
}
