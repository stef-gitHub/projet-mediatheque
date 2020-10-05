package beans;

import java.util.Date;

public class Emprunt {

    private int id_emprunt;
    private Utilisateur id_utilisateur;
    private Support id_support;
    private Date date_debut;
    private Date date_fin;
    private Date date_rendu;

    public Emprunt(Date date_debut, Date date_fin, Date date_rendu) {
        this.date_debut = date_debut;
        this.date_fin = date_fin;
        this.date_rendu = date_rendu;
    }

    public int getId_emprunt() {
        return id_emprunt;
    }

    public void setId_emprunt(int id_emprunt) {
        this.id_emprunt = id_emprunt;
    }

    public Utilisateur getId_utilisateur() {
        return id_utilisateur;
    }

    public void setId_utilisateur(Utilisateur id_utilisateur) {
        this.id_utilisateur = id_utilisateur;
    }

    public Support getId_support() {
        return id_support;
    }

    public void setId_support(Support id_support) {
        this.id_support = id_support;
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
