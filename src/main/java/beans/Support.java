package beans;

import java.util.Date;

public class Support {
    private int id_support;
    private String titre;
    private String auteur;
    private String date;
    private int quantite;
    private Type type;

    public Support() {
    }

    public Support(String titre, String auteur, String date, int quantite) {
        this.titre = titre;
        this.auteur = auteur;
        this.date = date;
        this.quantite = quantite;
    }

    public Support(String titre, String auteur, String date, int quantite, Type type) {
        this.titre = titre;
        this.auteur = auteur;
        this.date = date;
        this.quantite = quantite;
        this.type = type;
    }

    public int getId_support() {
        return id_support;
    }

    public void setId_support(int id_support) {
        this.id_support = id_support;
    }

    public String getTitre() {
        return titre;
    }

    public void setTitre(String titre) {
        this.titre = titre;
    }

    public String getAuteur() {
        return auteur;
    }

    public void setAuteur(String auteur) {
        this.auteur = auteur;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public Integer getQuantite() {
        return quantite;
    }

    public void setQuantite(int quantite) {
        this.quantite = quantite;
    }

    public Type getType() {
        return type;
    }

    public void setType(Type type) {
        this.type = type;
    }
}
