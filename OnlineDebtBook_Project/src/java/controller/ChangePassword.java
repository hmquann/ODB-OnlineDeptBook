/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package controller;

import dal.UserDAO;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 *
 * @author ADMIN
 */
public class ChangePassword extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String email = req.getParameter("email");
        String pass = req.getParameter("pass");
        String pass2 = req.getParameter("pass2");
        if (!pass.equals(pass2) || !pass.matches("((?=.*\\d)(?=.*[a-zA-Z])[a-zA-Z\\d!@#$%^&*]{8,31})") ) {
            if (!pass.matches("((?=.*\\d)(?=.*[a-zA-Z])[a-zA-Z\\d!@#$%^&*]{8,31})")) {
                req.setAttribute("mess", "Password must contain 8 characters and digits");
                req.getRequestDispatcher("newpassword.jsp").forward(req, resp);
            } 
            if(!pass.equals(pass2)){
                req.setAttribute("mess", "Not matching password");
                req.getRequestDispatcher("newpassword.jsp").forward(req, resp);
            }
        } else {
            UserDAO u = new UserDAO();
            u.updatePassword(pass, email);
            req.getRequestDispatcher("login.jsp").forward(req, resp);
        }
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("newpassword.jsp").forward(req, resp);
    }

}
