package beans;

import java.text.SimpleDateFormat;
import java.util.Date;

public class Abonnement {

    private int id_abonnement;
    private String numero_abonne;
    private float penalite;
    private String date_souscription;

    public Abonnement(String numero_abonne, float penalite, String date_souscription) {
        this.numero_abonne = numero_abonne;
        this.penalite = penalite;
        this.date_souscription = date_souscription;
    }

    public Abonnement() {
    }

    public int getId_abonnement() {
        return id_abonnement;
    }

    public void setId_abonnement(int id_abonnement) {
        this.id_abonnement = id_abonnement;
    }

    public String getNumero_abonne() {
        return numero_abonne;
    }

    public void setNumero_abonne(String numero_abonne) {
        this.numero_abonne = numero_abonne;
    }

    public float getPenalite() {
        return penalite;
    }

    public void setPenalite(float penalite) {
        this.penalite = penalite;
    }

    public String getDate_souscription() {
        return date_souscription;
    }

    public void setDate_souscription(String date_souscription) {
        this.date_souscription = date_souscription;
    }

    public String creerNumABonne(String nom, String prenom){
        String numAbonne;

        SimpleDateFormat formatter = new SimpleDateFormat("ddMMyyyyHHmmss");
        Date date = new Date();

        numAbonne = nom.charAt(0)+""+prenom.charAt(0)+""+formatter.format(date);
        return numAbonne;
    }
}
