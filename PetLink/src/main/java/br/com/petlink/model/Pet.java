package br.com.petlink.model;

public class Pet {

    private String id;

    public String getId() {
        return id;
    }

    private String name;

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

}
