package controller;

import dal.CustomerDAO;
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
public class HomeController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession();
                    CustomerDAO dao = new CustomerDAO();

            List<Customer> listCustomer = dao.getListDebtor(1);
            List<HistoryTransaction> listDetail = dao.getListDebtDetail(1);

        if (session.getAttribute("user") == null) {
            resp.sendRedirect("Login");
        } else {
            User u = (User) session.getAttribute("user");
            req.setAttribute("u", u);
                        req.setAttribute("list1", listCustomer);
            req.setAttribute("list2", listDetail);
            req.getRequestDispatcher("home.jsp").forward(req, resp);
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    }

}
