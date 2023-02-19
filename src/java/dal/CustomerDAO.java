/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import model.*;

/**
 *
 * @author trinh
 */
public class CustomerDAO extends DBContext {

    public List<Customer> getListDebtor(int accountID) {
        List<Customer> t = new ArrayList<>();

        String sql = "SELECT * FROM Customer WHERE accountID = ?";
        try {
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setInt(1, accountID);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                t.add(new Customer(rs.getInt(1), rs.getString(2), rs.getString(3),
                        rs.getString(4), rs.getString(5), rs.getString(6), rs.getString(7), rs.getInt(8)));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return (t);
    }

    public List<HistoryTransaction> getListDebtDetail(int accountID) {
        List<HistoryTransaction> t = new ArrayList<>();

        String sql = "SELECT ht.transactionID,ht.note,ht.moneyDebt,ht.classify,ht.dateCreate,ht.dateCreate,ht.customerID FROM historyTransaction ht\n"
                + "LEFT JOIN Customer cus ON ht.customerID = cus.customerID \n"
                + "WHERE cus.accountID = ?;";
        try {
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setInt(1, accountID);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                t.add(new HistoryTransaction(rs.getInt(1), rs.getString(2), rs.getFloat(3), rs.getBoolean(4),
                        rs.getString(5), rs.getString(6), rs.getInt(7)));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return (t);
    }
    
    public List<HistoryTransaction> getListDebtCustomerID(int accountID, int customerID) {
        List<HistoryTransaction> t = new ArrayList<>();

        String sql = "SELECT ht.transactionID,ht.note,ht.moneyDebt,ht.classify,ht.dateCreate,ht.dateCreate,ht.customerID FROM historyTransaction ht\n"
                + "LEFT JOIN Customer cus ON ht.customerID = cus.customerID \n"
                + "WHERE cus.accountID = ? AND ht.customerID = ?";
        try {
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setInt(1, accountID);
            stm.setInt(2, accountID);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                t.add(new HistoryTransaction(rs.getInt(1), rs.getString(2), rs.getFloat(3), rs.getBoolean(4),
                        rs.getString(5), rs.getString(6), rs.getInt(7)));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return (t);
    }
    
}
