/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import Model.Hoadonnhap052;
import Model.MH_Nhap052;
import Model.Mathang052;
import Model.NCC052;
import Model.NVKho052;
import Model.Nhanvien052;
import Model.ThongkeNCC052;
import java.util.*;
import java.sql.*;

/**
 *
 * @author ADMIN
 */
public class Hoadonnhap052DAO extends DAO {

    public Hoadonnhap052DAO() {
        super();
    }

    public ArrayList<Hoadonnhap052> getDSHoadonnhap(String maNCC, String bd, String kt) {
//        getConnection(getDB_URL(), getUSER_NAME(), getPASSWORD());
        ArrayList<Hoadonnhap052> hoadonnhap052s = new ArrayList<>();
        String sql = "CALL DanhSachHoaDonTheoNCC(?,?,?)";
        String sql2 = "CALL layThongTinNVKho(?)";
        String sql3 = "SELECT * FROM tblNCC052 WHERE maNCC = ?";
        try {
            PreparedStatement stmt = con.prepareStatement(sql);
            stmt.setString(1, maNCC);
            stmt.setString(2, bd);
            stmt.setString(3, kt);
            ResultSet rs = stmt.executeQuery();
            while (rs.next()) {
                String maHDN = rs.getString("maHDN");
                String maNCC1 = rs.getString("maNCC");
                int id = rs.getInt("idNVKho");
                NCC052 ncc = null;
                NVKho052 nvk = null;
                PreparedStatement stmt1 = con.prepareStatement(sql2);
                stmt1.setInt(1, id);
                ResultSet rs1 = stmt1.executeQuery();
                while (rs1.next()) {
                    nvk = new NVKho052(id, rs1.getString("username"), rs1.getString("password"), rs1.getString("ten"), rs1.getString("ngaysinh"), rs1.getString("diachi"), rs1.getString("email"), rs1.getString("sdt"), rs1.getString("vitri"), rs1.getString("vitri"));
                }
//                System.out.println(nvk);
                PreparedStatement stmt2 = con.prepareStatement(sql3);
                stmt2.setString(1, maNCC);
                ResultSet rs2 = stmt2.executeQuery();
                while (rs2.next()) {
                    ncc = new NCC052(maNCC, rs2.getString("ten"), rs2.getString("diachi"), rs2.getString("sdt"));
                }
//                System.out.println(ncc);
                ArrayList<MH_Nhap052> mH_Nhap052s = new ArrayList<>();
                float tongtien = rs.getFloat("tongtien");
                String ngaytao = rs.getString("ngaytao");
                Hoadonnhap052 hoadonnhap052 = new Hoadonnhap052(maHDN, ngaytao, tongtien, nvk, ncc, mH_Nhap052s);
                hoadonnhap052s.add(hoadonnhap052);
//                System.out.println(ngaytao);
            }
        } catch (Exception e) {
            System.out.println("");
        }
        return hoadonnhap052s;
    }

    public Hoadonnhap052 getChitietHDnhap(String ma) {
        Hoadonnhap052 hoadonnhap052 = new Hoadonnhap052();
        String sql = "CALL ThongtinHoaDonNhap(?)";
        String sql2 = "CALL layThongTinNVKho(?)";
        String sql3 = "SELECT * FROM tblNCC052 WHERE maNCC = ?";
        String sql4 = "CALL layThongTinMatHangTheoHDN(?)";
        try {
            PreparedStatement stmt = con.prepareStatement(sql);
            stmt.setString(1, ma);
            ResultSet rs = stmt.executeQuery();
            while (rs.next()) {
                String maHDN = rs.getString("maHDN");
                String maNCC = rs.getString("maNCC");
                int id = rs.getInt("idNVKho");
                NCC052 ncc = null;
                NVKho052 nvk = null;
                PreparedStatement stmt1 = con.prepareStatement(sql2);
                stmt1.setInt(1, id);
                ResultSet rs1 = stmt1.executeQuery();
                while (rs1.next()) {
                    nvk = new NVKho052(id, rs1.getString("username"), rs1.getString("password"), rs1.getString("ten"), rs1.getString("ngaysinh"), rs1.getString("diachi"), rs1.getString("email"), rs1.getString("sdt"), rs1.getString("vitri"), rs1.getString("vitri"));
                }
//                System.out.println(nvk);
                PreparedStatement stmt2 = con.prepareStatement(sql3);
                stmt2.setString(1, maNCC);
                ResultSet rs2 = stmt2.executeQuery();
                while (rs2.next()) {
                    ncc = new NCC052(maNCC, rs2.getString("ten"), rs2.getString("diachi"), rs2.getString("sdt"));
                }
//                System.out.println(ncc);
                ArrayList<MH_Nhap052> mH_Nhap052s = new ArrayList<>();
                PreparedStatement stmt3 = con.prepareStatement(sql4);
                stmt3.setString(1, maHDN);
                ResultSet rs3 = stmt3.executeQuery();
                while (rs3.next()) {
                    Mathang052 mathang052 = new Mathang052(rs3.getString("maMH"), rs3.getString("ten"), rs3.getString("mota"), rs3.getFloat("giaban"));
                    MH_Nhap052 mhn = new MH_Nhap052(rs3.getInt("id"), rs3.getInt("soluong"), rs3.getFloat("dongia"), mathang052);
                    mH_Nhap052s.add(mhn);
                }
                float tongtien = rs.getFloat("tongtien");
                String ngaytao = rs.getString("ngaytao");
                hoadonnhap052 = new Hoadonnhap052(maHDN, ngaytao, tongtien, nvk, ncc, mH_Nhap052s);
//                System.out.println(hoadonnhap052);
//                System.out.println(ngaytao);
            }
        } catch (Exception e) {
            System.out.println("");
        }
        return hoadonnhap052;
    }

//    public static void main(String[] args) {
//        Hoadonnhap052DAO hoadonnhap052DAO = new Hoadonnhap052DAO();
//        ArrayList<Hoadonnhap052> hoadonnhap052s = hoadonnhap052DAO.getDSHoadonnhap("NCC001", "2024-01-01", "2024-10-30");
//        Hoadonnhap052 hoadonnhap052 = hoadonnhap052DAO.getChitietHDnhap("HDN001");
//    }
}
