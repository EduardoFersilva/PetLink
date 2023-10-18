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
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("index.jsp").forward(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String id = request.getParameter("id");
        String name = request.getParameter("pet-name");
        String tipo = request.getParameter("pet-tipo");
        String breed = request.getParameter("pet-breed");
        String porte = request.getParameter("pet-porte");
        String sexo = request.getParameter("pet-sexo");
        String idade = request.getParameter("pet-idade");
        String description = request.getParameter("pet-description");






        Pet pet = new Pet(id,name,tipo,breed,porte,sexo,idade,description);
       PetDao petDao = new PetDao();

        if (id.isBlank()) {
            petDao.createPet(pet);
        } else {
            petDao.updatePet(pet);

        }

        response.sendRedirect("/find-all-pets");
    }

}
