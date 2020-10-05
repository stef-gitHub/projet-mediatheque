package beans;

import java.util.Date;

public class Abonnement {

    private int id_abonnement;
    private int numero_abonne;
    private float credit;
    private float penalite;
    private Date date_souscription;

    public Abonnement(int numero_abonne, float credit, float penalite, Date date_souscription) {
        this.numero_abonne = numero_abonne;
        this.credit = credit;
        this.penalite = penalite;
        this.date_souscription = date_souscription;
    }

    public int getId_abonnement() {
        return id_abonnement;
    }

    public void setId_abonnement(int id_abonnement) {
        this.id_abonnement = id_abonnement;
    }

    public int getNumero_abonne() {
        return numero_abonne;
    }

    public void setNumero_abonne(int numero_abonne) {
        this.numero_abonne = numero_abonne;
    }

    public float getCredit() {
        return credit;
    }

    public void setCredit(float credit) {
        this.credit = credit;
    }

    public float getPenalite() {
        return penalite;
    }

    public void setPenalite(float penalite) {
        this.penalite = penalite;
    }

    public Date getDate_souscription() {
        return date_souscription;
    }

    public void setDate_souscription(Date date_souscription) {
        this.date_souscription = date_souscription;
    }
}
