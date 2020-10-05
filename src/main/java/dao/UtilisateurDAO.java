package dao;

import beans.ConnexionBDD;
import beans.Utilisateur;

import java.io.IOException;
import java.sql.*;
import java.util.ArrayList;

public class UtilisateurDAO {

    public void creerUtilisateur(Utilisateur utilisateur) throws SQLException, IOException, ClassNotFoundException {

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

    public static Utilisateur getByIdUtilisateur(int id_utilisateur) throws SQLException, IOException, ClassNotFoundException {

        Utilisateur utilisateur = new Utilisateur();

        String query = "SELECT * FROM utilisateur where utilisateur.id_utilisateur = "+id_utilisateur;
        Statement st = ConnexionBDD.connexion().createStatement();
        ResultSet rs = st.executeQuery(query);

        while (rs.next())
        {
            utilisateur.setId_utilisateur(utilisateur.getId_utilisateur());
        }
        ConnexionBDD.connexion().close();

        return utilisateur;

    }

}
