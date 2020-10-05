package beans;

public class Emprunt {

    private int id_emprunt;
    private Utilisateur utilisateur;
    private Support support;
    private String date_debut;
    private String date_fin;
    private String date_rendu;

    public Emprunt() {
    }

    public Emprunt(String date_debut, String date_fin, String date_rendu) {
        this.date_debut = date_debut;
        this.date_fin = date_fin;
        this.date_rendu = date_rendu;
    }

    public Emprunt(Utilisateur utilisateur, Support support, String date_debut, String date_fin) {
        this.utilisateur = utilisateur;
        this.support = support;
        this.date_debut = date_debut;
        this.date_fin = date_fin;
        this.date_rendu = date_rendu;
    }

    public Utilisateur getUtilisateur() {
        return utilisateur;
    }

    public void setUtilisateur(Utilisateur utilisateur) {
        this.utilisateur = utilisateur;
    }

    public Support getSupport() {
        return support;
    }

    public void setSupport(Support support) {
        this.support = support;
    }



    public void setDate_debut(String date_debut) {
        this.date_debut = date_debut;
    }

    public String getDate_fin() {
        return date_fin;
    }

    public void setDate_fin(String date_fin) {
        this.date_fin = date_fin;
    }

    public String getDate_rendu() {
        return date_rendu;
    }

    public void setDate_rendu(String date_rendu) {
        this.date_rendu = date_rendu;
    }

    public int getId_emprunt() {
        return id_emprunt;
    }

    public void setId_emprunt(int id_emprunt) {
        this.id_emprunt = id_emprunt;
    }

    public String getDate_debut() {
        return date_debut;
    }
}
