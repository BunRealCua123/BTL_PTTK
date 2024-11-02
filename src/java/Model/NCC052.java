/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

/**
 *
 * @author ADMIN
 */
public class NCC052 {

    private String maNCC, ten, diachi, sdt;

    public NCC052(String maNCC, String ten, String diachi, String sdt) {
        this.maNCC = maNCC;
        this.ten = ten;
        this.diachi = diachi;
        this.sdt = sdt;
    }

    public String getMaNCC() {
        return maNCC;
    }

    public String getTen() {
        return ten;
    }

    public String getDiachi() {
        return diachi;
    }

    public String getSdt() {
        return sdt;
    }

    @Override
    public String toString() {
        return "NCC052{" + "maNCC=" + maNCC + ", ten=" + ten + ", diachi=" + diachi + ", sdt=" + sdt + '}';
    }

}
