/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import model.HistoryTransaction;

/**
 *
 * @author trinh
 */
public class TransactionDAO extends DBContext {

    public List<HistoryTransaction> getListDebtCustomerID(int index, int customerID) {
        List<HistoryTransaction> t = new ArrayList<>();
        String sql = "SELECT *"
                + "  FROM [historyTransaction]"
                + "  WHERE customerID = ?"
                + "  ORDER BY [transactionID]"
                + "  offset ? rows fetch next 10 rows only";
        try {
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setInt(1, customerID);
            stm.setInt(2, (index - 1) * 10);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                t.add(new HistoryTransaction(rs.getInt(1), rs.getString(2), rs.getFloat(3), rs.getBoolean(4),
                        rs.getString(5), rs.getString(6), rs.getInt(7), rs.getInt(8)));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return (t);
    }

    public int getTotalListDebt(int accountID) {
        String sql = "select count(*) from historyTransaction where customerID=? ";
        try {
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setInt(1, accountID);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                return rs.getInt(1);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return 0;
    }

    public String insertNewDebt(String note, float money, boolean classify, String dateDebt, int customerID, int CreateBy) {
        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm");
        Date now = new Date();
        String formattedDate = dateFormat.format(now);
        try {
            String sql = "INSERT INTO [historyTransaction]\n"
                    + "  VALUES(?,?,?,?,?,?,?)";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setString(1, note);
            stm.setFloat(2, money);
            stm.setBoolean(3, classify);
            stm.setString(4, dateDebt);
            stm.setString(5, formattedDate);
            stm.setInt(6, customerID);
            stm.setInt(7, CreateBy);
            stm.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }
    public static void main(String[] args) {
        TransactionDAO dao = new TransactionDAO();
        List<HistoryTransaction> getListDebtCustomerID = dao.getListDebtCustomerID(2, 25);
        int index = dao.getTotalListDebt(25);
        for (HistoryTransaction historyTransaction : getListDebtCustomerID) {
            System.out.println(historyTransaction);
        }
        System.out.println(index);
    }
}
