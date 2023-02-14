/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package controller;

import dal.MD5;
import dal.UserDAO;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;
import java.util.ArrayList;
import model.User;

/**
 *
 * @author pc
 */
public class LoginController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("login.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession();
        String email = req.getParameter("email");
        String pass = req.getParameter("password");
        UserDAO dao = new UserDAO();
        String mess = "Wrong password or email ";
        ArrayList<User> list = dao.getAllUser();
        MD5 md5 = new MD5();
        for (User user : list) {
            if (email.equals(user.getEmail()) && md5.getMd5(pass).equals(user.getPassword())) {
                session.setAttribute("user", user);
                mess = "thanh cong";
            }
        }
        if (mess.equals("thanh cong")) {
            resp.sendRedirect("./Home");
        } else {
            req.setAttribute("mess", mess);
            req.getRequestDispatcher("login.jsp").forward(req, resp);
        }
    }

}
