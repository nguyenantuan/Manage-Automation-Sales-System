/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import java.sql.Date;
import java.time.LocalDate;

/**
 *
 * @author BaHung
 */
public class Order {
    private int orderId,userId;
    private String orderComment;
    private String orderDate;

    public Order() {
    }

    public Order(int orderId, int userId, String orderComment, String orderDate) {
        this.orderId = orderId;
        this.userId = userId;
        this.orderComment = orderComment;
        this.orderDate = orderDate;
    }

    public String getOrderDate() {
        return orderDate;
    }

    public void setOrderDate(String orderDate) {
        this.orderDate = orderDate;
    }

   

    public int getOrderId() {
        return orderId;
    }

    public void setOrderId(int orderId) {
        this.orderId = orderId;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public String getOrderComment() {
        return orderComment;
    }

    public void setOrderComment(String orderComment) {
        this.orderComment = orderComment;
    }

   
    
}
