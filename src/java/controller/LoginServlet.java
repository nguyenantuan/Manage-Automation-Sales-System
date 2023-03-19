/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import dal.DAOAccount;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;
import model.Account;
import model.ProductCart;

/**
 *
 * @author BaHung
 */
@WebServlet(name = "LoginServlet", urlPatterns = {"/login"})
public class LoginServlet extends HttpServlet {

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
            out.println("<title>Servlet LoginServlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet LoginServlet at " + request.getContextPath() + "</h1>");
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
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

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
        //lay username va pass tu form
        String u = request.getParameter("username");
        String p = request.getParameter("password");
        String r = request.getParameter("rem");

        //tao 3 cookie
        Cookie cu = new Cookie("cuser", u);
        Cookie cp = new Cookie("cpass", p);
        Cookie cr = new Cookie("crem", r);
        if (r != null) {
            //dat thoi gian so - 7 ngay
            cu.setMaxAge(60 * 60 * 24 * 7);
            cp.setMaxAge(60 * 60 * 24 * 7);
            cr.setMaxAge(60 * 60 * 24 * 7);
        } else {
            //xoa
            cu.setMaxAge(0);
            cp.setMaxAge(0);
            cr.setMaxAge(0);
        }
        // add vaof browser
        response.addCookie(cu);
        response.addCookie(cp);
        response.addCookie(cr);
        //check xem co chua
        DAOAccount d = new DAOAccount();
        Account a = d.check(u, p);
        if (a == null) {
            //k tim thay
            String ms = "username or pass is incorrect";
            request.setAttribute("ms", ms);
            response.sendRedirect("home");

        } else {
            //tim thay
            //tao session
            List<ProductCart> cart = new ArrayList<>();
            Double total;
            total = 0.0;
            HttpSession session = request.getSession();
//            session.setAttribute("account", a);
//            session.setAttribute("accountUsername", a.getUsername());
            session.setAttribute("account", a.getUsername());
            session.setAttribute("cart", cart);
            session.setAttribute("total", total);
            session.setAttribute("roleAccount", a.getRole());
            session.setAttribute("oldPass", a.getPassword());
            //dua nguoi dung sang trang home
            response.sendRedirect("home");
        }
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
