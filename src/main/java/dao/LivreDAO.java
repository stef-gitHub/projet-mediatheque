package dao;

import beans.ConnexionBDD;
import beans.Livre;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;

public class LivreDAO {

    public static void creerLivre(Livre livre) throws SQLException, IOException, ClassNotFoundException {
        ConnexionBDD.connexion();
    }

    public static void modifierLivre(Livre livre) throws SQLException, IOException, ClassNotFoundException {
        ConnexionBDD.connexion();
    }

    public static void archiverLivre(Livre livre) throws SQLException, IOException, ClassNotFoundException {
        ConnexionBDD.connexion();
    }

    public static ArrayList<Livre> afficherListeLivre() throws SQLException, IOException, ClassNotFoundException {
        ConnexionBDD.connexion();
        return null;
    }
}
