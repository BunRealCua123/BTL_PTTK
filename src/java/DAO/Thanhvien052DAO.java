/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import Model.Thanhvien052;
import java.util.*;
import java.sql.*;

/**
 *
 * @author ADMIN
 */
public class Thanhvien052DAO extends DAO {

    public Thanhvien052DAO() {
        super();
    }

    public Thanhvien052 checkLogin(String username, String password) {
        Thanhvien052 thanhvien052 = new Thanhvien052();
        String sql = "SELECT * FROM tblThanhvien052 WHERE username=? AND password=?";
        try {
            PreparedStatement stmt = con.prepareStatement(sql);
            stmt.setString(1, username);
            stmt.setString(2, password);
            ResultSet rs = stmt.executeQuery();
            while (rs.next()) {
                thanhvien052 = new Thanhvien052(rs.getInt("id"), rs.getString("username"), rs.getString("password"), rs.getString("ten"), rs.getString("ngaysinh"), rs.getString("diachi"), rs.getString("email"), rs.getString("sdt"), rs.getString("vaitro"));
                System.out.println(thanhvien052);
            }
        } catch (Exception e) {
            System.out.println("");
        }
        return thanhvien052;
    }

//    public static void main(String[] args) {
//        Thanhvien052DAO thanhvien052DAO = new Thanhvien052DAO();
//        Thanhvien052 thanhvien052 = thanhvien052DAO.checkLogin("user1", "12345");
//    }
}
