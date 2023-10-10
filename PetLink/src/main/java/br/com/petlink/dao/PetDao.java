package br.com.petlink.dao;

import br.com.petlink.model.Pet;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;


public class PetDao {

    public void createPet(Pet pet) {

        String SQL = "INSERT INTO PET (NAME) VALUES (?)";

        try {

            Connection connection = DriverManager.getConnection("jdbc:h2:~/test", "sa","sa");

            System.out.println("success in database connection");

            PreparedStatement preparedStatement = connection.prepareStatement(SQL);

            preparedStatement.setString(1, pet.getName());
            preparedStatement.execute();

            System.out.println("success in insert pet");

            connection.close();

        } catch (Exception e) {

            System.out.println("fail in database connection");

        }


    }

    }


