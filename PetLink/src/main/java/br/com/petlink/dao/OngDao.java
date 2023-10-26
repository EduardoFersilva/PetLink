package br.com.petlink.dao;

import br.com.petlink.config.ConnectionPoolConfig;
import br.com.petlink.model.Ong;

import java.sql.Connection;
import java.sql.PreparedStatement;

public class OngDao {
    public void createOng(Ong ong) {

        String SQL = "INSERT INTO ONG (CNAE, NAMEONG, PHONEONG) VALUES (?, ? , ?)";

        try {

            Connection connection = ConnectionPoolConfig.getConnection();

            PreparedStatement preparedStatement = connection.prepareStatement(SQL);

            preparedStatement.setString(1, ong.getCNAE());
            preparedStatement.setString(2, ong.getNameOng());
            preparedStatement.setString(3, ong.getPhoneOng());

            preparedStatement.execute();

            System.out.println("success in insert ong");

            connection.close();

        } catch (Exception e) {

            System.out.println("fail in database connection");

        }
    }
}
