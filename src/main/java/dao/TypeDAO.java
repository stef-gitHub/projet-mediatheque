package dao;

import beans.ConnexionBDD;
import beans.Support;
import beans.Type;

import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

public class TypeDAO {

    // Afficher tous les types de supports ( livre, livre numérique, dvd , cd)
    public static ArrayList<Type> afficherType() throws SQLException, IOException, ClassNotFoundException {
        ArrayList<Type> types = new ArrayList<>();

        String query = "SELECT * FROM type";
        Statement st = ConnexionBDD.connexion().createStatement();
        ResultSet rs = st.executeQuery(query);

        System.out.println(query);

        while (rs.next())
        {
            Type unType = new Type();

            int id_type = rs.getInt("type.id_type");
            String libelle_type = rs.getString("type.libelle_type");


            System.out.println(id_type);

            unType.setId_type(id_type);
            unType.setLibelle_type(libelle_type);

            types.add(unType);
        }
        System.out.println(types);
        ConnexionBDD.connexion().close();

        return types;
    }

    // Récupérer un type par son id
    public static Type getTypeById(int id) throws SQLException, IOException, ClassNotFoundException {
        Type type = new Type();

        String query = "SELECT * FROM type where type.id_type = "+id;
        Statement st = ConnexionBDD.connexion().createStatement();
        ResultSet rs = st.executeQuery(query);

        while (rs.next())
        {
            type.setId_type(rs.getInt("type.id_type"));
            type.setLibelle_type(rs.getString("type.libelle_type"));
        }
        ConnexionBDD.connexion().close();

        return type;
    }
}
