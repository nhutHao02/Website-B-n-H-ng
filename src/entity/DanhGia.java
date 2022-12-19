package entity;

public class DanhGia {
private String ten;
private String ngayDanhGia;
private int sao;
private String email;
private String noiDung;
private String maSach;
public DanhGia(String ten, String ngayDanhGia, int sao, String email, String noiDung, String maSach) {
	super();
	this.ten = ten;
	this.ngayDanhGia = ngayDanhGia;
	this.sao = sao;
	this.email = email;
	this.noiDung = noiDung;
	this.maSach = maSach;
}
public String getTen() {
	return ten;
}
public void setTen(String ten) {
	this.ten = ten;
}
public String getNgayDanhGia() {
	return ngayDanhGia;
}
public void setNgayDanhGia(String ngayDanhGia) {
	this.ngayDanhGia = ngayDanhGia;
}
public int getSao() {
	return sao;
}
public void setSao(int sao) {
	this.sao = sao;
}
public String getEmail() {
	return email;
}
public void setEmail(String email) {
	this.email = email;
}
public String getNoiDung() {
	return noiDung;
}
public void setNoiDung(String noiDung) {
	this.noiDung = noiDung;
}
public String getMaSach() {
	return maSach;
}
public void setMaSach(String maSach) {
	this.maSach = maSach;
}
@Override
public String toString() {
	return "DanhGia [ten=" + ten + ", ngayDanhGia=" + ngayDanhGia + ", sao=" + sao + ", email=" + email + ", noiDung="
			+ noiDung + ", maSach=" + maSach + "]";
}

}
