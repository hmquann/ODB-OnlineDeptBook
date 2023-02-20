/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import model.User;
import dal.DBContext;
import java.util.List;


/**
 *
 * @author pc
 */
public class UserDAO extends DBContext{
    public ArrayList<User> getAllUser() {
    ArrayList<User> list = new ArrayList<>();
          try {
            String sql = "select * from Account";
            PreparedStatement stm = connection.prepareStatement(sql);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                User u = new User(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4),
                        rs.getString(5), rs.getString(6), rs.getBoolean(7), rs.getBoolean(8));
                list.add(u);
            }
        } catch (Exception e) {
             System.out.println("Get all error "+ e.getMessage());
        }
        return list;
    }

    public String insertNewUser(String name, String pass, String email, String address, String phone) {
        try {
            MD5 md5 = new MD5();
            String sql = "insert into Account "
                    + "  values (?,?,?,?,?,0,0)";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setString(1, name);
            stm.setString(2, md5.getMd5(pass));
            stm.setString(3, email);
            stm.setString(4, address);
            stm.setString(5, phone);
            stm.executeUpdate();

        }catch (Exception e) {
                 System.out.println("Get all error "+ e.getMessage());
        }
         return null;
    }

    public String UpdatePassword(String pass, String email){
        try{
            MD5 md5 = new MD5();
            String sql = "UPDATE Account SET password = ? WHERE accountEmail = ?";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setString(1, md5.getMd5(pass));
            stm.setString(2, email);
            stm.executeUpdate();
        } catch (Exception e) {
                 System.out.println("Get all error "+ e.getMessage());
        }
        return null;
    }
    
    public boolean chekcAccount(String email) {
        try {
            String sql = "  select * from Account where accountEmail =?";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setString(1, email);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                return true;
            }
        } catch (Exception e) {
            System.out.println("Register error : " + e.getMessage());
        }
        return false;
    }

    public boolean checkAccount(String phone) {
        try {
            String sql = "  select * from Account where accountPhone =?";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setString(1, phone);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                return true;
            }
        } catch (Exception e) {
            System.out.println("Register error : " + e.getMessage());
        }
        return false;
    }
    
}

