package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import db.ConnectDB;
import entity.KhachHang;
import entity.SanPham;

public class KhachHangDAO {
	Connection conn = null;
	PreparedStatement ps = null;
	ResultSet rs = null;

	public KhachHangDAO() {
		super();
	}

	public KhachHang getKhachHang(String email, String pass) {
		KhachHang kh = null;
		System.out.println();
		String query = "select * from [User] \r\n" + "where [User].email=? and [User].pass=?";
		try {
			conn = new ConnectDB().getConnection();
			ps = conn.prepareStatement(query);
			ps.setString(1, email);
			ps.setString(2, pass);
			rs = ps.executeQuery();
			while (rs.next()) {
				kh = new KhachHang(rs.getInt(1), rs.getString(2), rs.getNString(3), rs.getInt(4), rs.getBoolean(5),
						rs.getString(6), rs.getNString(7), rs.getString(8), rs.getBoolean(9));
			}

		} catch (Exception e) {
			// TODO: handle exception
		}

		return kh;
	}

	public boolean checkUser(String email) {
		boolean check = false;
		String query = "select * from [User] \r\n" + "where [User].email=?";
		try {
			conn = new ConnectDB().getConnection();
			ps = conn.prepareStatement(query);
			ps.setString(1, email);
			rs = ps.executeQuery();
			while (rs.next()) {
				check = true;
			}

		} catch (Exception e) {
			// TODO: handle exception
		}

		return check;
	}

	public boolean registerUser(String fullname, String email, String pass) {
		String query = "insert into [User](pass,fullname,email,ad)\r\n" + "values(?,?,?,0)";
		try {
			conn = new ConnectDB().getConnection();
			ps = conn.prepareStatement(query);
			ps.setString(1, pass);
			ps.setString(2, fullname);
			ps.setString(3, email);
			ps.executeUpdate();
			 return true;
		} catch (Exception e) {
			return false;
		}
	}
	public void updateInfo(String fullname, int age, String gender, String phone, String email, String address,
			int id) {
		String query = "UPDATE [User]\r\n"
				+ "SET fullname=?, age=?,gender=?,phone=?,add_ress=?, email=?\r\n"
				+ "WHERE id=?";
		try {
			conn = new ConnectDB().getConnection();
			ps = conn.prepareStatement(query);
			ps.setString(1, fullname);
			ps.setInt(2, age);
			ps.setString(3, gender);
			ps.setString(4, phone);
			ps.setString(5, address);
			ps.setString(6, email);
			ps.setInt(7, id);
			ps.executeUpdate();
		
		} catch (Exception e) {
			
		}
		
	}
	public void changePass(String pass, int id) {
		String query = "UPDATE [User]\r\n"
				+ "SET pass=?\r\n"
				+ "WHERE id=?";
		try {
			conn = new ConnectDB().getConnection();
			ps = conn.prepareStatement(query);
			ps.setString(1, pass);
			ps.setInt(2, id);
			ps.executeUpdate();
		
		} catch (Exception e) {
			
		}
		
	}

	public static void main(String[] args) {
		KhachHangDAO dao = new KhachHangDAO();
		//System.out.println(dao.registerUser("Trần", "abc@gmail.com", "123"));
		System.out.println(dao.getKhachHang("abc@gmail.com", "123"));
	}

	
}
