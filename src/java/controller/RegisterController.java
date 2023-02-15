/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package controller;

import dal.MD5;
import dal.UserDAO;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;
import java.util.Properties;
import java.util.Random;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import model.User;

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
        UserDAO dao = new UserDAO();
        if (dao.chekcAccount(email) || dao.checkAccount(phone)
                || !pass.matches("((?=.*\\d)(?=.*[a-zA-Z])[a-zA-Z\\d!@#$%^&*]{8,31})") || !phone.matches("(([0-9]){10})")) {
            String mess = "";
            String mess1 = "";
            if (dao.chekcAccount(email)) {
                mess += "Email da ton tai";
                req.setAttribute("mess", mess);
            }
            if (dao.checkAccount(phone)) {
                if (mess.equals("")) {
                    mess += " va ";
                }
                mess += "Phone da ton tai";
                req.setAttribute("mess", mess);
            }
            if (!pass.matches("((?=.*\\d)(?=.*[a-zA-Z])[a-zA-Z\\d!@#$%^&*]{8,31})")) {
                mess1 += "mk bao gom chu so va 8 chu cai tro len";
                req.setAttribute("mess1", mess1);
            }
            if (!phone.matches("(([0-9]){10})")) {
                mess += "Phone phai la  so co 10 chu so";
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
