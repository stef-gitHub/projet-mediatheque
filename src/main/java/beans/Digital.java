package beans;

import java.util.Date;

public class Digital {
    int id_digital;
    int id_type;
    int id_etat;
    String titre_digital;
    String auteur_digital;
    Date date_digital;

    public int getId_digital() {
        return id_digital;
    }

    public void setId_digital(int id_digital) {
        this.id_digital = id_digital;
    }

    public int getId_type() {
        return id_type;
    }

    public void setId_type(int id_type) {
        this.id_type = id_type;
    }

    public int getId_etat() {
        return id_etat;
    }

    public void setId_etat(int id_etat) {
        this.id_etat = id_etat;
    }

    public String getTitre_digital() {
        return titre_digital;
    }

    public void setTitre_digital(String titre_digital) {
        this.titre_digital = titre_digital;
    }

    public String getAuteur_digital() {
        return auteur_digital;
    }

    public void setAuteur_digital(String auteur_digital) {
        this.auteur_digital = auteur_digital;
    }

    public Date getDate_digital() {
        return date_digital;
    }

    public void setDate_digital(Date date_digital) {
        this.date_digital = date_digital;
    }
}
