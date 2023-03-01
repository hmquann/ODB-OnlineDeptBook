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

import java.io.IOException;


/**
 *
 * @author pc
 */
public class RegisterController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("register.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String name = req.getParameter("name");
        String pass = req.getParameter("pass");
        String email = req.getParameter("email");
        String address = req.getParameter("address");
        String phone = req.getParameter("phone");
        String repass = req.getParameter("repeatpass");
        UserDAO dao = new UserDAO();
        if (dao.chekcAccount(email) || dao.checkAccount(phone) || !repass.equals(pass)
                || !pass.matches("((?=.*\\d)(?=.*[a-zA-Z])[a-zA-Z\\d!@#$%^&*]{8,31})") || !phone.matches("(([0-9]){10})")) {
            String mess = "";
//            String mess1 = "";
            if (dao.chekcAccount(email)) {
                mess += "Email exist";
                req.setAttribute("mess", mess);
            }
            if (dao.checkAccount(phone)) {
                if (!mess.equals("")) {
                    mess += "<br>";
                }
                mess += "Phone exist";
                req.setAttribute("mess", mess);
            }
            if (!pass.matches("((?=.*\\d)(?=.*[a-zA-Z])[a-zA-Z\\d!@#$%^&*]{8,31})")) {
                if(!mess.equals("")){
                    mess+= "<br>";
                }
                mess += "Password contains 8 characters ";
                req.setAttribute("mess", mess);
            }
            if (!phone.matches("(([0-9]){10})")) {
                if(!mess.equals("")){
                    mess+= "<br>";
                }
                mess += "Phone must be a 10 digit number";
                req.setAttribute("mess", mess);
            }
            if (!repass.equals(pass)) {
                if(!mess.equals("")){
                    mess+= "<br>";
                }
                mess+= "Repeat password not match";
                req.setAttribute("mess", mess);

            }
            req.getRequestDispatcher("register.jsp").forward(req, resp);

        } else {
            dao.insertNewUser(name, pass, email, address, phone);
            req.setAttribute("name", name);
            req.setAttribute("pass", pass);
            req.setAttribute("email", email);
            req.setAttribute("address", address);
            req.setAttribute("phone", phone);
            resp.sendRedirect("./Login");
        }
    }
}
