/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author BaHung
 */
public class OrderDetail {
    private int orderDetailId,orderId,productId,quantityOrdered,productPrice;

    public OrderDetail() {
    }

    public OrderDetail(int orderDetailId, int orderId, int productId, int quantityOrdered, int productPrice) {
        this.orderDetailId = orderDetailId;
        this.orderId = orderId;
        this.productId = productId;
        this.quantityOrdered = quantityOrdered;
        this.productPrice = productPrice;
    }

    public OrderDetail( int orderId, int productId, int quantityOrdered, int productPrice) {
        this.orderId = orderId;
        this.productId = productId;
        this.quantityOrdered = quantityOrdered;
        this.productPrice = productPrice;
    }
    
    public int getOrderDetailId() {
        return orderDetailId;
    }

    public void setOrderDetailId(int orderDetailId) {
        this.orderDetailId = orderDetailId;
    }

    public int getOrderId() {
        return orderId;
    }

    public void setOrderId(int orderId) {
        this.orderId = orderId;
    }

    public int getProductId() {
        return productId;
    }

    public void setProductId(int productId) {
        this.productId = productId;
    }

    public int getQuantityOrdered() {
        return quantityOrdered;
    }

    public void setQuantityOrdered(int quantityOrdered) {
        this.quantityOrdered = quantityOrdered;
    }

    public int getProductPrice() {
        return productPrice;
    }

    public void setProductPrice(int productPrice) {
        this.productPrice = productPrice;
    }
    
}
