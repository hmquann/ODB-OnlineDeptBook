/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import dal.CustomerDAO;
import dal.TransactionDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.util.List;
import model.Customer;
import model.User;

/**
 *
 * @author Admin
 */
@WebServlet(name = "ListCustomerController", urlPatterns = {"/ListCustomer"})
public class ListCustomerController extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet ListCustomerController</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ListCustomerController at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        HttpSession session = req.getSession();
        CustomerDAO dao = new CustomerDAO();
        String indexPage = req.getParameter("index");
        boolean pageDirect = false;
        String numberPagingTemp = req.getParameter("numberPagingCustomer");
        if (indexPage == null) {
            indexPage = "1";
        }
        if (numberPagingTemp == "" || numberPagingTemp == null) {
            numberPagingTemp = "5";
        }
        int numberPagingCustomer = Integer.parseInt(numberPagingTemp);
        int index = Integer.parseInt(indexPage);
        if (session.getAttribute("user") == null) {
            resp.sendRedirect("Login");
        } else {
            User u = (User) session.getAttribute("user2");
            boolean operater = Boolean.parseBoolean(req.getParameter("operater"));
            String alterSQL = " total " + (operater ? " > " : " < ") + " 0 AND";
            List<Customer> listCustomer = dao.pagingCustomer(index, u.getAccountID(), numberPagingCustomer, alterSQL);
            req.setAttribute("u", u);
            req.setAttribute("list1", listCustomer);

            int count = dao.getTotalCustomer(u.getAccountID(), alterSQL);
            int endPage = count / numberPagingCustomer;
            if (count % numberPagingCustomer != 0) {
                endPage++;
            }
            req.setAttribute("numberPagingCustomer", numberPagingCustomer);
            req.setAttribute("pageDirect", pageDirect);
            req.setAttribute("endP", endPage);
            req.setAttribute("indexPage", index);
            req.setAttribute("record", count);
            req.setAttribute("operater", operater);
            req.getRequestDispatcher("dashboard.jsp").forward(req, resp);
        }
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
