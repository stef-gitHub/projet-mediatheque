package beans;

public class Role {

    private int id_role;
    private String libelle_role;

    public Role(String libelle_role) {
        this.libelle_role = libelle_role;
    }

    public int getId_role() {
        return id_role;
    }

    public void setId_role(int id_role) {
        this.id_role = id_role;
    }

    public String getLibelle_role() {
        return libelle_role;
    }

    public void setLibelle_role(String libelle_role) {
        this.libelle_role = libelle_role;
    }
}
