/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author bogia
 */
public class listInfoCus {
    private int Id;
    private String Cusname;
    private String Phone;
    private String Address;
    private String Email;

    public listInfoCus() {
    }

    public listInfoCus(int Id, String Cusname, String Phone, String Address, String Email) {
        this.Id = Id;
        this.Cusname = Cusname;
        this.Phone = Phone;
        this.Address = Address;
        this.Email = Email;
    }

    public int getId() {
        return Id;
    }

    public void setId(int Id) {
        this.Id = Id;
    }

    public String getCusname() {
        return Cusname;
    }

    public void setCusname(String Cusname) {
        this.Cusname = Cusname;
    }

    public String getPhone() {
        return Phone;
    }

    public void setPhone(String Phone) {
        this.Phone = Phone;
    }

    public String getAddress() {
        return Address;
    }

    public void setAddress(String Address) {
        this.Address = Address;
    }

    public String getEmail() {
        return Email;
    }

    public void setEmail(String Email) {
        this.Email = Email;
    }
    
}
