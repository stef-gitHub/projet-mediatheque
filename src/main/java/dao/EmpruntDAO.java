package dao;

import beans.*;

import java.io.IOException;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;


public class EmpruntDAO {

    /**
     * Affiche la liste des emprunts
     * */
    public static ArrayList<Emprunt> afficherEmprunts() throws SQLException, IOException, ClassNotFoundException {
        ArrayList<Emprunt> emprunts = new ArrayList<>();

        String query = "SELECT *, support.titre, utilisateur.nom, utilisateur.prenom " +
                "FROM emprunt, utilisateur, support " +
                "where emprunt.id_utilisateur = utilisateur.id_utilisateur " +
                "and support.id_support = emprunt.id_support and emprunt.actif = 1";
        Statement st = ConnexionBDD.connexion().createStatement();
        ResultSet rs = st.executeQuery(query);

        System.out.println(query);

        while (rs.next())
        {
            Emprunt emprunt = new Emprunt();
            Utilisateur utilisateur = new Utilisateur();
            Support support = new Support();

            int id_emprunt = rs.getInt("emprunt.id_emprunt");
            int id_utilisateur = rs.getInt("emprunt.id_utilisateur");
            int id_support = rs.getInt("emprunt.id_support");
            String date_debut = rs.getString("emprunt.date_debut");
            String date_fin = rs.getString("emprunt.date_fin");
            String titre = rs.getString("support.titre");
            String nom_utilisateur = rs.getString("utilisateur.nom");
            String prenom_utilisateur = rs.getString("utilisateur.prenom");

            utilisateur.setId_utilisateur(id_utilisateur);
            utilisateur.setNom(nom_utilisateur);
            utilisateur.setPrenom(prenom_utilisateur);

            support.setId_support(id_support);
            support.setTitre(titre);

            System.out.println(id_emprunt);

            emprunt.setId_emprunt(id_emprunt);
            emprunt.setUtilisateur(utilisateur);
            emprunt.setSupport(support);
            emprunt.setDate_debut(date_debut);
            emprunt.setDate_fin(date_fin);

            emprunts.add(emprunt);
        }
        System.out.println(emprunts);
        ConnexionBDD.connexion().close();

        return emprunts;
    }
    public static void creerEmprunt(Emprunt emprunt) throws SQLException, IOException, ClassNotFoundException {
        //ConnexionBDD.connexion();
        PreparedStatement preparedStatement = null;
        System.out.println("creerEmprunt");

        preparedStatement = ConnexionBDD.connexion().prepareStatement("INSERT INTO emprunt(id_utilisateur, id_support, date_debut, date_fin) VALUES(?, ?, ?, ?);");
        preparedStatement.setInt(1, emprunt.getUtilisateur().getId_utilisateur());
        preparedStatement.setInt(2, emprunt.getSupport().getId_support());
        preparedStatement.setString(3, emprunt.getDate_debut());
        preparedStatement.setString(4, emprunt.getDate_fin());

        preparedStatement.executeUpdate();
        System.out.println(emprunt);

        ConnexionBDD.connexion().close();
    }

    public static void modifierEmprunt(Emprunt emprunt) throws SQLException, IOException, ClassNotFoundException {
        PreparedStatement preparedStatement = null;
        System.out.println("Modifier emprunt");
        System.out.println("emprunt : " + emprunt.getId_emprunt());
        preparedStatement = ConnexionBDD.connexion().prepareStatement("UPDATE emprunt SET emprunt.date_debut=?, emprunt.date_fin=?  where id_emprunt =?;");
        preparedStatement.setString(1, emprunt.getDate_debut());
        preparedStatement.setString(2, emprunt.getDate_fin());
        preparedStatement.setInt(3, emprunt.getId_emprunt());
        preparedStatement.executeUpdate();

        ConnexionBDD.connexion().close();
    }

    public static void archiverEmprunt(Emprunt emprunt) throws SQLException, IOException, ClassNotFoundException {
        PreparedStatement preparedStatement = null;

        System.out.println("Archiver emprunt");
        preparedStatement = ConnexionBDD.connexion().prepareStatement("UPDATE emprunt SET emprunt.actif = 0  where emprunt.id_emprunt=?;");
        preparedStatement.setInt(1, emprunt.getId_emprunt());
        preparedStatement.executeUpdate();
        ConnexionBDD.connexion().close();
    }
}
