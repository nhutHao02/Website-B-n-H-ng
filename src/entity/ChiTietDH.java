package entity;

public class ChiTietDH {
	private SanPham book;
	private int soluong;
	public ChiTietDH(SanPham book, int soluong) {
		super();
		this.book = book;
		this.soluong = soluong;
	}
	public SanPham getBook() {
		return book;
	}
	public void setBook(SanPham book) {
		this.book = book;
	}
	public int getSoluong() {
		return soluong;
	}
	public void setSoluong(int soluong) {
		this.soluong = soluong;
	}
	@Override
	public String toString() {
		return "ChiTietDH [book=" + book + ", soluong=" + soluong + "]";
	}

	
	
}	
