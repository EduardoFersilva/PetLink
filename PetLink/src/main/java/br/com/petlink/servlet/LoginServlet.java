package br.com.petlink.servlet;

import br.com.petlink.dao.UserDao;
import br.com.petlink.model.Users;
import org.h2.engine.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("login.jsp").forward(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
       String username = req.getParameter("username");
       String password =  req.getParameter("password");

        Users users = new Users( username, password);

       boolean isValidUser =  new UserDao().verifyCredentials(users);

       if(isValidUser){
           req.getSession().setAttribute("loggedUser", username);

           resp.sendRedirect("/find-all-pets");
       } else {
           req.setAttribute("message" ,"invalid credentials");

           req.getRequestDispatcher("login.jsp").forward(req,resp);
       }
    }
}
