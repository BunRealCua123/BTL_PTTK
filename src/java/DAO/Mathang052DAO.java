/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import Model.Mathang052;
import java.util.*;
import java.sql.*;

/**
 *
 * @author ADMIN
 */
public class Mathang052DAO extends DAO {

    public Mathang052DAO() {
        super();
    }

    public ArrayList<Mathang052> getDSMathang(String keyword) {
        ArrayList<Mathang052> dsMathang = new ArrayList<>();
        String sql = "SELECT * FROM tblMathang052 WHERE ten LIKE ?";

        try (PreparedStatement stmt = con.prepareStatement(sql)) {
            stmt.setString(1, "%" + keyword + "%");
            ResultSet rs = stmt.executeQuery();

            while (rs.next()) {
                String maMH = rs.getString("maMH");
                String ten = rs.getString("ten");
                float giaban = rs.getFloat("giaban");
                String mota = rs.getString("mota");

                Mathang052 mathang052 = new Mathang052(maMH, ten, mota, giaban);
                dsMathang.add(mathang052);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return dsMathang;
    }

    public Mathang052 getMathang(String ma) {
        Mathang052 mathang052 = new Mathang052();
        String sql = "SELECT * FROM tblMathang052 WHERE maMH = ?";
        try (PreparedStatement stmt = con.prepareStatement(sql)) {
            stmt.setString(1, ma);
            ResultSet rs = stmt.executeQuery();
            String maMH = "", ten = "", mota = "";
            float giaban = 0;
            while (rs.next()) {
                maMH = rs.getString("maMH");
                ten = rs.getString("ten");
                giaban = rs.getFloat("giaban");
                mota = rs.getString("mota");
                mathang052 = new Mathang052(maMH, ten, mota, giaban);
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return mathang052;
    }

//    public static void main(String[] args) {
//        Mathang052DAO mathang052DAO = new Mathang052DAO();
//        ArrayList<Mathang052> mh = mathang052DAO.getDSMathang("");
//        for (int i = 0; i < mh.size(); i++) {
//            System.out.println(mh.get(i));
//        }
////        getConnection(getDB_URL(), getUSER_NAME(), getPASSWORD());
//    }
}
