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
public class DashboardController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession();
        CustomerDAO dao = new CustomerDAO();
        String indexPage = req.getParameter("index");
        int accID = Integer.parseInt(req.getParameter("accountID")); 
        if(indexPage == null){
            indexPage = "1";
        }
        int index = Integer.parseInt(indexPage);
        if (session.getAttribute("user") == null) {
            resp.sendRedirect("Login");
        } else {
            User u = (User) session.getAttribute("user2");
            List<Customer> listCustomer = dao.pagingCustomer(index, accID);
            List<HistoryTransaction> listDetail = dao.getListDebtDetail(u.getAccountID());
            req.setAttribute("u", u);
            req.setAttribute("list1", listCustomer);
            req.setAttribute("list2", listDetail);          
            int count = dao.getTotalCustomer(accID);
            int endPage = count/3;
            if(count % 3 !=0){
                endPage++;
            }
            req.setAttribute("endP", endPage);
            req.getRequestDispatcher("dashboard.jsp").forward(req, resp);
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    }

}
