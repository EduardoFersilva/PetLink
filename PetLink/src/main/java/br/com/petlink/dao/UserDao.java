package br.com.petlink.dao;

import br.com.petlink.config.ConnectionPoolConfig;
import br.com.petlink.model.Pet;
import br.com.petlink.model.Users;
import org.h2.engine.User;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class UserDao {

    public void createUser(Users users) {

        String SQL = "INSERT INTO USERS (USERNAME,PASSWORD,EMAIL,CNPJ,AGE,ADDRESS,CEP) VALUES (?, ? , ? , ? , ? ,? , ?)";

        try {
            System.out.println("CNPJ: " + users.getCnpj());
            Connection connection = ConnectionPoolConfig.getConnection();

            PreparedStatement preparedStatement = connection.prepareStatement(SQL);

            preparedStatement.setString(1, users.getUserName());
            preparedStatement.setString(2, users.getPassword());
            preparedStatement.setString(3, users.getEmail());
            preparedStatement.setString(4, users.getCnpj());
            preparedStatement.setString(5, users.getAge());
            preparedStatement.setString(6, users.getAddress());
            preparedStatement.setString(7, users.getCep());

            preparedStatement.execute();

            System.out.println("success in insert user");

            connection.close();

        } catch (Exception e) {

            System.out.println("fail in database connection");

        }
    }

    public String verifyCredentials(Users users) {

        String SQL = "SELECT * FROM USERS WHERE USERNAME =  ?";

        try{

            Connection connection = ConnectionPoolConfig.getConnection();

            PreparedStatement preparedStatement = connection.prepareStatement(SQL);

            preparedStatement.setString(1, users.getUserName());
            ResultSet resultSet =  preparedStatement.executeQuery();
            System.out.println("sucess in select username");

           while(resultSet.next()){

              String password =  resultSet.getString("password");

              if(password.equals(users.getPassword())){

                  return resultSet.getString("ID");

              }

           }
           connection.close();
            return "false";



        } catch (Exception e){
                System.out.println("Error " +  e.getMessage());
                return "false";


        }

    }
}