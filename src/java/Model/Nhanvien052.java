/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

/**
 *
 * @author ADMIN
 */
public class Nhanvien052 extends Thanhvien052 {

    private String vitri;

    public Nhanvien052(int id, String username, String password, String ten, String ngaysinh, String diachi, String email, String sdt, String vaitro, String vitri) {
        super(id, username, password, ten, ngaysinh, diachi, email, sdt, vaitro);
        this.vitri = vitri;
    }

    public String getVitri() {
        return vitri;
    }

}
