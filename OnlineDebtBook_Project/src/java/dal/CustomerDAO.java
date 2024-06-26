/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
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
        String sql = "SELECT * "
                + "FROM Customer "
                + "WHERE accountID = ? ";
        try {
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setInt(1, accountID);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                t.add(new Customer(rs.getInt(1), rs.getString(2), rs.getString(3),
                        rs.getString(4), rs.getString(5), rs.getString(6), rs.getString(7), rs.getInt(8), rs.getFloat(9)));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return (t);
    }

    public String insertNewDebtor(String name, String address, String phone, String email, String accountId) {
        try {
            LocalDateTime currentTime = LocalDateTime.now();
            DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss.SSS");
            Timestamp sqlDateTime = Timestamp.valueOf(currentTime.format(formatter));

            String sql = "insert into [Customer] "
                    + "  values (?,?,?,?,?,?,?,0)";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setString(1, name);
            stm.setString(2, address);
            stm.setString(3, phone);
            stm.setString(4, email);
            stm.setTimestamp(5, sqlDateTime);
            stm.setTimestamp(6, sqlDateTime);
            stm.setString(7, accountId);
            stm.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    public int getTotalCustomer(int accountID,String alterSQL) {
        String sql = "select count(*) from Customer where " + alterSQL + " accountID= ?";
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

    public List<Customer> pagingCustomer(int index, int accountID, int numberPagingCustomer, String alterSQL) {
        List<Customer> t = new ArrayList<>();
        String sql = "  select * from Customer where " + alterSQL + " accountID= ? order by customerID ASC \n"
                + "  offset ? rows fetch next " + numberPagingCustomer + " rows only ";
        try {
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setInt(1, accountID);
            stm.setInt(2, (index - 1) * numberPagingCustomer);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                t.add(new Customer(rs.getInt(1), rs.getString(2), rs.getString(3),
                        rs.getString(4), rs.getString(5), rs.getString(6), rs.getString(7), rs.getInt(8), rs.getFloat(9)));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return t;
    }

    public List<Customer> searchCustomerByName(String name, int accountID) {
        List<Customer> t = new ArrayList<>();
        String sql = "  select * from Customer\n"
                + "  where customerName like ? AND accountID=?";
        try {
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setString(1, "%" + name + "%");
            stm.setInt(2, accountID);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                t.add(new Customer(rs.getInt(1), rs.getString(2), rs.getString(3),
                        rs.getString(4), rs.getString(5), rs.getString(6), rs.getString(7), rs.getInt(8), rs.getFloat(9)));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return t;
    }

    public Customer getCustomerByCustomerId(String CustomerId) {
        String sql = "select * from Customer\n"
                + "where customerID = ?";
        try {
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setString(1, CustomerId);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                return new Customer(rs.getInt(1), rs.getString(2), rs.getString(3),
                        rs.getString(4), rs.getString(5), rs.getString(6), rs.getString(7), rs.getInt(8), rs.getFloat(9));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    public void updateCustomer(String name, String address, String phone, String email, String CustomerId) {

        try {
            LocalDateTime currentTime = LocalDateTime.now();
            DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss.SSS");
            Timestamp sqlDateTime = Timestamp.valueOf(currentTime.format(formatter));

            String sql = "UPDATE Customer "
                    + "SET customerName = ?,customerAddress = ?,customerPhone = ?,customerEmail = ?,dateUpdateCustomer = ?\n"
                    + "WHERE customerID = ?";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setString(1, name);
            stm.setString(2, address);
            stm.setString(3, phone);
            stm.setString(4, email);
            stm.setTimestamp(5, sqlDateTime);
            stm.setString(6, CustomerId);
            stm.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void updateCustomerUpdateDateWhenAddNewDebt(int CustomerId) {

        try {
            LocalDateTime currentTime = LocalDateTime.now();
            DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss.SSS");
            Timestamp sqlDateTime = Timestamp.valueOf(currentTime.format(formatter));

            String sql = "UPDATE Customer "
                    + "SET dateUpdateCustomer = ?\n"
                    + "WHERE customerID = ?";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setTimestamp(1, sqlDateTime);
            stm.setInt(2, CustomerId);
            stm.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void updateTotalCustomer(String money, boolean classify, String CustomerId) {
        try {
            String sql = "UPDATE Customer "
                    + "SET total = total " + (classify ? " + " : " - ") + " ? "
                    + "WHERE customerID = ?";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setString(1, money);
            stm.setString(2, CustomerId);
            stm.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public int getTotalSortCustomer(int accountID, boolean operator) {
        String sql = "select count(*) from Customer where accountID= ? AND total " + (operator ? " > " : " < ") + " 0";
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

    public static void main(String[] args) {
        CustomerDAO dao = new CustomerDAO();
        List<Customer> listCustomer = dao.pagingCustomer(2, 4, 5, "");
        for (Customer customer : listCustomer) {
            System.out.println(customer);
        }
    }
}
