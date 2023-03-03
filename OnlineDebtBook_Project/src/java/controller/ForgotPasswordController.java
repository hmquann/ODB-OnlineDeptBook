

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package controller;

import dal.UserDAO;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;
import java.util.Properties;
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
 * @author ADMIN
 */
public class ForgotPasswordController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("forgotpass.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int timeout = 60000;
        String email = req.getParameter("email");
        UserDAO dao = new UserDAO();
        HttpSession mySession = req.getSession();
        if (email != null && dao.chekcAccount(email)) {
            if (dao.chekcAccount(email)) {
                String to = email;
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
                    String htmlContent = "<h1>Change your password in <a href=\"http://localhost:9999/OnlineDebtBook_Project/ChangePassword?email=" + to + "\">Online Debt Reset Password</a></h1> <h2>Note: The email can only exist in 1 minute from the time it started sending!!!!!</h2>";
                    message.setContent(htmlContent, "text/html");
                    System.out.println("message sent successfully");
                    Transport.send(message);
                } catch (MessagingException e) {
                    throw new RuntimeException(e);
                }
            }
            mySession.setAttribute("email", email);
            req.getRequestDispatcher("forgotpass.jsp").forward(req, resp);
        } else {
            req.setAttribute("mess", "x");
            req.getRequestDispatcher("forgotpass.jsp").forward(req, resp);
        }
    }
}
