package br.com.petlink.model;

public class Users {

    private String userName;
    private String password;

    private String email;

    public Users() {
        this.userName = userName;
        this.password = password;
        this.email = email;
        this.cpf = cpf;
        this.idade = idade;
        this.endereco = endereco;
        this.cep = cep;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public void setCpf(String cpf) {
        this.cpf = cpf;
    }

    public void setIdade(String idade) {
        this.idade = idade;
    }

    public void setEndereco(String endereco) {
        this.endereco = endereco;
    }

    public void setCep(String cep) {
        this.cep = cep;
    }

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
