package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import db.ConnectDB;
import entity.LoaiSach;
import entity.SanPham;

public class SanPhamDAO {
	Connection conn = null;
	PreparedStatement ps = null;
	ResultSet rs = null;
	
	public List<SanPham> getAllProduct() {
		List<SanPham> list=new ArrayList<SanPham>();
		String query="select * from SanPham";
		try {
			conn=new ConnectDB().getConnection();
			ps=conn.prepareStatement(query);
			rs=ps.executeQuery();
			while (rs.next()) {
				list.add(new SanPham(rs.getNString(1),
						rs.getNString(2),
						rs.getInt(3),
						rs.getNString(4), 
						rs.getNString(5),
						rs.getNString(6),
						rs.getNString(7),
						rs.getNString(8), 
						rs.getNString(9),
						rs.getNString(10),
						rs.getNString(11),
						rs.getNString(12)));
			}
			
		} catch (Exception e) {
			// TODO: handle exception
		}
		return list;
	}
	public List<SanPham> getAllProductByCategory(String maSach) {
		List<SanPham> list=new ArrayList<SanPham>();
		String query="select  * from SanPham where loaisach=(select loaisach from SanPham where masach=?)";
		try {
			conn=new ConnectDB().getConnection();
			ps=conn.prepareStatement(query);
			ps.setString(1, maSach);
			rs=ps.executeQuery();
			while (rs.next()) {
				list.add(new SanPham(rs.getNString(1),
						rs.getNString(2),
						rs.getInt(3),
						rs.getNString(4), 
						rs.getNString(5),
						rs.getNString(6),
						rs.getNString(7),
						rs.getNString(8), 
						rs.getNString(9),
						rs.getNString(10),
						rs.getNString(11),
						rs.getNString(12)));
			}
			
		} catch (Exception e) {
			// TODO: handle exception
		}
		return list;
	}
	public List<SanPham> getListProductByCategory(String loai) {
		List<SanPham> list=new ArrayList<SanPham>();
		String query="select top(10) * from SanPham where loaisach=?";
		try {
			conn=new ConnectDB().getConnection();
			ps=conn.prepareStatement(query);
			ps.setString(1, loai);
			rs=ps.executeQuery();
			while (rs.next()) {
				list.add(new SanPham(rs.getNString(1),
						rs.getNString(2),
						rs.getInt(3),
						rs.getNString(4), 
						rs.getNString(5),
						rs.getNString(6),
						rs.getNString(7),
						rs.getNString(8), 
						rs.getNString(9),
						rs.getNString(10),
						rs.getNString(11),
						rs.getNString(12)));
			}
			
		} catch (Exception e) {
			// TODO: handle exception
		}
		return list;
	}
	public List<SanPham> getAllKH () {
		List<SanPham> list=new ArrayList<SanPham>();
		String query="select * from SanPham where loaisach=N'Khoa Học'";
		try {
			conn=new ConnectDB().getConnection();
			ps=conn.prepareStatement(query);
			rs=ps.executeQuery();
			while (rs.next()) {
				list.add(new SanPham(rs.getNString(1),
						rs.getNString(2),
						rs.getInt(3),
						rs.getNString(4), 
						rs.getNString(5),
						rs.getNString(6),
						rs.getNString(7),
						rs.getNString(8), 
						rs.getNString(9),
						rs.getNString(10),
						rs.getNString(11),
						rs.getNString(12)));
			}
			
		} catch (Exception e) {
			// TODO: handle exception
		}
		return list;
	}
	
	public List<SanPham> getAllTruyen() {
		List<SanPham> list=new ArrayList<SanPham>();
		String query="select * from SanPham where loaisach=N'Truyện'";
		try {
			conn=new ConnectDB().getConnection();
			ps=conn.prepareStatement(query);
			rs=ps.executeQuery();
			while (rs.next()) {
				list.add(new SanPham(rs.getNString(1),
						rs.getNString(2),
						rs.getInt(3),
						rs.getNString(4), 
						rs.getNString(5),
						rs.getNString(6),
						rs.getNString(7),
						rs.getNString(8), 
						rs.getNString(9),
						rs.getNString(10),
						rs.getNString(11),
						rs.getNString(12)));
			}
			
		} catch (Exception e) {
			// TODO: handle exception
		}
		return list;
	}
	public List<SanPham> getAllTieuThuyet() {
		List<SanPham> list=new ArrayList<SanPham>();
		String query="select * from SanPham where loaisach=N'Tiểu Thuyết'";
		try {
			conn=new ConnectDB().getConnection();
			ps=conn.prepareStatement(query);
			rs=ps.executeQuery();
			while (rs.next()) {
				list.add(new SanPham(rs.getNString(1),
						rs.getNString(2),
						rs.getInt(3),
						rs.getNString(4), 
						rs.getNString(5),
						rs.getNString(6),
						rs.getNString(7),
						rs.getNString(8), 
						rs.getNString(9),
						rs.getNString(10),
						rs.getNString(11),
						rs.getNString(12)));
			}
			
		} catch (Exception e) {
			// TODO: handle exception
		}
		return list;
	}
	public SanPham getProduct(String maSach) {
		SanPham sp = null;
		String query="select * from SanPham where masach=?";
		try {
			conn=new ConnectDB().getConnection();
			ps=conn.prepareStatement(query);
			ps.setString(1, maSach);
			rs=ps.executeQuery();
			while (rs.next()) {
				sp=new SanPham(rs.getNString(1),
						rs.getNString(2),
						rs.getInt(3),
						rs.getNString(4), 
						rs.getNString(5),
						rs.getNString(6),
						rs.getNString(7),
						rs.getNString(8), 
						rs.getNString(9),
						rs.getNString(10),
						rs.getNString(11),
						rs.getNString(12));
			}
			
		} catch (Exception e) {
			// TODO: handle exception
		}
		return sp;
	}
	// lay ra tat cả cac loại sách
	public List<LoaiSach> getAllCategory() {
		List<LoaiSach> list=new ArrayList<LoaiSach>();
		String query="select distinct loaisach from SanPham";
		try {
			conn=new ConnectDB().getConnection();
			ps=conn.prepareStatement(query);
			rs=ps.executeQuery();
			while (rs.next()) {
				list.add(new LoaiSach(rs.getNString(1)));
			}
			
		} catch (Exception e) {
			// TODO: handle exception
		}
		return list;
	}
	
	public int getTotalProduct() {
		int total=0;
		String query="select count(*) from SanPham";
		try {
			conn=new ConnectDB().getConnection();
			ps=conn.prepareStatement(query);
			rs=ps.executeQuery();
			while (rs.next()) {
				total=rs.getInt(1);
			}
			
		} catch (Exception e) {
			// TODO: handle exception
		}
		return total;
		
	}
	public List<SanPham> get12Product(int pageX) {
		List<SanPham> list=new ArrayList<SanPham>();
		String query="select * from SanPham\r\n"
				+ "order by masach\r\n"
				+ "OFFSET ? Rows fetch next 12 rows only;";
		try {
			conn=new ConnectDB().getConnection();
			ps=conn.prepareStatement(query);
			ps.setInt(1, ((pageX-1)*12));
			rs=ps.executeQuery();
			while (rs.next()) {
				list.add(new SanPham(rs.getNString(1),
						rs.getNString(2),
						rs.getInt(3),
						rs.getNString(4), 
						rs.getNString(5),
						rs.getNString(6),
						rs.getNString(7),
						rs.getNString(8), 
						rs.getNString(9),
						rs.getNString(10),
						rs.getNString(11),
						rs.getNString(12)));
			}
			
		} catch (Exception e) {
			// TODO: handle exception
		}
		return list;
	}
	public List<SanPham> getProductSearch(String searchTxt) {
		List<SanPham> list=new ArrayList<SanPham>();
		String query="select * from SanPham where tensach like ?";
		try {
			conn=new ConnectDB().getConnection();
			ps=conn.prepareStatement(query);
			ps.setString(1, "%"+searchTxt+"%");
			rs=ps.executeQuery();
			while (rs.next()) {
				list.add(new SanPham(rs.getNString(1),
						rs.getNString(2),
						rs.getInt(3),
						rs.getNString(4), 
						rs.getNString(5),
						rs.getNString(6),
						rs.getNString(7),
						rs.getNString(8), 
						rs.getNString(9),
						rs.getNString(10),
						rs.getNString(11),
						rs.getNString(12)));
			}
			
		} catch (Exception e) {
			// TODO: handle exception
		}
		return list;
	}
	
	public static void main(String[] args) {
		SanPhamDAO dao=new SanPhamDAO();
		System.out.println(dao.getProductSearch("Khoa"));
	}
	public List<SanPham> get12Product(int pageX, String loai) {
		List<SanPham> list=new ArrayList<SanPham>();
		String query="select * from SanPham where loaisach=?\r\n"
				+ "order by masach\r\n"
				+ "OFFSET ? Rows fetch next 12 rows only;";
		try {
			conn=new ConnectDB().getConnection();
			ps=conn.prepareStatement(query);
			ps.setString(1, loai);
			ps.setInt(2, ((pageX-1)*12));
			rs=ps.executeQuery();
			while (rs.next()) {
				list.add(new SanPham(rs.getNString(1),
						rs.getNString(2),
						rs.getInt(3),
						rs.getNString(4), 
						rs.getNString(5),
						rs.getNString(6),
						rs.getNString(7),
						rs.getNString(8), 
						rs.getNString(9),
						rs.getNString(10),
						rs.getNString(11),
						rs.getNString(12)));
			}
			
		} catch (Exception e) {
			// TODO: handle exception
		}
		return list;
	}
}
