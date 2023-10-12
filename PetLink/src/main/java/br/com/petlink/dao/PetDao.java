package br.com.petlink.dao;

import br.com.petlink.config.ConnectionPoolConfig;
import br.com.petlink.model.Pet;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;


public class PetDao {

    public void createPet(Pet pet) {

        String SQL = "INSERT INTO PET (NAME) VALUES (?)";

        try {

            Connection connection = ConnectionPoolConfig.getConnection();

            PreparedStatement preparedStatement = connection.prepareStatement(SQL);

            preparedStatement.setString(1, pet.getName());
            preparedStatement.execute();

            System.out.println("success in insert pet");

            connection.close();

        } catch (Exception e) {

            System.out.println("fail in database connection");

        }
    }

    public List<Pet> findAllPets() {

        String SQL = "SELECT * FROM PET ";

        try {

            Connection connection = ConnectionPoolConfig.getConnection();

            PreparedStatement preparedStatement = connection.prepareStatement(SQL);

            ResultSet resultSet = preparedStatement.executeQuery();

            List<Pet> pets = new ArrayList<>();

            while (resultSet.next()) {

                String petId = resultSet.getString("id");
                String petName = resultSet.getString("name");

                Pet pet = new Pet(petId,petName);

                pets.add(pet);

            }

            System.out.println("success in select * pet");

            connection.close();

            return pets;

        } catch (Exception e) {
                System.out.println("fail in database connection");

                return Collections.emptyList();

        } }
    public void deletePetById(String petId) {

        String SQL = "DELETE PET WHERE ID = ?";

        try {
            Connection connection = ConnectionPoolConfig.getConnection();


            PreparedStatement preparedStatement = connection.prepareStatement(SQL);
            preparedStatement.setString(1, petId);
            preparedStatement.execute();

            System.out.println("success in insert pet" + petId);

            connection.close();
        }
        catch (Exception e){
        System.out.println("fail in database connection");
    }
}
    public void updatePet(Pet pet) {

        String SQL = " UPDATE PET  SET NAME = ? WHERE ID = ?" ;
        try {

            Connection connection = ConnectionPoolConfig.getConnection();


            PreparedStatement preparedStatement = connection.prepareStatement(SQL);

            preparedStatement.setString(1, pet.getName());
            preparedStatement.setString(2, pet.getId());
            preparedStatement.execute();
            System.out.println("success in insert pet");
            connection.close();

        } catch (Exception e) {
            System.out.println("fail in database connection");
            System.out.println("Error: " + e.getMessage());

        }
    }

}


