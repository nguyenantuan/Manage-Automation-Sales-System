/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.PreparedStatement;
import model.Account;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import model.Category;

/**
 *
 * @author BaHung
 */
public class DAOCategory extends DBContext {

    public void update(Category c) {
        String sql = "UPDATE [dbo].[Categories]\n"
                + "   SET [categoryName] = ?\n"
                + " WHERE id=?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, c.getCategoryId());
            st.setString(2, c.getCategoryName());

            st.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }

    public void delete(int id) {
        String sql = "DELETE FROM [dbo].[Categories]\n"
                + "      WHERE id=?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, id);
            st.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }

    public void insert(Category c) {
        String sql = "INSERT INTO [dbo].[categories]\n"
                + "           ([categoryName])\n"
                + "     VALUES\n"
                + "           (?)";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, c.getCategoryName());

            st.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }

    public List<Category> getAll() {
        List<Category> list = new ArrayList<>();
        String sql = "select * from categories";

        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Category c = new Category(rs.getInt("categoryId"),
                        rs.getString("categoryName"));
                list.add(c);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }
}
