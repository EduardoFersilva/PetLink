package br.com.petlink.servlet;


import br.com.petlink.dao.PetDao;
import br.com.petlink.model.Pet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/create-pet")
public class CreatePetServlet  extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String petId = request.getParameter("id");
        String petName = request.getParameter("pet-name");

       Pet pet = new Pet(petId,petName);
       PetDao petDao = new PetDao();

        if (petId.isBlank()) {
            petDao.createPet(pet);
        } else {
            petDao.updatePet(pet);

        }

        response.sendRedirect("/find-all-pets");
    }

}
