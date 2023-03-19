/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import dal.DAOCategory;
import dal.DAOProduct;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.List;
import model.Category;
import model.Product;

/**
 *
 * @author BaHung
 */
@WebServlet(name = "UpdateServlet", urlPatterns = {"/update"})
public class UpdateServlet extends HttpServlet {

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
            String id_raw = request.getParameter("productId");
            int productId;
            DAOProduct d = new DAOProduct();
            DAOCategory DaoCate =  new DAOCategory();
            List<Category>  listCate = DaoCate.getAll();
            productId = Integer.parseInt(id_raw);
            Product p = d.getProductById(productId);
            request.setAttribute("Product", p);
            request.getRequestDispatcher("updateProduct.jsp").forward(request, response);
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
        String id_raw = request.getParameter("productId");
        String productName = request.getParameter("productName");
        String productColor = request.getParameter("productColor");
        String productDesc = request.getParameter("productDescription");
        String productPrice = request.getParameter("productPrice");
        String categoryId = request.getParameter("categoryId");
        String image = request.getParameter("image");
        String image2 = request.getParameter("image2");
        String image3 = request.getParameter("image3");
        String image4 = request.getParameter("image4");
        int productId;
        DAOProduct d = new DAOProduct();

        try {
            productId = Integer.parseInt(id_raw);
            Product c = new Product(productId,
                     Integer.parseInt(productPrice),
                     Integer.parseInt(categoryId),
                     productName,
                     productColor,
                     productDesc,
                     image,image2,image3,image4);
            d.update(c);
            response.sendRedirect("listproduct");
        } catch (NumberFormatException e) {
            System.out.println(e);
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
