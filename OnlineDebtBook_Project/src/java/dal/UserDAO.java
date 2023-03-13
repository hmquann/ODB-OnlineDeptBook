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
public class UserDAO extends DBContext {

    public User getUser(String email, String password) {
        MD5 md = new MD5();
        try {
            String sql = "SELECT [accountEmail]\n"
                    + "      ,[password]\n"
                    + "  FROM [dbo].[Account]\n"
                    + "  WHERE accountEmail= ? AND [password] = ? and isActive=1 ";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setString(1, email);
            stm.setString(2, md.getMd5(password));
            ResultSet rs = stm.executeQuery();
            if (rs.next()) {
                User user = new User();
                user.setEmail(email);
                user.setPassword(password);
                return user;
            }
        } catch (Exception e) {
            System.out.println("getUser error " + e.getMessage());
        }
        return null;
    }

    public void insertNewUser(String name, String pass, String email, String address, String phone) {
        try {
            MD5 md5 = new MD5();
            String sql = "INSERT INTO Account "
                    + "  VALUES (?,?,?,?,?,0,0)";
            PreparedStatement stm = connection.prepareStatement(sql);
            String password = pass.trim();
            stm.setString(1, name);
            stm.setString(2, md5.getMd5(password));
            stm.setString(3, email);
            stm.setString(4, address);
            stm.setString(5, phone);
            stm.executeUpdate();
        } catch (Exception e) {
            System.out.println("insertNewUser error " + e.getMessage());
        }
    }

    public String updatePassword(String pass, String email) {
        try {
            MD5 md5 = new MD5();
            String sql = "UPDATE Account "
                    + "SET password = ? "
                    + "WHERE accountEmail = ?";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setString(1, md5.getMd5(pass));
            stm.setString(2, email);
            stm.executeUpdate();
        } catch (Exception e) {
            System.out.println("UpdatePassword error " + e.getMessage());
        }
        return null;
    }

    public String isActive(boolean isActive, String email) {
        try {
            MD5 md5 = new MD5();
            String sql = "UPDATE Account "
                    + "SET isActive = ? "
                    + "WHERE accountEmail = ?";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setBoolean(1, isActive);
            stm.setString(2, email);
            stm.executeUpdate();
        } catch (Exception e) {
            System.out.println("isActive error " + e.getMessage());
        }
        return null;
    }

    public boolean chekcAccount(String email) {
        try {
            String sql = "SELECT * "
                    + "FROM Account "
                    + "WHERE accountEmail =?";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setString(1, email);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                return true;
            }
        } catch (Exception e) {
            System.out.println("chekcAccount error : " + e.getMessage());
        }
        return false;
    }

    public boolean checkAccount(String phone) {
        try {
            String sql = "SELECT * "
                    + "FROM Account "
                    + "WHERE accountPhone =?";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setString(1, phone);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                return true;
            }
        } catch (Exception e) {
            System.out.println("checkAccount error : " + e.getMessage());
        }
        return false;
    }

    public String updateProfile(String email, String name, String address, String phone) {
        try {
            String sql = "UPDATE Account\n"
                    + "SET accountName = ?,\n"
                    + "accountAddress = ?,\n"
                    + "accountPhone = ?\n"
                    + "WHERE accountEmail = ? ";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setString(1, name);
            stm.setString(2, address);
            stm.setString(3, phone);
            stm.setString(4, email);
            stm.executeUpdate();
        } catch (Exception e) {
            System.out.println("updateProfile error " + e.getMessage());
        }
        return null;
    }

    public User getInfo(String email) {
        try {
            String sql = "SELECT * "
                    + "FROM Account "
                    + "WHERE  accountEmail = ? ";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setString(1, email);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                User u = new User(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4),
                        rs.getString(5), rs.getString(6), rs.getBoolean(7), rs.getBoolean(8));
                return u;
            }
        } catch (Exception e) {
            System.out.println("getInfo error " + e.getMessage());
        }
        return null;
    }

    public User getUserById(String id) {
        try {
            String sql = "SELECT * "
                    + "FROM Account "
                    + "WHERE accountId = ?";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setString(1, id);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                User u = new User(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4),
                        rs.getString(5), rs.getString(6), rs.getBoolean(7), rs.getBoolean(8));
                return u;
            }
        } catch (Exception e) {
            System.out.println("getUserById error " + e.getMessage());
        }
        return null;
    }

    public void activeAccount(String email) {
        try {
            String sql = "UPDATE Account SET isActive = 1 WHERE accountEmail = ? ";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setString(1, email);
            stm.executeUpdate();

        } catch (Exception e) {

        }
    }

    public boolean checkActive(String email) {
        try {
            String sql = "select * from Account where accountEmail = ? and isActive = 1 ";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setString(1, email);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                return true;
            }
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
        return false;
    }

    public List<User> getUserInformation() {
        List<User> t = new ArrayList<>();
        try {
            String sql = "SELECT * "
                    + "  FROM [Account] WHERE isAdmin = 0";
            PreparedStatement stm = connection.prepareStatement(sql);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                t.add(new User(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4),
                        rs.getString(5), rs.getString(6), rs.getBoolean(7), rs.getBoolean(8)));
            }
        } catch (Exception e) {
            System.out.println("getUserById error " + e.getMessage());
        }
        return t;
    }

}
