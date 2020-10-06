package dao;

import beans.Abonnement;
import beans.ConnexionBDD;
import beans.Utilisateur;

import java.io.IOException;
import java.sql.*;
import java.util.ArrayList;

public class UtilisateurDAO {

    public static void creerUtilisateur(Utilisateur utilisateur) throws SQLException, IOException, ClassNotFoundException {

        AbonnementDAO abonnementDAO = new AbonnementDAO();
        int id_abonnement = abonnementDAO.creerAbonnement(utilisateur.getAbonnement());

        String query = "insert into utilisateur(nom, prenom, mdp, adresse, ville, code_postal, telephone, " +
                "mail, actif, id_abonnement, id_role) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
        PreparedStatement ps = ConnexionBDD.connexion().prepareStatement(query);
        ps.setString(1, utilisateur.getNom());
        ps.setString(2, utilisateur.getPrenom());
        ps.setString(3, utilisateur.getMdp());
        ps.setString(4, utilisateur.getAdresse());
        ps.setString(5, utilisateur.getVille());
        ps.setInt(6, utilisateur.getCode_postal());
        ps.setString(7, utilisateur.getNum_telephone());
        ps.setString(8, utilisateur.getEmail());
        ps.setInt(9, utilisateur.isActif());
        ps.setInt(10, id_abonnement);
        ps.setInt(11, utilisateur.getRole().getId_role());

        int n = ps.executeUpdate();
    }

    public static void modifierUtilisateur(Utilisateur utilisateur) throws SQLException, IOException, ClassNotFoundException {

        String query = "update utilisateur set nom = ?, prenom = ?, mdp = ?, adresse = ?, ville = ?, code_postal = ?, telephone = ?, " +
                "mail = ?, actif = ?, id_abonnement = ?, id_role = ? where id_utilisateur = ?";
        PreparedStatement ps = ConnexionBDD.connexion().prepareStatement(query);
        ps.setString(1, utilisateur.getNom());
        ps.setString(2, utilisateur.getPrenom());
        ps.setString(3, utilisateur.getMdp());
        ps.setString(4, utilisateur.getAdresse());
        ps.setString(5, utilisateur.getVille());
        ps.setInt(6, utilisateur.getCode_postal());
        ps.setString(7, utilisateur.getNum_telephone());
        ps.setString(8, utilisateur.getEmail());
        ps.setInt(9, utilisateur.isActif());
        ps.setInt(10, utilisateur.getAbonnement().getId_abonnement());
        ps.setInt(11, utilisateur.getRole().getId_role());
        ps.setInt(12, utilisateur.getId_utilisateur());

        int n = ps.executeUpdate();
    }

    public static void archiverUtilisateur(int id_utilisateur) throws SQLException, IOException, ClassNotFoundException {

        String query = "update utilisateur set actif = 0 where id_utilisateur = ?";
        PreparedStatement ps = ConnexionBDD.connexion().prepareStatement(query);
        ps.setInt(1, id_utilisateur);

        int n = ps.executeUpdate();
    }

    public static ArrayList<Utilisateur> afficherListeUtilisateur() throws SQLException, IOException, ClassNotFoundException {

        String query = "select * from utilisateur where actif = 1";
        PreparedStatement ps = ConnexionBDD.connexion().prepareStatement(query);

        ResultSet rs = ps.executeQuery();
        ArrayList<Utilisateur> lu = new ArrayList();

        AbonnementDAO abonnementDAO = new AbonnementDAO();
        RoleDAO roleDAO = new RoleDAO();

        while (rs.next()) {
            Utilisateur utilisateur = new Utilisateur();
            utilisateur.setNom(rs.getString("nom"));
            utilisateur.setPrenom(rs.getString("prenom"));
            utilisateur.setMdp(rs.getString("mdp"));
            utilisateur.setAdresse(rs.getString("adresse"));
            utilisateur.setVille(rs.getString("ville"));
            utilisateur.setCode_postal(rs.getInt("code_postal"));
            utilisateur.setNum_telephone(rs.getString("telephone"));
            utilisateur.setEmail(rs.getString("mail"));
            utilisateur.setActif(rs.getInt("actif"));
            utilisateur.setAbonnement(abonnementDAO.afficherAbonnement(rs.getInt("id_abonnement")));
            utilisateur.setRole(roleDAO.afficherRole(rs.getInt("id_role")));
            utilisateur.setId_utilisateur(rs.getInt("id_utilisateur"));
            lu.add(utilisateur);
        }

        return lu;
    }

    public static Utilisateur afficherUtilisateur(int id) throws SQLException, IOException, ClassNotFoundException {

        String query = "select * from utilisateur where id_utilisateur = ?";
        PreparedStatement ps = ConnexionBDD.connexion().prepareStatement(query);
        ps.setInt(1, id);
        ResultSet rs = ps.executeQuery();

        AbonnementDAO abonnementDAO = new AbonnementDAO();
        RoleDAO roleDAO = new RoleDAO();

        Utilisateur utilisateur = new Utilisateur();
        while (rs.next()) {
            utilisateur.setNom(rs.getString("nom"));
            utilisateur.setPrenom(rs.getString("prenom"));
            utilisateur.setMdp(rs.getString("mdp"));
            utilisateur.setAdresse(rs.getString("adresse"));
            utilisateur.setVille(rs.getString("ville"));
            utilisateur.setCode_postal(rs.getInt("code_postal"));
            utilisateur.setNum_telephone(rs.getString("telephone"));
            utilisateur.setEmail(rs.getString("mail"));
            utilisateur.setActif(rs.getInt("actif"));
            utilisateur.setAbonnement(abonnementDAO.afficherAbonnement(rs.getInt("id_abonnement")));
            utilisateur.setRole(roleDAO.afficherRole(rs.getInt("id_role")));
            utilisateur.setId_utilisateur(rs.getInt("id_utilisateur"));
        }
 
        return utilisateur;
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
