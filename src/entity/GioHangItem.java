package entity;

public class GioHangItem {
	private SanPham sp;
	private int soluong;
	public GioHangItem(SanPham sp, int soluong) {
		super();
		this.sp = sp;
		this.soluong = soluong;
	}
	public SanPham getSp() {
		return sp;
	}
	public void setSp(SanPham sp) {
		this.sp = sp;
	}
	public int getSoluong() {
		return soluong;
	}
	public void addSoluong() {
		this.soluong++;
	}
	public int totalMoney() {
		return this.sp.getGia()*this.soluong;
	}
	
}
