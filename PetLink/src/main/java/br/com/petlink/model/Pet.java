package br.com.petlink.model;

public class Pet {

    private String id;



    private String name;

    private String tipo;

    private String breed ;

    private String porte;

    private String sexo;

    private String idade;

    private String description;

    private String image;

    public Pet(){}

    public Pet(String id, String name, String tipo, String breed, String porte, String sexo, String idade, String description) {
        this.id = id;
        this.name = name;
        this.tipo = tipo;
        this.breed = breed;
        this.porte = porte;
        this.sexo = sexo;
        this.idade = idade;
        this.description = description;

    }

    public Pet(String id, String name, String image) {
        this.id = id;
        this.name = name;
        this.image = image;
    }

    public Pet(String id, String name, String tipo, String breed, String porte, String sexo, String idade, String description, String image) {
        this.id = id;
        this.name = name;
        this.tipo = tipo;
        this.breed = breed;
        this.porte = porte;
        this.sexo = sexo;
        this.idade = idade;
        this.description = description;
        this.image = image;
    }

    public Pet(String id, String name) {
        this.id = id;
        this.name = name;
    }

    public Pet(String name) {
        this.name = name;
    }

    public String getName() {
        return name;
    }
    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setTipo(String tipo) {
        this.tipo = tipo;
    }

    public void setbreed(String breed) {
        this.breed = breed;
    }

    public void setPorte(String porte) {
        this.porte = porte;
    }

    public void setSexo(String sexo) {
        this.sexo = sexo;
    }

    public String getTipo() {
        return tipo;
    }

    public String getbreed() {
        return breed;
    }

    public String getPorte() {
        return porte;
    }

    public String getSexo() {
        return sexo;
    }

    public String getIdade() {
        return idade;
    }

    public String getdescription() {
        return description;
    }

    public String getImage() {
        return image;
    }

    public void setIdade(String idade) {
        this.idade = idade;
    }

    public void setdescription(String description) {
        this.description = description;
    }

    public void setImage(String image) {
        this.image = image;
    }


}




