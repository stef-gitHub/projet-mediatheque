package dao;

import beans.ConnexionBDD;
import beans.Emprunt;
import beans.Role;

import java.io.IOException;
import java.sql.SQLException;

public class RoleDAO {
    public static void creerRole(Role role) throws SQLException, IOException, ClassNotFoundException {
        ConnexionBDD.connexion();
    }

    public static void modifierRole(Role role) throws SQLException, IOException, ClassNotFoundException {
        ConnexionBDD.connexion();
    }

    public static void archiverRole(Role role) throws SQLException, IOException, ClassNotFoundException {
        ConnexionBDD.connexion();
    }
}
