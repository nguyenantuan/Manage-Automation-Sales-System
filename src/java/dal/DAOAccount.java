/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import model.Account;
import model.User;

/**
 *
 * @author BaHung
 */
public class DAOAccount extends DBContext {

    public Account check(String username, String password) {
        String sql = "select * from accounts where userName=? and Password=?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, username);
            st.setString(2, password);
            ResultSet rs = st.executeQuery();
            if (rs.next()) {
                return new Account(username, password, rs.getInt("roleId"));
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }

    public boolean existed(String username) {
        String sql = "select * from accounts where username=?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, username);
            ResultSet rs = st.executeQuery();
            if (rs.next()) {
                return true;
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return false;
    }

    //register
    public void insert(String username, String password) {
        String sql = "insert into accounts values(?,?,3)";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, username);
            st.setString(2, password);
            st.executeUpdate();

        } catch (SQLException e) {
            System.out.println(e);
        }
    }

//    //change pass
    public void change(String username, String password) {
        String sql = "update accounts set password=? where username=?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, password);
            st.setString(2, username);
            st.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }
//
//    //update profile
//    public void update(Account a) {
//        String sql = "update admin set role where username=?";
//        try {
//            PreparedStatement st = connection.prepareStatement(sql);
//            st.setInt(1, a.getRole());
//            st.setString(2, a.getUsername());
//            st.executeUpdate();
//
//        } catch (SQLException e) {
//            System.out.println(e);
//        }
//    }
    
//    public User getUserByUserName(String username) {
//        String sql = "select * from products where productId=?";
//
//        try {
//            PreparedStatement st = connection.prepareStatement(sql);
//            st.setInt(1, id);
//            ResultSet rs = st.executeQuery();
//            if (rs.next()) {
//                Product p = new Product(rs.getInt("productId"),
//                        rs.getInt("productPrice"),
//                        rs.getInt("categoryId"),
//                        rs.getString("productName"),
//                        rs.getString("productColor"),
//                        rs.getString("productDescription"),
//                        rs.getString("Image")
//                );
//                return p;
//            }
//        } catch (SQLException e) {
//            System.out.println(e);
//        }
//        return null;
//    }
}
