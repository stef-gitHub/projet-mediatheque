package beans;

import java.util.Date;

public class Utilisateur {

    private int id_utilisateur;
    private String nom;
    private String prenom;
    private String adresse;
    private String mdp;
    private String email;
    private String ville;
    private Role role;
    private int code_postal;
    private String num_telephone;
    private int isActif;
    private Abonnement abonnement;

    @Override
    public String toString() {
        return "Utilisateur{" +
                "id_utilisateur=" + id_utilisateur +
                ", nom='" + nom + '\'' +
                ", prenom='" + prenom + '\'' +
                ", adresse='" + adresse + '\'' +
                ", mdp='" + mdp + '\'' +
                ", email='" + email + '\'' +
                ", ville='" + ville + '\'' +
                ", id_role=" + role +
                ", code_postal=" + code_postal +
                ", num_telephone='" + num_telephone + '\'' +
                ", isActif=" + isActif +
                ", unAbonnement=" + abonnement +
                '}';
    }

    public Utilisateur(String nom, String prenom, String adresse, String mdp, String email, String ville, Role role,
                       int code_postal, String num_telephone, int isActif, Abonnement abonnement) {
        this.nom = nom;
        this.prenom = prenom;
        this.adresse = adresse;
        this.mdp = mdp;
        this.email = email;
        this.ville = ville;
        this.role = role;
        this.code_postal = code_postal;
        this.num_telephone = num_telephone;
        this.isActif = isActif;
        this.abonnement = abonnement;
    }

    public Utilisateur() {
    }

    public int getId_utilisateur() {
        return id_utilisateur;
    }

    public void setId_utilisateur(int id_utilisateur) {
        this.id_utilisateur = id_utilisateur;
    }

    public int isActif() {
        return isActif;
    }

    public void setActif(int actif) {
        isActif = actif;
    }

    public String getNom() {
        return nom;
    }

    public void setNom(String nom) {
        this.nom = nom;
    }

    public String getPrenom() {
        return prenom;
    }

    public void setPrenom(String prenom) {
        this.prenom = prenom;
    }

    public String getAdresse() {
        return adresse;
    }

    public void setAdresse(String adresse) {
        this.adresse = adresse;
    }

    public String getMdp() {
        return mdp;
    }

    public void setMdp(String mdp) {
        this.mdp = mdp;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getVille() {
        return ville;
    }

    public void setVille(String ville) {
        this.ville = ville;
    }

    public Role getRole() {
        return role;
    }

    public void setRole(Role role) {
        this.role = role;
    }

    public int getCode_postal() {
        return code_postal;
    }

    public void setCode_postal(int code_postal) {
        this.code_postal = code_postal;
    }

    public String getNum_telephone() {
        return num_telephone;
    }

    public void setNum_telephone(String num_telephone) {
        this.num_telephone = num_telephone;
    }

    public Abonnement getAbonnement() {
        return abonnement;
    }

    public void setAbonnement(Abonnement abonnement) {
        this.abonnement = abonnement;
    }
}
