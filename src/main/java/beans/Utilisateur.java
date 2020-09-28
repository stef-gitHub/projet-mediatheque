package beans;

import java.util.Date;

public class Utilisateur extends Personne {

    private int id_utilisateur;
    private Date date_souscription;
    private float penalite;
    private boolean isActif;

    public int getId_utilisateur() {
        return id_utilisateur;
    }

    public void setId_utilisateur(int id_utilisateur) {
        this.id_utilisateur = id_utilisateur;
    }

    public Date getDate_souscription() {
        return date_souscription;
    }

    public void setDate_souscription(Date date_souscription) {
        this.date_souscription = date_souscription;
    }

    public float getPenalite() {
        return penalite;
    }

    public void setPenalite(float penalite) {
        this.penalite = penalite;
    }

    public boolean isActif() {
        return isActif;
    }

    public void setActif(boolean actif) {
        isActif = actif;
    }
}
