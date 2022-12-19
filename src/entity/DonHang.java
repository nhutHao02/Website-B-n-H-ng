package entity;

import java.util.List;



public class DonHang {
private int id_dh;
private String ngay;
private String tinhtrang;
private int id_user;
private List<ChiTietDH> listItem;
public DonHang(int id_dh,String ngay, String tinhtrang, int id_user, List<ChiTietDH> listItem) {
	super();
	this.id_dh = id_dh;
	this.ngay=ngay;
	this.tinhtrang = tinhtrang;
	this.id_user = id_user;
	this.listItem = listItem;
}
public int getId_dh() {
	return id_dh;
}
public void setId_dh(int id_dh) {
	this.id_dh = id_dh;
}
public String getTinhtrang() {
	return tinhtrang;
}
public void setTinhtrang(String tinhtrang) {
	this.tinhtrang = tinhtrang;
}
public int getId_user() {
	return id_user;
}
public void setId_user(int id_user) {
	this.id_user = id_user;
}
public List<ChiTietDH> getListItem() {
	return listItem;
}
public void setListItem(List<ChiTietDH> listItem) {
	this.listItem = listItem;
}

public String getNgay() {
	return ngay;
}
public void setNgay(String ngay) {
	this.ngay = ngay;
}
public int totalMoney() {
	int total=0;
	for (ChiTietDH chiTietDH : listItem) {
		total+=chiTietDH.getBook().getGia()*chiTietDH.getSoluong();
	}
	return total;
}
@Override
public String toString() {
	return "DonHang [id_dh=" + id_dh + ", ngay=" + ngay + ", tinhtrang=" + tinhtrang + ", id_user=" + id_user
			+ ", listItem=" +  "]";
}


}
