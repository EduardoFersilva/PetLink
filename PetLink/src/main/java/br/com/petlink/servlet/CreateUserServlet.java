package br.com.petlink.servlet;

import br.com.petlink.dao.UserDao;
import br.com.petlink.model.Users;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/user")
public class CreateUserServlet  extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("user.jsp").forward(req,resp);
    }


    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String userName = req.getParameter("user-name");
        String password = req.getParameter("user-password");
        String email = req.getParameter("user-email");
        String cnpj = req.getParameter("user-cnpj");
        String address = req.getParameter("user-address");
        String age = req.getParameter("user-age");
        String cep = req.getParameter("user-cep");
    
        Users users = new Users(userName, password, email, cnpj, age, address, cep);
        new UserDao().createUser(users);
    
        // Após criar o usuário com sucesso, redirecionar para a página de login
        resp.sendRedirect(req.getContextPath() + "/login");
    }
    
}
