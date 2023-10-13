package br.com.petlink.dao;

import br.com.petlink.config.ConnectionPoolConfig;
import br.com.petlink.model.Users;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class UserDao {

    public boolean verifyCredentials(Users users) {

        String SQL = "SELECT * FROM USERS WHERE USERNAME = 'rafael'";

        try{

            Connection connection = ConnectionPoolConfig.getConnection();

            PreparedStatement preparedStatement = connection.prepareStatement(SQL);

            preparedStatement.setString(1, users.getUserName());
           ResultSet resultSet =  preparedStatement.executeQuery();
            System.out.println("sucess in select username");

           while(resultSet.next()){

              String password =  resultSet.getString("password");

              if(password.equals(users.getPassword())){

                  return true;

              }

           }
           connection.close();
            return false;



        } catch (Exception e){
                System.out.println("Error " +  e.getMessage());
                return false;


    }

}
}