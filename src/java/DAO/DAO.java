/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import java.sql.*;

/**
 *
 * @author ADMIN
 */
public class DAO {

    public static Connection con;

    public DAO() {
        try {
            String DB_URL = "jdbc:mysql://localhost:3306/btl_cuahang";
            String USER_NAME = "root";
            String PASSWORD = "12345";
            Class.forName("com.mysql.cj.jdbc.Driver");
            con = DriverManager.getConnection(DB_URL, USER_NAME, PASSWORD);
            System.out.println("connect successfully!");
        } catch (Exception ex) {
            System.out.println("connect failure!");
            ex.printStackTrace();
        }
    }

    public static void main(String[] args) {
        DAO dao = new DAO();
    }
}
