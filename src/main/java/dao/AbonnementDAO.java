package dao;

import beans.Abonnement;
import beans.ConnexionBDD;

import java.io.IOException;
import java.sql.SQLException;

public class AbonnementDAO {
    public static void creerAbonnement(Abonnement abonnement) throws SQLException, IOException, ClassNotFoundException {
        ConnexionBDD.connexion();
    }

    public static void modifierAbonnement(Abonnement abonnement) throws SQLException, IOException, ClassNotFoundException {
        ConnexionBDD.connexion();
    }

    public static void archiverAbonnement(Abonnement abonnement) throws SQLException, IOException, ClassNotFoundException {
        ConnexionBDD.connexion();
    }
}
