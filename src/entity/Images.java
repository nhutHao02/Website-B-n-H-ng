package entity;

public class Images {
	private String maSach;
	private String image;
	public Images(String maSach, String image) {
		super();
		this.maSach = maSach;
		this.image = image;
	}
	public String getMaSach() {
		return maSach;
	}
	public void setMaSach(String maSach) {
		this.maSach = maSach;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	@Override
	public String toString() {
		return "Images [maSach=" + maSach + ", image=" + image + "]";
	}
	
}
