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

        String SQL = "INSERT INTO PET (NAME,TYPE,BREED,SIZE,GENDER,AGE,DESCRIPTION,IMAGE) VALUES (?, ? , ? , ? , ? , ? , ? , ?)";

        try {

            Connection connection = ConnectionPoolConfig.getConnection();

            PreparedStatement preparedStatement = connection.prepareStatement(SQL);

            preparedStatement.setString(1, pet.getName());
            preparedStatement.setString(2,pet.getTipo());
            preparedStatement.setString(3,pet.getbreed());
            preparedStatement.setString(4,pet.getPorte());
            preparedStatement.setString(5,pet.getSexo());
            preparedStatement.setString(6,pet.getIdade());
            preparedStatement.setString(7,pet.getdescription());
            preparedStatement.setString(8,pet.getImage());

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
                String petImage = resultSet.getString("image");

                Pet pet = new Pet(petId,petName,petImage);

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

        String SQL = " UPDATE PET  SET NAME = ?, IMAGE = ? WHERE ID = ?" ;
        try {

            Connection connection = ConnectionPoolConfig.getConnection();


            PreparedStatement preparedStatement = connection.prepareStatement(SQL);

            preparedStatement.setString(1, pet.getName());
            preparedStatement.setString(2, pet.getImage());
            preparedStatement.setString(3, pet.getId());



            preparedStatement.execute();
            System.out.println("success in insert pet");
            connection.close();

        } catch (Exception e) {
            System.out.println("fail in database connection");
            System.out.println("Error: " + e.getMessage());

        }
    }

}


