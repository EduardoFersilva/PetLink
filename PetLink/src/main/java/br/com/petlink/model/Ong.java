package br.com.petlink.model;

public class Ong {

    private String nameOng;
    private String cnae;
    private String emailOng;
    private String phoneOng;
    private String passwordOng;
    private String addressOng;
    private String cepOng;

    public Ong(String nameOng, String cnae, String emailOng, String phoneOng,
               String passwordOng, String addressOng, String cepOng) {

        this.nameOng = nameOng;
        this.cnae = cnae;
        this.emailOng = emailOng;
        this.phoneOng = phoneOng;
        this.passwordOng = passwordOng;
        this.addressOng = addressOng;
        this.cepOng = cepOng;
    }

    public String getNameOng() {
        return nameOng;
    }

    public void setNameOng(String nameOng) {
        this.nameOng = nameOng;
    }

    public String getCnae() {
        return cnae;
    }

    public void setCnae(String cnae) {
        this.cnae = cnae;
    }

    public String getEmailOng() {
        return emailOng;
    }

    public void setEmailOng(String emailOng) {
        this.emailOng = emailOng;
    }

    public String getPhoneOng() {
        return phoneOng;
    }

    public void setPhoneOng(String phoneOng) {
        this.phoneOng = phoneOng;
    }

    public String getPasswordOng() {
        return passwordOng;
    }

    public void setPasswordOng(String passwordOng) {
        this.passwordOng = passwordOng;
    }

    public String getAddressOng() {
        return addressOng;
    }

    public void setAddressOng(String addressOng) {
        this.addressOng = addressOng;
    }

    public String getCepOng() {
        return cepOng;
    }

    public void setCepOng(String cepOng) {
        this.cepOng = cepOng;
    }
}
