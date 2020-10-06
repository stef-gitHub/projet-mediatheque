package dao;

import beans.Abonnement;
import beans.ConnexionBDD;
import beans.Utilisateur;

import java.io.IOException;
import java.sql.*;
import java.util.ArrayList;

public class AbonnementDAO {

    public static int creerAbonnement(Abonnement abonnement) throws SQLException, IOException, ClassNotFoundException {
        Connection con = ConnexionBDD.connexion();

        String query = "insert into abonnement(numero_abonne, penalite, date_souscription" +
                ") VALUES (?, ?, ?)";
        PreparedStatement ps = con.prepareStatement(query,Statement.RETURN_GENERATED_KEYS);
        ps.setString(1, abonnement.getNumero_abonne());
        ps.setFloat(2, abonnement.getPenalite());
        ps.setString(3, abonnement.getDate_souscription());

        int affectedRows = ps.executeUpdate();

        if (affectedRows == 0) {
            throw new SQLException("Creating user failed, no rows affected.");
        }

        try (ResultSet generatedKeys = ps.getGeneratedKeys()) {
            if (generatedKeys.next()) {
                return generatedKeys.getInt(1);
            }
            else {
                throw new SQLException("Creating user failed, no ID obtained.");
            }
        }
    }

    public static void modifierPenalite(Abonnement abonnement) throws SQLException, IOException, ClassNotFoundException {
        Connection con = ConnexionBDD.connexion();

        String query = "update abonnement set penalite = ? where id_abonnement = ?";
        PreparedStatement ps = con.prepareStatement(query);
        ps.setFloat(1, abonnement.getPenalite());
        ps.setInt(2, abonnement.getId_abonnement());

        int n = ps.executeUpdate();
    }

    public static Abonnement afficherAbonnement(int id) throws SQLException, IOException, ClassNotFoundException {
        Connection con = ConnexionBDD.connexion();

        String query = "select * from abonnement where id_abonnement = ?";
        PreparedStatement ps = con.prepareStatement(query);
        ps.setInt(1, id);
        ResultSet rs = ps.executeQuery();

        Abonnement abonnement = new Abonnement();
        while (rs.next()) {
            abonnement.setId_abonnement(rs.getInt("id_abonnement"));
            abonnement.setNumero_abonne(rs.getString("numero_abonne"));
            abonnement.setDate_souscription(rs.getString("date_souscription"));
            abonnement.setPenalite(rs.getFloat("penalite"));
        }

        return abonnement;
    }

    public static ArrayList<Abonnement> afficherAbonnement(Utilisateur utilisateur) throws SQLException, IOException, ClassNotFoundException {
        Connection con = ConnexionBDD.connexion();

        String query = "select * from abonnement where numero_abonne = ?";
        PreparedStatement ps = con.prepareStatement(query);
        ps.setString(1, utilisateur.getAbonnement().getNumero_abonne());
        ResultSet rs = ps.executeQuery();

        ArrayList<Abonnement> la = new ArrayList();
        while (rs.next()) {
            Abonnement abonnement = new Abonnement();
            abonnement.setId_abonnement(rs.getInt("id_abonnement"));
            abonnement.setNumero_abonne(rs.getString("numero_abonne"));
            abonnement.setDate_souscription(rs.getString("date_souscription"));
            abonnement.setPenalite(rs.getFloat("penalite"));
            la.add(abonnement);
        }

        return la;
    }

}
