package dao;

import beans.ConnexionBDD;
import beans.Role;
import beans.Support;
import beans.Type;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Date;
import java.sql.*;

public class SupportDAO {

    /**
     *
     * */
    public static ArrayList<Support> afficherSupports() throws SQLException, IOException, ClassNotFoundException {
        ArrayList<Support> supports = new ArrayList<>();

        String query = "SELECT * FROM support, type where support.id_type = type.id_type";
        Statement st = ConnexionBDD.connexion().createStatement();
        ResultSet rs = st.executeQuery(query);

        System.out.println(query);

        while (rs.next())
        {
            Support unSupport = new Support();
            Type unType = new Type();

            int id_support = rs.getInt("support.id_support");
            String titre = rs.getString("support.titre");
            String auteur = rs.getString("support.auteur");
            String date = rs.getString("support.date");
            int quantite = rs.getInt("support.quantite");
            int id_type = rs.getInt("support.id_type");
            String libelle_type = rs.getString("type.libelle_type");

            unType.setId_type(id_type);
            unType.setLibelle_type(libelle_type);

            System.out.println(id_support);

            unSupport.setId_support(id_support);
            unSupport.setAuteur(auteur);
            unSupport.setTitre(titre);
            unSupport.setDate(date);
            unSupport.setQuantite(quantite);
            unSupport.setType(unType);

            supports.add(unSupport);
        }
        System.out.println(supports);
        ConnexionBDD.connexion().close();

        return supports;
    }

    public static ArrayList<Support> afficherSupportsFiltres(int idType) throws SQLException, IOException, ClassNotFoundException {
        ArrayList<Support> supports = new ArrayList<>();

        String query = "SELECT * FROM support inner join type on support.id_type = type.id_type where support.id_type = " + idType;

        System.out.println(query);

        Statement st = ConnexionBDD.connexion().createStatement();
        ResultSet rs = st.executeQuery(query);

        System.out.println(query);

        while (rs.next())
        {
            Support unSupport = new Support();
            Type unType = new Type();

            int id_support = rs.getInt("support.id_support");
            String titre = rs.getString("support.titre");
            String auteur = rs.getString("support.auteur");
            String date = rs.getString("support.date");
            int quantite = rs.getInt("support.quantite");
            int id_type = rs.getInt("support.id_type");
            String libelle_type = rs.getString("type.libelle_type");

            unType.setId_type(id_type);
            unType.setLibelle_type(libelle_type);

            System.out.println(id_support);

            unSupport.setId_support(id_support);
            unSupport.setAuteur(auteur);
            unSupport.setTitre(titre);
            unSupport.setDate(date);
            unSupport.setQuantite(quantite);
            unSupport.setType(unType);

            supports.add(unSupport);
        }
        System.out.println(supports);
        ConnexionBDD.connexion().close();

        return supports;
    }


    public static void creerSupport(Support support) throws SQLException, IOException, ClassNotFoundException {

        PreparedStatement preparedStatement = null;
        System.out.println("creerSupport");

        preparedStatement = ConnexionBDD.connexion().prepareStatement("INSERT INTO support(titre, auteur, date, quantite, id_type) VALUES(?, ?, ?, ?, ?);");
        preparedStatement.setString(1, support.getTitre());
        preparedStatement.setString(2, support.getAuteur());
        preparedStatement.setString(3, support.getDate());
        preparedStatement.setInt(4, support.getQuantite());
        preparedStatement.setInt(5, support.getType().getId_type());

        preparedStatement.executeUpdate();

        ConnexionBDD.connexion().close();
    }
/**
 * Modifier un support
 * */
    public static void modifierSupport(Support support) throws SQLException, IOException, ClassNotFoundException {
        PreparedStatement preparedStatement = null;

        System.out.println("Modifier Support");
        preparedStatement = ConnexionBDD.connexion().prepareStatement("UPDATE support SET support.titre=?, support.auteur=?, support.date=?, support.quantite=?, support.id_type=?  where support.id_support=?;");
        preparedStatement.setString(1, support.getTitre());
        preparedStatement.setString(2, support.getAuteur());
        preparedStatement.setString(3, support.getDate());
        preparedStatement.setInt(4, support.getQuantite());
        preparedStatement.setInt(5, support.getType().getId_type());
        preparedStatement.setInt(6, support.getId_support());
        preparedStatement.executeUpdate();
        ConnexionBDD.connexion().close();
    }

    public static void archiverSupport(Support Support) throws SQLException, IOException, ClassNotFoundException {
        ConnexionBDD.connexion();
    }
}
