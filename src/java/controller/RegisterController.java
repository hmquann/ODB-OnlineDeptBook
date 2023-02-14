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
        String phone = req.getParameter("phone");
        String address = req.getParameter(phone);
        String email = req.getParameter("email");
        RequestDispatcher dispatcher = null;
        HttpSession mySession = req.getSession();

        if (email != null || !email.equals("")) {
            String to = email;
            Properties props = new Properties();
            props.put("mail.smtp.auth", "true");
            props.put("mail.smtp.host", "smtp.gmail.com");
            props.put("mail.smtp.starttls.enable", "true");
            props.put("mail.smtp.port", "587");
            Session session = Session.getDefaultInstance(props, new javax.mail.Authenticator() {
                protected PasswordAuthentication getPasswordAuthentication() {
                    return new PasswordAuthentication("ekkophantoms123@gmail.com", "wjornzyksrjqkcdp");
                }
            });
            try {
                MimeMessage message = new MimeMessage(session);
                message.setFrom(new InternetAddress(email));// change accordingly
                message.addRecipient(Message.RecipientType.TO, new InternetAddress(to));
                message.setSubject("Hello");
//                message.setText("your OTP is: " + otpvalue);
                String htmlContent = "<h1>Activate your account in <a href=\"http://localhost:9999/OnlineDebtBook_Project/ChangePassword\">GP Coder</a></h1>" +
                    "<img src=\"https://gpcoder.com/wp-content/uploads/2017/10/Facebook_Icon_GP_2-300x180.png\" " + " width=\"300\" " + " height=\"180\" " + " border=\"0\" " + " alt=\"gpcoder.com\" />";
                message.setContent(htmlContent, "text/html");
                Transport.send(message);
                User user = new User();
                user.setIsActive(true);
                System.out.println("message sent successfully");
            } catch (MessagingException e) {
                throw new RuntimeException(e);
            }
            dispatcher = req.getRequestDispatcher("login.jsp");
      
            mySession.setAttribute("email", email);
            dispatcher.forward(req, resp);
        }
    }
    
}
