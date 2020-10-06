package dao;

import beans.ConnexionBDD;
import beans.Support;
import beans.Utilisateur;

import java.io.IOException;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class AuthentificationDAO {
    public static Utilisateur SeConnecter(Utilisateur utilisateur) throws SQLException, IOException, ClassNotFoundException {

        String query = "select * from utilisateur where mail = ? and mdp = ? ";
        PreparedStatement ps = ConnexionBDD.connexion().prepareStatement(query);
        ps.setString(1, utilisateur.getEmail());
        ps.setString(2, utilisateur.getMdp());
        ResultSet rs = ps.executeQuery();

        if( rs != null ){
            Utilisateur u = new Utilisateur();
            u.setId_role(RoleDAO.afficherRole(rs.getInt("id_role")));
            u = UtilisateurDAO.afficherUtilisateur(rs.getInt("id_utilisateur"));
            return u;
        }
        else{
            Utilisateur u = new Utilisateur();
            return u;
        }
    }
}
