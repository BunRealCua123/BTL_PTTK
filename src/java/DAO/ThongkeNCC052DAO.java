/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import Model.ThongkeNCC052;
import java.util.*;
import java.sql.*;
import org.eclipse.jdt.internal.compiler.ast.ThisReference;

/**
 *
 * @author ADMIN
 */
public class ThongkeNCC052DAO extends DAO {

    public ThongkeNCC052DAO() {
        super();
    }

    public ArrayList<ThongkeNCC052> getThongkeNCC(String bd, String kt) {
//        getConnection(getDB_URL(), getUSER_NAME(), getPASSWORD());
        ArrayList<ThongkeNCC052> thongkeNCC052 = new ArrayList<>();
        String sql = "CALL ThongKeNCCTheoDoanhThu(?,?)";
        try (PreparedStatement stmt = con.prepareStatement(sql)) {
            stmt.setString(1, bd);
            stmt.setString(2, kt);
            ResultSet rs = stmt.executeQuery();
            while (rs.next()) {
                thongkeNCC052.add(new ThongkeNCC052(rs.getString("maNCC"), rs.getString("tenNCC"), rs.getString("diachi"), rs.getString("sdt"), rs.getFloat("doanhthu"), rs.getInt("soluonghangnhap"), bd, kt));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return thongkeNCC052;
    }

//    public static void main(String[] args) {
//        ThongkeNCC052DAO thongkeNCC052DAO = new ThongkeNCC052DAO();
//        ArrayList<ThongkeNCC052> thongkeNCC052 = new ArrayList<>();
//        thongkeNCC052 = thongkeNCC052DAO.getThongkeNCC("2024/01/01", "2024/12/31");
//        for (int i = 0; i < thongkeNCC052.size(); i++) {
//            System.out.println(thongkeNCC052.get(i));
//        }
//    }
}
