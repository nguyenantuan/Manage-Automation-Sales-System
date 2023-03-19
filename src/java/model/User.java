/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import java.sql.Date;

/**
 *
 * @author BaHung
 */
public class User {
    private int userId,accountId,phone;
    private String fullName,address,email,gender;
    private Date DoB;

    public User() {
    }

    public User(int userId, int accountId, int phone, String fullName, String address, String email, String gender, Date DoB) {
        this.userId = userId;
        this.accountId = accountId;
        this.phone = phone;
        this.fullName = fullName;
        this.address = address;
        this.email = email;
        this.gender = gender;
        this.DoB = DoB;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public int getAccountId() {
        return accountId;
    }

    public void setAccountId(int accountId) {
        this.accountId = accountId;
    }

    public int getPhone() {
        return phone;
    }

    public void setPhone(int phone) {
        this.phone = phone;
    }

    public String getFullName() {
        return fullName;
    }

    public void setFullName(String fullName) {
        this.fullName = fullName;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public Date getDoB() {
        return DoB;
    }

    public void setDoB(Date DoB) {
        this.DoB = DoB;
    }
    
    
}
