/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

/**
 *
 * @author ADMIN
 */
public class NVQuanly052 extends Nhanvien052 {

    public NVQuanly052(int id, String username, String password, String ten, String ngaysinh, String diachi, String email, String sdt, String vaitro, String vitri) {
        super(id, username, password, ten, ngaysinh, diachi, email, sdt, vaitro, vitri);
    }

//    public NVQuanly052(int id, String username, String password, String ten, String ngaysinh, String diachi, String email, String sdt, String vitri) {
//        super(id, username, password, ten, ngaysinh, diachi, email, sdt, vitri);
//    }
    @Override
    public String toString() {
        return "NVQuanly052{" + getTen() + " " + getVitri() + '}';
    }

}
