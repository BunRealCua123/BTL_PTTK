/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

/**
 *
 * @author ADMIN
 */
public class MH_Nhap052 {

    private int id, soluong;
    private float dongia;
    private Mathang052 hang;

    public MH_Nhap052(int id, int soluong, float dongia, Mathang052 hang) {
        this.id = id;
        this.soluong = soluong;
        this.dongia = dongia;
        this.hang = hang;
    }

    public int getId() {
        return id;
    }

    public int getSoluong() {
        return soluong;
    }

    public float getDongia() {
        return dongia;
    }

    public Mathang052 getHang() {
        return hang;
    }

    @Override
    public String toString() {
        return "MH_Nhap052{" + "id=" + id + ", soluong=" + soluong + ", dongia=" + dongia + ", hang=" + hang + '}';
    }

}
