package controller;

import dal.CustomerDAO;
import dal.TransactionDAO;
import dal.UserDAO;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

import model.*;

/**
 *
 * @author pc
 */
public class DashboardController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession();
        CustomerDAO dao = new CustomerDAO();
        TransactionDAO TDao = new TransactionDAO();
        String indexPage = req.getParameter("index");
        if (indexPage == null) {
            indexPage = "1";
        }
        int index = Integer.parseInt(indexPage);
        if (session.getAttribute("user") == null) {
            resp.sendRedirect("Login");
        } else {
            UserDAO dal = new UserDAO();
            List<User> listUserInfo = dal.getUserInformation();
            req.setAttribute("listUserInfo", listUserInfo);
            User u = (User) session.getAttribute("user2");
            List<Customer> listCustomer = dao.pagingCustomer(index, u.getAccountID());
            req.setAttribute("u", u);
            req.setAttribute("list1", listCustomer);
            int count = dao.getTotalCustomer(u.getAccountID());
            int endPage = count / 5;
            if (count % 5 != 0) {
                endPage++;
            }
            req.setAttribute("endP", endPage);
            req.setAttribute("indexPage", index);
            req.setAttribute("record", count);
            req.getRequestDispatcher("dashboard.jsp").forward(req, resp);
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //Nothing
    }

}
