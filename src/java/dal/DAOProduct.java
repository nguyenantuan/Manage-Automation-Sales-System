/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import model.Product;

/**
 *
 * @author BaHung
 */
public class DAOProduct extends DBContext {

    public List<Product> getAll() {
        List<Product> list = new ArrayList<>();
        String sql = "select * from products";

        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Product c = new Product(rs.getInt("productId"),
                        rs.getInt("productPrice"),
                        rs.getInt("categoryId"),
                        rs.getString("productName"),
                        rs.getString("productColor"),
                        rs.getString("productDescription"),
                        rs.getString("Image"),
                        rs.getString("Image2"),
                        rs.getString("Image3"), 
                        rs.getString("Image4")
                );
                list.add(c);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }

    public int countProduct() {
        int count = 0;
        String sql = "SELECT COUNT(productId) as countP FROM products";

        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            if (rs.next()) {
                count = rs.getInt("countP");
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return count;
    }

    public void delete(int productId) {
        String sql = "DELETE FROM products WHERE productId=?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, productId);
            st.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }

    //update
    public void update(Product p) {
        String sql = "UPDATE [dbo].[Products]\n"
                + "   SET [productName] = ?,[productColor] = ?,[productDescription] = ?,[productPrice] = ?,[categoryId] = ?,[Image] = ?\n"
                + " WHERE productId = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, p.getProductName());
            st.setString(2, p.getProductColor());
            st.setString(3, p.getProductDescription());
            st.setInt(4, p.getProductPrice());
            st.setInt(5, p.getCategoryId());
            st.setString(6, p.getImage());
            st.setInt(7, p.getProductId());

            st.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }

    public List<Product> Search(String productName) {
        List<Product> list = new ArrayList<>();
        String sql = "select * from products where productName like ? or productColor like ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, "%" + productName + "%");
            st.setString(2, "%" + productName + "%");
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Product c = new Product(rs.getInt("productId"),
                        rs.getInt("productPrice"),
                        rs.getInt("categoryId"),
                        rs.getString("productName"),
                        rs.getString("productColor"),
                        rs.getString("productDescription"),
                        rs.getString("Image"), rs.getString("Image2"), rs.getString("Image3"), rs.getString("Image4")
                );
                list.add(c);
            }
        } catch (SQLException e) {
        }
        return list;
    }

    public Product getProductById(int id) {
        String sql = "select * from products where productId=?";

        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, id);
            ResultSet rs = st.executeQuery();
            if (rs.next()) {
                Product p = new Product(rs.getInt("productId"),
                        rs.getInt("productPrice"),
                        rs.getInt("categoryId"),
                        rs.getString("productName"),
                        rs.getString("productColor"),
                        rs.getString("productDescription"),
                        rs.getString("Image"),
                        rs.getString("Image2"),
                        rs.getString("Image3"),
                        rs.getString("Image4")
                );
                return p;
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }

    public void insert(Product p) {
        String sql = "INSERT INTO [products] ([productPrice], [categoryId], [productName], "
                + "[productColor], [productDescription], [Image])\n"
                + "VALUES (?,?,?,?,?,?);";
        try {
            PreparedStatement st = connection.prepareStatement(sql);

            st.setInt(1, p.getProductPrice());
            st.setInt(2, p.getCategoryId());
            st.setString(3, p.getProductName());
            st.setString(4, p.getProductColor());
            st.setString(5, p.getProductDescription());
            st.setString(6, p.getImage());

            st.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }

    public List<Product> Sort(String selectValue) {
        List<Product> list = new ArrayList<>();
        String sql = "select * from products where productPrice <= ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, selectValue);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Product c = new Product(rs.getInt("productId"),
                        rs.getInt("productPrice"),
                        rs.getInt("categoryId"),
                        rs.getString("productName"),
                        rs.getString("productColor"),
                        rs.getString("productDescription"),
                        rs.getString("Image"),
                        rs.getString("Image2"),
                        rs.getString("Image3"),
                        rs.getString("Image4")
                );
                list.add(c);
            }
        } catch (SQLException e) {
        }
        return list;
    }
}
