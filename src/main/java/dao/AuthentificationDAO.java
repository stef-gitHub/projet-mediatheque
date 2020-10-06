package dao;

import beans.ConnexionBDD;
import beans.Utilisateur;

import java.io.IOException;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class AuthentificationDAO {

    // connexion de l'utilisateur en cherchant son rôle
    public static Utilisateur SeConnecter(Utilisateur utilisateur) throws SQLException, IOException, ClassNotFoundException {

        String query = "select * from utilisateur where mail = ? and mdp = ? ";
        PreparedStatement ps = ConnexionBDD.connexion().prepareStatement(query);
        ps.setString(1, utilisateur.getEmail());
        ps.setString(2, utilisateur.getMdp());
        ResultSet rs = ps.executeQuery();

        if(rs.next()){
            Utilisateur u = new Utilisateur();
            u.setRole(RoleDAO.afficherRole(rs.getInt("id_role")));
            u.setId_utilisateur(rs.getInt("id_utilisateur"));
            u.setPrenom(rs.getString("prenom"));
            u.setNom(rs.getString("nom"));
            return u;
        }
        else{
            Utilisateur u = new Utilisateur();
            return u;
        }
    }
}
