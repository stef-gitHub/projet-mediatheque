package dao;

import beans.Abonnement;
import beans.ConnexionBDD;
import beans.Emprunt;

import java.io.IOException;
import java.sql.SQLException;

public class EmpruntDAO {
    public static void creerEmprunt(Emprunt emprunt) throws SQLException, IOException, ClassNotFoundException {
        ConnexionBDD.connexion();
    }

    public static void modifierEmprunt(Emprunt emprunt) throws SQLException, IOException, ClassNotFoundException {
        ConnexionBDD.connexion();
    }

    public static void archiverEmprunt(Emprunt emprunt) throws SQLException, IOException, ClassNotFoundException {
        ConnexionBDD.connexion();
    }
}
