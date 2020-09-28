package dao;

import beans.*;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;

public class EmpruntDAO {

    public static void creerEmprunt(Livre livre, Digital digital , Utilisateur utilisateur) throws SQLException, IOException, ClassNotFoundException {
        ConnexionBDD.connexion();
    }

    public static void modifierEmprunt(Emprunt emprunt) throws SQLException, IOException, ClassNotFoundException {
        ConnexionBDD.connexion();

    }

    public static void archiverEmprunt(Emprunt emprunt) throws SQLException, IOException, ClassNotFoundException {
        ConnexionBDD.connexion();
    }

    public static ArrayList<Emprunt> afficherListeEmprunt() throws SQLException, IOException, ClassNotFoundException {
        ConnexionBDD.connexion();
        return null;
    }

}
