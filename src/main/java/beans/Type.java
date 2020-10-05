package beans;

public class Type {
    private int id_type;
    private String libelle_type;

    public Type(String libelle_type) {
        this.libelle_type = libelle_type;
    }

    public int getId_type() {
        return id_type;
    }

    public void setId_type(int id_type) {
        this.id_type = id_type;
    }

    public String getLibelle_type() {
        return libelle_type;
    }

    public void setLibelle_type(String libelle_type) {
        this.libelle_type = libelle_type;
    }
}
