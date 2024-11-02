/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

/**
 *
 * @author ADMIN
 */
public class Mathang052 {

    private String maMH, ten, mota;
    private float giaban;

    public Mathang052() {
    }

    public Mathang052(String maMH, String ten, String mota, float giaban) {
        this.maMH = maMH;
        this.ten = ten;
        this.mota = mota;
        this.giaban = giaban;
    }

    public String getMaMH() {
        return maMH;
    }

    public String getTen() {
        return ten;
    }

    public String getMota() {
        return mota;
    }

    public float getGiaban() {
        return giaban;
    }

    @Override
    public String toString() {
        return "Mathang052{" + "maMH=" + maMH + ", ten=" + ten + ", mota=" + mota + ", giaban=" + giaban + '}';
    }

}
