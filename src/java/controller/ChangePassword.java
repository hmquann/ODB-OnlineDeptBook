/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package controller;

import dal.UserDAO;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

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
        if(pass.matches("((?=.*\\d)(?=.*[a-zA-Z])[a-zA-Z\\d!@#$%^&*]{8,31})") && pass2.matches("((?=.*\\d)(?=.*[a-zA-Z])[a-zA-Z\\d!@#$%^&*]{8,31})") && (pass.equals(pass2))) {
            UserDAO u = new UserDAO();
            u.UpdatePassword(pass, email);
            req.setAttribute("status", "resetSuccess");
            req.getRequestDispatcher("login.jsp").forward(req, resp);
        } else {
            req.setAttribute("mess", "sai");
            req.getRequestDispatcher("newpassword.jsp").forward(req, resp);
        }
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("newpassword.jsp").forward(req, resp);
    }

}
