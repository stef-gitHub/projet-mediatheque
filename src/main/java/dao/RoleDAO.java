package dao;

import beans.ConnexionBDD;
import beans.Emprunt;
import beans.Role;
import beans.Utilisateur;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class RoleDAO {

    // Afficher le role d'un utilisateur par son id
    public static Role afficherRole(int id) throws SQLException, IOException, ClassNotFoundException {
        Connection con = ConnexionBDD.connexion();

        String query = "select * from role where id_role = ?";
        PreparedStatement ps = con.prepareStatement(query);
        ps.setInt(1, id);
        ResultSet rs = ps.executeQuery();

        Role role = new Role();
        while (rs.next()) {
            role.setId_role(rs.getInt("id_role"));
            role.setLibelle_role(rs.getString("libelle_role"));
        }

        return role;
    }

    // Afficher tous les rôles
    public static ArrayList<Role> afficherRole() throws SQLException, IOException, ClassNotFoundException {
        Connection con = ConnexionBDD.connexion();

        String query = "select * from role";
        PreparedStatement ps = con.prepareStatement(query);
        ResultSet rs = ps.executeQuery();

        ArrayList<Role> lr = new ArrayList<>();
        while (rs.next()) {
            Role role = new Role();
            role.setId_role(rs.getInt("id_role"));
            role.setLibelle_role(rs.getString("libelle_role"));
            lr.add(role);
        }

        return lr;
    }
}
