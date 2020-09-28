package beans;

import java.util.Date;

public class Emprunt {

    private int id_emprunt;
    private int id_utilisateur;
    private int id_livre;
    private int id_digital;
    private Date date_debut;
    private Date date_fin;
    private Date date_rendu;

    public int getId_emprunt() {
        return id_emprunt;
    }

    public void setId_emprunt(int id_emprunt) {
        this.id_emprunt = id_emprunt;
    }

    public int getId_utilisateur() {
        return id_utilisateur;
    }

    public void setId_utilisateur(int id_utilisateur) {
        this.id_utilisateur = id_utilisateur;
    }

    public int getId_livre() {
        return id_livre;
    }

    public void setId_livre(int id_livre) {
        this.id_livre = id_livre;
    }

    public int getId_digital() {
        return id_digital;
    }

    public void setId_digital(int id_digital) {
        this.id_digital = id_digital;
    }

    public Date getDate_debut() {
        return date_debut;
    }

    public void setDate_debut(Date date_debut) {
        this.date_debut = date_debut;
    }

    public Date getDate_fin() {
        return date_fin;
    }

    public void setDate_fin(Date date_fin) {
        this.date_fin = date_fin;
    }

    public Date getDate_rendu() {
        return date_rendu;
    }

    public void setDate_rendu(Date date_rendu) {
        this.date_rendu = date_rendu;
    }
}
