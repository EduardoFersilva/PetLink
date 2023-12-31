package br.com.petlink.model;

public class Users {

    private String id;

    private String userName;
    private String password;
    private String email;
    private String cnpj;
    private String age;
    private String address;
    private String cep;

    public Users(String userName, String password, String email, String cnpj, String age, String address, String cep) {
        this.userName = userName;
        this.password = password;
        this.email = email;
        this.cnpj = cnpj;
        this.age = age;
        this.address = address;
        this.cep = cep;
    }

    public Users(String userName, String email, String address, String cep) {
        this.userName = userName;
        this.email = email;
        this.address = address;
        this.cep = cep;
    }


    public Users(String userName, String password) {
        this.userName = userName;
        this.password = password;
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

    public void setCpf(String cnpj) {
        this.cnpj = cnpj;
    }

    public void setAge(String age) {
        this.age = age;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public void setCep(String cep) {
        this.cep = cep;
    }

    public void setId(String id) {
        this.id = id;
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

    public String getCnpj() {
        return cnpj;
    }

    public String getAge() {
        return age;
    }

    public String getAddress() {
        return address;
    }

    public String getCep() {
        return cep;
    }

    public String getId() {
        return id;
    }
}
