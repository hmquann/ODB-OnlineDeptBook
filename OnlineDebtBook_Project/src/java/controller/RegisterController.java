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
import java.util.Properties;
import java.util.Random;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

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
        int timeout = 0;
        HttpSession mySession = req.getSession();
        int otp = 0;
        UserDAO dao = new UserDAO();
        if (dao.chekcAccount(email) || dao.checkAccount(phone) || !repass.equals(pass)
                || !pass.matches("((?=.*\\d)(?=.*[a-zA-Z])[a-zA-Z\\d!@#$%^&*]{8,31})")) {
            String mess = "";
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
                if (!mess.equals("")) {
                    mess += "<br>";
                }
                mess += "Password contains 8 characters ";
                req.setAttribute("mess", mess);
            }
            if (!phone.matches("(([0-9]){10})")) {
                if (!mess.equals("")) {
                    mess += "<br>";
                }
                mess += "Phone must be a 10 digit number";
                req.setAttribute("mess", mess);
            }
            if (!repass.equals(pass)) {
                if (!mess.equals("")) {
                    mess += "<br>";
                }
                mess += "Repeat password not match";
                req.setAttribute("mess", mess);

            }
            req.getRequestDispatcher("register.jsp").forward(req, resp);
        } else {
            Random rand = new Random();
            otp = rand.nextInt(1000000);
            String to = email;
            timeout = 60000;
            Properties props = new Properties();
            props.put("mail.smtp.auth", "true");
            props.put("mail.smtp.host", "smtp.gmail.com");
            props.put("mail.smtp.starttls.enable", "true");
            props.put("mail.smtp.port", "587");
            props.put("mail.smtp.timeout", timeout);
            Session session = Session.getDefaultInstance(props, new javax.mail.Authenticator() {
                protected PasswordAuthentication getPasswordAuthentication() {
                    return new PasswordAuthentication("ekkophantoms123@gmail.com", "wjornzyksrjqkcdp");
                }
            });
            try {
                MimeMessage message = new MimeMessage(session);
                message.setFrom(new InternetAddress(email));
                message.addRecipient(Message.RecipientType.TO, new InternetAddress(to));
                message.setSubject("Dear MyFriend, ");
                String htmlContent = "<h1>Active your account by code here: " + otp + "</h1> <h2>Note: The email can only exist in 1 minute from the time it started sending!!!!!</h2>";
                message.setContent(htmlContent, "text/html");
                Transport.send(message);
                mySession.setAttribute("otp1", otp);
                req.setAttribute("email", email);
                dao.insertNewUser(name, pass, email, address, phone); 
                req.getRequestDispatcher("otp.jsp").forward(req, resp);         
            } catch (MessagingException e) {
                throw new RuntimeException(e);
            }
        }
    }
}
