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
        String accountname = req.getParameter("accountname");
        String accountemail = req.getParameter("accountemail");
        String accountaddress = req.getParameter("accountaddress");
        String accountphone = req.getParameter("accountphone");
        UserDAO dal = new UserDAO();
        HttpSession session = req.getSession();     
        try {
            dal.updateProfile(accountemail, accountname, accountaddress, accountphone);
             User u = (User) session.getAttribute("user2");
            String id = String.valueOf(u.getAccountID());
            User user = dal.getUserById(id);
            session.setAttribute("user2", user);
            resp.sendRedirect("./ViewProfile");

        } catch (Exception e) {
            System.out.println(e);
        }
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession();
        if (session.getAttribute("user") == null) {
            resp.sendRedirect("Login");
        } else {
            User u = (User) session.getAttribute("user2");
            req.setAttribute("u", u);
            req.getRequestDispatcher("editprofile.jsp").forward(req, resp);
        }

    }

}
