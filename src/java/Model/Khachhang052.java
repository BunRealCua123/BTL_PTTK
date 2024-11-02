/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

/**
 *
 * @author ADMIN
 */
public class Khachhang052 extends Thanhvien052 {

    private String maKH;

    public Khachhang052(String maKH, int id, String username, String password, String ten, String ngaysinh, String diachi, String email, String sdt, String vaitro) {
        super(id, username, password, ten, ngaysinh, diachi, email, sdt, vaitro);
        this.maKH = maKH;
    }

//    public Khachhang052(String maKH, int id, String username, String password, String ten, String ngaysinh, String diachi, String email, String sdt) {
//        super(id, username, password, ten, ngaysinh, diachi, email, sdt);
//        this.maKH = maKH;
//    }
    public String getMaKH() {
        return maKH;
    }

    @Override
    public String toString() {
        return "Khachhang{" + "maKH=" + maKH + " " + this.getTen() + '}';
    }

}
