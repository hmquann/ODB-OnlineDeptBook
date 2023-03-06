/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package controller;

import dal.MD5;
import dal.UserDAO;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;
import model.User;

/**
 *
 * @author Admin
 */
public class ChangePassProfile extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String password = req.getParameter("password");
        String newpass = req.getParameter("newpass");
        String newpass2 = req.getParameter("newpass2");
        String mess = "Wrong Password";
        String mess2 = "Update error";
        MD5 md5 = new MD5();
        UserDAO dal = new UserDAO();
        HttpSession session = req.getSession();
        if (session.getAttribute("user2") == null) {
            resp.sendRedirect("Login");
        } else {
            User u = (User) session.getAttribute("user2");
            String id = String.valueOf(u.getAccountID());
            User user = dal.getUserById(id);
            session.setAttribute("user2", user);
            req.setAttribute("u", user);
            if (md5.getMd5(password).equals(u.getPassword())) {
                if (newpass.matches("((?=.*\\d)(?=.*[a-zA-Z])[a-zA-Z\\d!@#$%^&*]{8,31})")
                        && newpass2.matches("((?=.*\\d)(?=.*[a-zA-Z])[a-zA-Z\\d!@#$%^&*]{8,31})")
                        && (newpass.equals(newpass2))) {
                    dal.UpdatePassword(newpass, u.getEmail());
                    req.getRequestDispatcher("viewprofile.jsp").forward(req, resp);
                } else {
                    req.setAttribute("mess", mess2);
                    req.getRequestDispatcher("changepassword.jsp").forward(req, resp);
                }
            } else {
                req.setAttribute("mess", mess);
                req.getRequestDispatcher("changepassword.jsp").forward(req, resp);
            }
        }
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("changepassword.jsp").forward(req, resp);
    }

}
