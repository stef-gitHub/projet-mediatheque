package dao;

import beans.ConnexionBDD;
import beans.Digital;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;

public class DigitalDAO {

    public static void creerDigital(Digital digital) throws SQLException, IOException, ClassNotFoundException {
        ConnexionBDD.connexion();
    }

    public static void modifierDigital(Digital digital) throws SQLException, IOException, ClassNotFoundException {
        ConnexionBDD.connexion();
    }

    public static void archiverDigital(Digital digital) throws SQLException, IOException, ClassNotFoundException {
        ConnexionBDD.connexion();
    }

    public static ArrayList<Digital> afficherListeDigital() throws SQLException, IOException, ClassNotFoundException {
        ConnexionBDD.connexion();

        return null;
    }
}
