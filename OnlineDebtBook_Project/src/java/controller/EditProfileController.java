/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package controller;

import dal.CustomerDAO;
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
public class EditProfileController extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String accountname = req.getParameter("accountname");
        String accountemail = req.getParameter("accountemail");
        String accountaddress = req.getParameter("accountaddress");
        String accountphone = req.getParameter("accountphone");
        UserDAO dal = new UserDAO();
        HttpSession session = req.getSession();
        if (session.getAttribute("user2") == null) {
            resp.sendRedirect("Login");
        } else {
            dal.UpdateProfile(accountemail, accountname, accountaddress, accountphone);
            User u = (User) session.getAttribute("user2");
            String id = String.valueOf(u.getAccountID());
            User user = dal.getUserById(id);
            session.setAttribute("user2", user);
            req.setAttribute("u", user);
            req.getRequestDispatcher("editprofile.jsp").forward(req, resp);
        }

    }

}