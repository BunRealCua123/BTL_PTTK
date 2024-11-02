/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

import java.util.Date;

/**
 *
 * @author ADMIN
 */
public class ThongkeNCC052 extends NCC052 {

    private float doanhthu;
    private int sohangnhap;
    private String ngayBD, ngayKT;

    public ThongkeNCC052(String maNCC, String ten, String diachi, String sdt, float doanhthu, int sohangnhap, String ngayBD, String ngayKT) {
        super(maNCC, ten, diachi, sdt);
        this.doanhthu = doanhthu;
        this.sohangnhap = sohangnhap;
        this.ngayBD = ngayBD;
        this.ngayKT = ngayKT;
    }

    @Override
    public String toString() {
        return "ThongkeNCC052{" + "doanhthu=" + doanhthu + ", sohangnhap=" + sohangnhap + ", ngayBD=" + ngayBD + ", ngayKT=" + ngayKT + '}';
    }

    public float getDoanhthu() {
        return doanhthu;
    }

    public int getSohangnhap() {
        return sohangnhap;
    }

    public String getNgayBD() {
        return ngayBD;
    }

    public String getNgayKT() {
        return ngayKT;
    }

}
