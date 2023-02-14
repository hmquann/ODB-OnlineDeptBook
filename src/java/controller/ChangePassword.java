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
        
        String pass = req.getParameter("pass");
        String pass2 = req.getParameter("pass2");
        UserDAO u = new UserDAO();
        RequestDispatcher dispatcher = null;
        if (pass != null && pass2 != null && pass.contains(pass2)) {
            try {
                int rowCount=0;
//                int rowCount = u.UpdatePassword(pass, mail);
                if (rowCount > 0) {
                    req.setAttribute("status", "resetSuccess");
                    req.getRequestDispatcher("login.jsp").forward(req, resp);
                } else {
                    req.setAttribute("status", "resetFailed");
                    req.getRequestDispatcher("login.jsp").forward(req, resp);
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("newpassword.jsp").forward(req, resp);
    }

}
