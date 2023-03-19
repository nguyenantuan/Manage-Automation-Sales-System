/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author BaHung
 */
public class DAOOrder extends DBContext {

    public void insert(String orderDate, String orderComment, String userName) {
        String sql = "insert into orders values(?,?,?)";
//        String sql1 = "select Max(o.orderId) as orderId  from orders o";
//        int orderId = 0;
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, orderDate);
            st.setString(2, orderComment);
            st.setString(3, userName);
            st.executeUpdate();
//            PreparedStatement st1 = connection.prepareStatement(sql1);
//            ResultSet rs = st1.executeQuery();
//            if (rs.next()) {
//                return orderId = rs.getInt("orderId");
//            }
        } catch (SQLException e) {
            System.out.println(e);
        }
    }
    
    public int getMax() {
        String sql = "select Max(o.orderId) as orderId  from orders o";
        int orderId = 0;
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            if (rs.next()) {
                return orderId = rs.getInt("orderId");
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return orderId;
    }
}
