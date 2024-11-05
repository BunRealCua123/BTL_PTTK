/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

/**
 *
 * @author ADMIN
 */
public class Thanhvien052 {

    private int id;
    private String username, password, ten, ngaysinh, diachi, email, sdt, vaitro;

    public Thanhvien052(int id, String username, String password, String ten, String ngaysinh, String diachi, String email, String sdt, String vaitro) {
        this.id = id;
        this.username = username;
        this.password = password;
        this.ten = ten;
        this.ngaysinh = ngaysinh;
        this.diachi = diachi;
        this.email = email;
        this.sdt = sdt;
        this.vaitro = vaitro;
    }

    public Thanhvien052() {
    }

    public String getVaitro() {
        return vaitro;
    }

    public int getId() {
        return id;
    }

    public String getUsername() {
        return username;
    }

    public String getPassword() {
        return password;
    }

    public String getTen() {
        return ten;
    }

    public String getNgaysinh() {
        return ngaysinh;
    }

    public String getDiachi() {
        return diachi;
    }

    public String getEmail() {
        return email;
    }

    public String getSdt() {
        return sdt;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public void setTen(String ten) {
        this.ten = ten;
    }

    public void setNgaysinh(String ngaysinh) {
        this.ngaysinh = ngaysinh;
    }

    public void setDiachi(String diachi) {
        this.diachi = diachi;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public void setSdt(String sdt) {
        this.sdt = sdt;
    }

    public void setId(int id) {
        this.id = id;
    }

    public void setVaitro(String vaitro) {
        this.vaitro = vaitro;
    }

    @Override
    public String toString() {
        return "Thanhvien{" + "id=" + id + ", username=" + username + ", password=" + password + ", ten=" + ten + ", ngaysinh=" + ngaysinh + ", diachi=" + diachi + ", email=" + email + ", sdt=" + sdt + '}';
    }

}
