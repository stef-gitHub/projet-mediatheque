package dao;

import beans.Administrateur;
import beans.ConnexionBDD;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;

public class AdministrateurDAO {

    public static void creerAdministrateur(Administrateur administrateur) throws SQLException, IOException, ClassNotFoundException {
        ConnexionBDD.connexion();
    }

    public static void modifierAdministrateur(Administrateur administrateur) throws SQLException, IOException, ClassNotFoundException {
        ConnexionBDD.connexion();
    }

    public static void archiverAdministrateur(Administrateur administrateur) throws SQLException, IOException, ClassNotFoundException {
        ConnexionBDD.connexion();
    }

    public static ArrayList<Administrateur> afficherListeAdministrateur() throws SQLException, IOException, ClassNotFoundException {
        ConnexionBDD.connexion();

        return null;
    }
}
