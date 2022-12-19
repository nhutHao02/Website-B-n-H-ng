package entity;

public class KhachHang {
	private int id;
	private String pass;
	private String fullName;
	private int age;
	private boolean gender;
	private String phone;
	private String address;
	private String email;
	private boolean ad;
	public KhachHang(int id, String pass, String fullName, int age, boolean gender, String phone, String address,
			String email, boolean ad) {
		super();
		this.id = id;
		this.pass = pass;
		this.fullName = fullName;
		this.age = age;
		this.gender = gender;
		this.phone = phone;
		this.address = address;
		this.email = email;
		this.ad = ad;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getPass() {
		return pass;
	}
	public void setPass(String pass) {
		this.pass = pass;
	}
	public String getFullName() {
		return fullName;
	}
	public void setFullName(String fullName) {
		this.fullName = fullName;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public boolean isGender() {
		return gender;
	}
	public void setGender(boolean gender) {
		this.gender = gender;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public boolean isAd() {
		return ad;
	}
	public void setAd(boolean ad) {
		this.ad = ad;
	}
	@Override
	public String toString() {
		return "KhachHang [id=" + id + ", pass=" + pass + ", fullName=" + fullName + ", age=" + age + ", gender="
				+ gender + ", phone=" + phone + ", address=" + address + ", email=" + email + ", ad=" + ad + "]";
	}
	
	
}
