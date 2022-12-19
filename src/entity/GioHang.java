package entity;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class GioHang {
	List<GioHangItem> card;

	public GioHang() {
		super();
		this.card =new ArrayList<GioHangItem>();
	}

	public List<GioHangItem> getCard() {
		return card;
	}

	public void setCard(List<GioHangItem> card) {
		this.card = card;
	}
	
	public int size() {
		return card.size();
	}
	public int getPrice() {
		int total=0;
		for (GioHangItem gioHangItem : card) {
			total+=gioHangItem.totalMoney();
		}
		return total;
	}

}
