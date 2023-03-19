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
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

/**
 *
 * @author BaHung
 */
@WebServlet(name = "ChangeServlet", urlPatterns = {"/change"})
public class ChangeServlet extends HttpServlet {

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
            out.println("<title>Servlet ChangeServlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ChangeServlet at " + request.getContextPath() + "</h1>");
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
        String oldPassword = request.getParameter("oldPassword");
        String newPassword = request.getParameter("newPassword");
        String confirmPassword = request.getParameter("confirmPassword");
        HttpSession session = request.getSession();
        String username = (String) session.getAttribute("account");
        String oldPassSS = (String) session.getAttribute("oldPass");
        DAOAccount d = new DAOAccount();

//        if (oldPassword.contains(oldPassSS)) {
//            if (newPassword.contains(confirmPassword)) {
//                d.change(username, newPassword);
//                response.getWriter().print("1");
//            } else {
//                response.getWriter().print("3");
//            }
//        }else if (newPassword.length() < 8) {
//            response.getWriter().print("2");
//        } else {
//            response.getWriter().print("0");
//        }

        if (newPassword.length() < 8) {
            response.getWriter().print("2");
        } else {
            if (oldPassword.contains(oldPassSS)) {
                if (newPassword.contains(confirmPassword)) {
                    d.change(username, newPassword);
                    response.getWriter().print("1");
                } else {
                    response.getWriter().print("3");
                }
            } else {
                response.getWriter().print("0");
            }
//            response.sendRedirect("home");
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
