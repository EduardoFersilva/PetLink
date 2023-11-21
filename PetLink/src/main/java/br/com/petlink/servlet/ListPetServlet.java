package br.com.petlink.servlet;

import br.com.petlink.dao.PetDao;
import br.com.petlink.model.Pet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet({"/index","/find-all-pets"})
public class ListPetServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        if (req.getSession().getAttribute("loggedUser") != null) {
            System.out.println(String.valueOf(req.getSession().getAttribute("id")));
            List<Pet> pets =  new PetDao().findAllPetsAboutOng(String.valueOf(req.getSession().getAttribute("id")));
            req.setAttribute("pets",pets);
            req.getRequestDispatcher("/dashboard.jsp").forward(req,resp);

        }else{
            List<Pet> pets =  new PetDao().findAllPets();
            req.setAttribute("pets",pets);
            req.getRequestDispatcher("/index.jsp").forward(req,resp);

        }
    }
}
