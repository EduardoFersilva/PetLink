package br.com.petlink.servlet;

import br.com.petlink.dao.PetDao;
import br.com.petlink.model.Pet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Arrays;
import java.util.List;
import java.util.Objects;

@WebServlet("/pet-info")
public class PetInfoServlet extends HttpServlet{

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");

        String petId = req.getParameter("id");
        Pet pet = new PetDao().petInfo(petId);

        System.out.println();

        System.out.println("PET: " + pet.getName());
        
        req.setAttribute("pet",pet);

        req.getRequestDispatcher("petInfo.jsp").forward(req,resp);
    }
}
