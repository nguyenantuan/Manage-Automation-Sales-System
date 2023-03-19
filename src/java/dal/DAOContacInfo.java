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
//import model.Product;
import model.listInfoCus;
public class DAOContacInfo extends DBContext {
    
    public void insert(String Cusname, String Phone, String Address,String Email) {
        String sql = "insert into listInfoCus values(?,?,?,?)";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, Cusname);
            st.setString(2, Phone);
            st.setString(3, Address);
            st.setString(4, Email);
            st.executeUpdate();

        } catch (SQLException e) {
            System.out.println(e);
        }
    }
    public ArrayList getAllCus() {
        ArrayList<listInfoCus> list1 = new ArrayList<>();
        String sql = "select * FROM [dbo].[listInfoCus] ";

        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                listInfoCus c = new listInfoCus(rs.getInt("Id"),
                        rs.getString("Cusname"),
                        rs.getString("Phone"),
                        rs.getString("Address"),
                        rs.getString("Email")                        
                );
                list1.add(c);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list1;
    }
}
