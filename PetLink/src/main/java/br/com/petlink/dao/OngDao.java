package br.com.petlink.dao;

import br.com.petlink.config.ConnectionPoolConfig;
import br.com.petlink.model.Ong;

import java.sql.Connection;
import java.sql.PreparedStatement;

public class OngDao {
    public void createOng(Ong ong) {

        String SQL = "INSERT INTO ONG (NAME, CNAE, EMAIL, PHONE, PASSWORD, ADDRESS, CEP) VALUES (?, ? , ?, ?, ?, ?, ?)";

        try {

            Connection connection = ConnectionPoolConfig.getConnection();

            PreparedStatement preparedStatement = connection.prepareStatement(SQL);

            preparedStatement.setString(1, ong.getNameOng());
            preparedStatement.setString(2, ong.getCnae());
            preparedStatement.setString(3, ong.getEmailOng());
            preparedStatement.setString(4, ong.getPhoneOng());
            preparedStatement.setString(5, ong.getPasswordOng());
            preparedStatement.setString(6, ong.getAddressOng());
            preparedStatement.setString(7, ong.getCepOng());


            preparedStatement.execute();

            System.out.println("success in insert ong");

            connection.close();

        } catch (Exception e) {

            System.out.println("fail in database connection");

        }
    }
}
