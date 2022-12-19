package entity;

import java.io.Serializable;

public class SanPham implements Serializable{
private String maSach;
private String tenSach;
private int gia;
private String tacGia;
private String loaiSach;
private String ngayXuatBan;
private String noiXuatBan;
private String moTa;
private String ngayCapNhat;
private String image;
private String giamGia;
private String moTaCT;
public SanPham(String maSach, String tenSach, int gia, String tacGia, String loaiSach, String ngayXuatBan,
		String noiXuatBan, String moTa, String ngayCapNhat, String image,String giamgia,String moTaCT) {
	super();
	this.maSach = maSach;
	this.tenSach = tenSach;
	this.gia = gia;
	this.tacGia = tacGia;
	this.loaiSach = loaiSach;
	this.ngayXuatBan = ngayXuatBan;
	this.noiXuatBan = noiXuatBan;
	this.moTa = moTa;
	this.ngayCapNhat = ngayCapNhat;
	this.image = image;
	this.giamGia=giamgia;
	this.moTaCT=moTaCT;
}
public String getMaSach() {
	return maSach;
}
public void setMaSach(String maSach) {
	this.maSach = maSach;
}
public String getTenSach() {
	return tenSach;
}
public void setTenSach(String tenSach) {
	this.tenSach = tenSach;
}
public int getGia() {
	return gia;
}
public void setGia(int gia) {
	this.gia = gia;
}
public String getTacGia() {
	return tacGia;
}
public void setTacGia(String tacGia) {
	this.tacGia = tacGia;
}
public String getLoaiSach() {
	return loaiSach;
}

public String getMoTaCT() {
	return moTaCT;
}
public void setMoTaCT(String moTaCT) {
	this.moTaCT = moTaCT;
}
public void setLoaiSach(String loaiSach) {
	this.loaiSach = loaiSach;
}
public String getNgayXuatBan() {
	return ngayXuatBan;
}
public void setNgayXuatBan(String ngayXuatBan) {
	this.ngayXuatBan = ngayXuatBan;
}
public String getNoiXuatBan() {
	return noiXuatBan;
}
public void setNoiXuatBan(String noiXuatBan) {
	this.noiXuatBan = noiXuatBan;
}
public String getMoTa() {
	return moTa;
}
public void setMoTa(String moTa) {
	this.moTa = moTa;
}
public String getNgayCapNhat() {
	return ngayCapNhat;
}
public void setNgayCapNhat(String ngayCapNhat) {
	this.ngayCapNhat = ngayCapNhat;
}
public String getImage() {
	return image;
}
public void setImage(String image) {
	this.image = image;
}
public String getGiamGia() {
	return giamGia;
}
public void setGiamGia(String giamGia) {
	this.giamGia = giamGia;
}
@Override
public String toString() {
	return "SanPham [maSach=" + maSach + ", tenSach=" + tenSach + ", gia=" + gia + ", tacGia=" + tacGia + ", loaiSach="
			+ loaiSach + ", ngayXuatBan=" + ngayXuatBan + ", noiXuatBan=" + noiXuatBan + ", moTa=" + moTa
			+ ", ngayCapNhat=" + ngayCapNhat + ", image=" + image + ", giamGia=" + giamGia + ", moTaCT=" + moTaCT + "]";
}
public boolean compareSP(SanPham sach) {
	if(sach.maSach.equals(this.maSach))
		return true;
	return false;
}




}
