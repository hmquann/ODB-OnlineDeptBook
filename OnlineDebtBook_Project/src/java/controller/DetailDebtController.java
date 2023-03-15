/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import dal.TransactionDAO;
import jakarta.servlet.annotation.WebServlet;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.util.List;
import model.HistoryTransaction;
import model.User;

/**
 *
 * @author trinh
 */
@WebServlet(name = "DetailDebtController", urlPatterns = {"/DetailDebt"})
public class DetailDebtController extends HttpServlet {

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
            HttpSession session = request.getSession();
            int CustomerId = Integer.parseInt(request.getParameter("Customerid"));
            TransactionDAO dao = new TransactionDAO();
            String indexPage = request.getParameter("index");

            if (indexPage == null) {
                indexPage = "1";
            }
            
            if (session.getAttribute("user") == null) {
                response.sendRedirect("Login");
            } else {
                int index = Integer.parseInt(indexPage);
                int count = dao.getTotalListDebt(CustomerId);
                int endPage = count / 10;
                if (count % 10 != 0) {
                    endPage++;
                }

                request.setAttribute("endP", endPage);
                request.setAttribute("indexPage", index);
                request.setAttribute("record", count);

                List<HistoryTransaction> listDebtByCustomerId = dao.getListDebtCustomerID(index, CustomerId);
                request.setAttribute("listDetail", listDebtByCustomerId);
                session.setAttribute("CustomerId", CustomerId);
                request.getRequestDispatcher("detail.jsp").forward(request, response);
            }
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
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);

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
