/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author pc
 */
public class User {
    int accountID;
    String accountName;
    String password;
    String email;
    String address;
    String phone;
    boolean isActive;
    boolean isAdmin;

    public User() {
    }

    public User(int accountID, String accountName, String password, String email, String address, String phone, boolean isActive, boolean isAdmin) {
        this.accountID = accountID;
        this.accountName = accountName;
        this.password = password;
        this.email = email;
        this.address = address;
        this.phone = phone;
        this.isActive = isActive;
        this.isAdmin = isAdmin;
    }

    public int getAccountID() {
        return accountID;
    }

    public void setAccountID(int accountID) {
        this.accountID = accountID;
    }

    public String getAccountName() {
        return accountName;
    }

    public void setAccountName(String accountName) {
        this.accountName = accountName;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public boolean isIsActive() {
        return isActive;
    }

    public void setIsActive(boolean isActive) {
        this.isActive = isActive;
    }

    public boolean isIsAdmin() {
        return isAdmin;
    }

    public void setIsAdmin(boolean isAdmin) {
        this.isAdmin = isAdmin;
    }

    @Override
    public String toString() {
        return "User{" + "accountID=" + accountID + ", accountName=" + accountName + ", password=" + password + ", email=" + email + ", address=" + address + ", phone=" + phone + ", isActive=" + isActive + ", isAdmin=" + isAdmin + '}';
    }
    
}
