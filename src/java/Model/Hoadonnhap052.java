/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

import java.util.Date;
import java.util.*;

/**
 *
 * @author ADMIN
 */
public class Hoadonnhap052 {

    private String maHDN;
    private String ngaytao;
    private float tongtien;
    private NVKho052 nvkho;
    private NCC052 ncc;
    ArrayList<MH_Nhap052> dsHangnhap;

    public Hoadonnhap052(String maHDN, String ngaytao, float tongtien, NVKho052 nvkho, NCC052 ncc, ArrayList<MH_Nhap052> dsHangnhap) {
        this.maHDN = maHDN;
        this.ngaytao = ngaytao;
        this.tongtien = tongtien;
        this.nvkho = nvkho;
        this.ncc = ncc;
        this.dsHangnhap = dsHangnhap;
    }

    public Hoadonnhap052() {
    }

    public String getMaHDN() {
        return maHDN;
    }

    public String getNgaytao() {
        return ngaytao;
    }

    public float getTongtien() {
        return tongtien;
    }

    public NVKho052 getNvkho() {
        return nvkho;
    }

    public NCC052 getNcc() {
        return ncc;
    }

    public ArrayList<MH_Nhap052> getDsHangnhap() {
        return dsHangnhap;
    }

    @Override
    public String toString() {
        return "Hoadonnhap052{" + "maHDN=" + maHDN + ", ngaytao=" + ngaytao + ", tongtien=" + tongtien + '}';
    }

}
