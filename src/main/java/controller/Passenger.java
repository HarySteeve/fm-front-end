package controller;

public class Passenger {
    private String nom;
    private String prenoms;
    private String email;
    private String telephone;
    private String classe;
    private String usersCategorie;

    public Passenger() {
    }

    public String getNom() {
        return nom;
    }

    public void setNom(String nom) {
        this.nom = nom;
    }

    public String getPrenoms() {
        return prenoms;
    }

    public void setPrenoms(String prenoms) {
        this.prenoms = prenoms;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getTelephone() {
        return telephone;
    }

    public void setTelephone(String telephone) {
        this.telephone = telephone;
    }

    public String getClasse() {
        return classe;
    }

    public void setClasse(String classe) {
        this.classe = classe;
    }

    public String getUsersCategorie() {
        return usersCategorie;
    }

    public void setUsersCategorie(String usersCategorie) {
        this.usersCategorie = usersCategorie;
    }
}