package beans;

import java.util.Date;

public class Livre {
    private int id_livre;
    private int id_etat;
    private String titre_livre;
    private String auteur_livre;
    private Date date_livre;

    public int getId_livre() {
        return id_livre;
    }

    public void setId_livre(int id_livre) {
        this.id_livre = id_livre;
    }

    public int getId_etat() {
        return id_etat;
    }

    public void setId_etat(int id_etat) {
        this.id_etat = id_etat;
    }

    public String getTitre_livre() {
        return titre_livre;
    }

    public void setTitre_livre(String titre_livre) {
        this.titre_livre = titre_livre;
    }

    public String getAuteur_livre() {
        return auteur_livre;
    }

    public void setAuteur_livre(String auteur_livre) {
        this.auteur_livre = auteur_livre;
    }

    public Date getDate_livre() {
        return date_livre;
    }

    public void setDate_livre(Date date_livre) {
        this.date_livre = date_livre;
    }
}
