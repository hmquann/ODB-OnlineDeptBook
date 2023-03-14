/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author trinh
 */
public class HistoryTransaction {
    private int transactionID;
    private String note;
    private float moneyDebt;
    private boolean classify;
    private String dateDebt;
    private String dateCreate;
    private int customerID;
    private int CreateBy;
    
    public HistoryTransaction() {
    }

    public HistoryTransaction(int transactionID, String note, float moneyDebt, boolean classify, String dateDebt, String dateCreate, int customerID, int CreateBy) {
        this.transactionID = transactionID;
        this.note = note;
        this.moneyDebt = moneyDebt;
        this.classify = classify;
        this.dateDebt = dateDebt;
        this.dateCreate = dateCreate;
        this.customerID = customerID;
        this.CreateBy = CreateBy;
    }

    public int getTransactionID() {
        return transactionID;
    }

    public void setTransactionID(int transactionID) {
        this.transactionID = transactionID;
    }

    public String getNote() {
        return note;
    }

    public void setNote(String note) {
        this.note = note;
    }

    public float getMoneyDebt() {
        return moneyDebt;
    }

    public void setMoneyDebt(float moneyDebt) {
        this.moneyDebt = moneyDebt;
    }

    public boolean isClassify() {
        return classify;
    }

    public void setClassify(boolean classify) {
        this.classify = classify;
    }

    public String getDateDebt() {
        return dateDebt;
    }

    public void setDateDebt(String dateDebt) {
        this.dateDebt = dateDebt;
    }

    public String getDateCreate() {
        return dateCreate;
    }

    public void setDateCreate(String dateCreate) {
        this.dateCreate = dateCreate;
    }

    public int getCustomerID() {
        return customerID;
    }

    public void setCustomerID(int customerID) {
        this.customerID = customerID;
    }

    public int getCreateBy() {
        return CreateBy;
    }

    public void setCreateBy(int CreateBy) {
        this.CreateBy = CreateBy;
    }

    @Override
    public String toString() {
        return "HistoryTransaction{" + "transactionID=" + transactionID + ", note=" + note + ", moneyDebt=" + moneyDebt + ", classify=" + classify + ", dateDebt=" + dateDebt + ", dateCreate=" + dateCreate + ", customerID=" + customerID + ", CreateBy=" + CreateBy + '}';
    }

   
    
}
