package dao;

import beans.ConnexionBDD;
import beans.Utilisateur;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;

public class UtilisateurDAO {

    public static void creerUtilisateur(Utilisateur utilisateur) throws SQLException, IOException, ClassNotFoundException {
        ConnexionBDD.connexion();
    }

    public static void modifierUtilisateur(Utilisateur utilisateur) throws SQLException, IOException, ClassNotFoundException {
        ConnexionBDD.connexion();
    }

    public static void archiverUtilisateur(Utilisateur utilisateur) throws SQLException, IOException, ClassNotFoundException {
        ConnexionBDD.connexion();
    }

    public static ArrayList<Utilisateur> afficherListeUtilisateur() throws SQLException, IOException, ClassNotFoundException {
        ConnexionBDD.connexion();
        return null;
    }

    public static void creerPenalite(float penalite, Utilisateur utilisateur) throws SQLException, IOException, ClassNotFoundException {
        ConnexionBDD.connexion();
    }

}
