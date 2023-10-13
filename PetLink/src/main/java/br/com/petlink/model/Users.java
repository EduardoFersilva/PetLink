package br.com.petlink.model;

public class Users {

    private String userName;
    private String password;

    private String email;

    public String getUserName() {
        return userName;
    }

    public String getPassword() {
        return password;
    }

    public String getEmail() {
        return email;
    }

    public String getCpf() {
        return cpf;
    }

    public String getIdade() {
        return idade;
    }

    public String getEndereco() {
        return endereco;
    }

    public String getCep() {
        return cep;
    }

    public Users(String userName, String password) {
        this.userName = userName;
        this.password = password;
    }

    private String cpf ;

    private String idade;

    private String endereco;

    private String cep;




}
