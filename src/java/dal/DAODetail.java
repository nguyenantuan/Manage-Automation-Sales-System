/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.SQLException;
import model.OrderDetail;

/**
 *
 * @author BaHung
 */
public class DAODetail  extends DBContext{
    public int insert(OrderDetail d) {
        String sql = "insert into orderDetails values(?,?,?,?)";
        int orderId = 0;
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, d.getOrderId());
            st.setInt(2, d.getProductId());
            st.setInt(3, d.getQuantityOrdered());
            st.setInt(4, d.getProductPrice());
            st.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
        return orderId;
    }
}
