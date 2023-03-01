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
public class EditProfileController extends HttpServlet{

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String accountid = req.getParameter("accountid");
        String accountname = req.getParameter("accountname");
        String accountemail = req.getParameter("accountemail");
        String accountaddress = req.getParameter("accountaddress");
        String accountphone = req.getParameter("accountphone");
         UserDAO dal = new UserDAO();
       HttpSession session = req.getSession();
        if (session.getAttribute("user") == null) {
            resp.sendRedirect("Login");
        } else {
            User u = (User) session.getAttribute("user");
            req.setAttribute("u", u);
            dal.UpdateProfile(accountemail, accountname, accountaddress, accountphone);
//            req.setAttribute("accountname", accountname);
//            req.setAttribute("accountemail", accountemail);
//            req.setAttribute("accountaddress", accountaddress);
//            req.setAttribute("accountphone", accountphone);
            req.getRequestDispatcher("editprofile.jsp").forward(req, resp);
        }
    }
    
}
