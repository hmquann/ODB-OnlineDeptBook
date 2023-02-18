/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author trinh
 */
public class Customer {
    private int customerID;
    private String customerName;
    private String customerAddress;
    private String customerPhone;
    private String customerEmail;
    private String dateCustomerCreate;
    private String dateUpdateCustomer;
    private int accountID;

    public Customer() {
    }

    public Customer(int customerID, String customerName, String customerAddress, String customerPhone, String customerEmail, String dateCustomerCreate, String dateUpdateCustomer, int accountID) {
        this.customerID = customerID;
        this.customerName = customerName;
        this.customerAddress = customerAddress;
        this.customerPhone = customerPhone;
        this.customerEmail = customerEmail;
        this.dateCustomerCreate = dateCustomerCreate;
        this.dateUpdateCustomer = dateUpdateCustomer;
        this.accountID = accountID;
    }

    public int getCustomerID() {
        return customerID;
    }

    public void setCustomerID(int customerID) {
        this.customerID = customerID;
    }

    public String getCustomerName() {
        return customerName;
    }

    public void setCustomerName(String customerName) {
        this.customerName = customerName;
    }

    public String getCustomerAddress() {
        return customerAddress;
    }

    public void setCustomerAddress(String customerAddress) {
        this.customerAddress = customerAddress;
    }

    public String getCustomerPhone() {
        return customerPhone;
    }

    public void setCustomerPhone(String customerPhone) {
        this.customerPhone = customerPhone;
    }

    public String getCustomerEmail() {
        return customerEmail;
    }

    public void setCustomerEmail(String customerEmail) {
        this.customerEmail = customerEmail;
    }

    public String getDateCustomerCreate() {
        return dateCustomerCreate;
    }

    public void setDateCustomerCreate(String dateCustomerCreate) {
        this.dateCustomerCreate = dateCustomerCreate;
    }

    public String getDateUpdateCustomer() {
        return dateUpdateCustomer;
    }

    public void setDateUpdateCustomer(String dateUpdateCustomer) {
        this.dateUpdateCustomer = dateUpdateCustomer;
    }

    public int getAccountID() {
        return accountID;
    }

    public void setAccountID(int accountID) {
        this.accountID = accountID;
    }

    @Override
    public String toString() {
        return "Customer{" + "customerID=" + customerID + ", customerName=" + customerName + ", customerAddress=" + customerAddress + ", customerPhone=" + customerPhone + ", customerEmail=" + customerEmail + ", dateCustomerCreate=" + dateCustomerCreate + ", dateUpdateCustomer=" + dateUpdateCustomer + ", accountID=" + accountID + '}';
    }

   

    
}
