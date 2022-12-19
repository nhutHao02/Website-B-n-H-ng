package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import db.ConnectDB;
import entity.DanhGia;
import entity.SanPham;

public class DanhGiaDAO {
	Connection conn = null;
	PreparedStatement ps = null;
	ResultSet rs = null;
	public List<DanhGia> getDanhGia(String maSach) {
		List<DanhGia> list=new ArrayList<DanhGia>();
		String query="select * from DanhGia where masach=?";
		try {
			conn=new ConnectDB().getConnection();
			ps=conn.prepareStatement(query);
			ps.setString(1, maSach);
			rs=ps.executeQuery();
			while (rs.next()) {
				list.add(new DanhGia(rs.getNString(1), 
						rs.getNString(2), 
						rs.getInt(3),
						rs.getNString(4),
						rs.getNString(5), 
						rs.getNString(6)));
			}
			
		} catch (Exception e) {
			// TODO: handle exception
		}
		
		return list;
	}
	public void themDanhGia(String ten, String ngay, int sao, String email, String noiDung, String maSach) {
		String query="insert into DanhGia(ten, ngaydanhgia, sao, email, noidungdanhgia, masach)\r\n"
				+ "values(?,?,?,?,?,?)";
		try {
			conn=new ConnectDB().getConnection();
			ps=conn.prepareStatement(query);
			ps.setString(1, ten);
			ps.setString(2, ngay);
			ps.setInt(3, sao);
			ps.setString(4, email);
			ps.setString(5, noiDung);
			ps.setString(6, maSach);
			ps.executeUpdate();
			
			
		} catch (Exception e) {
			// TODO: handle exception
		}
		
		
		
	}
	
	public Map<Double, Integer> slDGVaSaoTB(String maSach) {
		int count=0;
		double sao=0;
		for (DanhGia dg : getDanhGia(maSach)) {
			count++;
			sao+=dg.getSao();
		}
		Map<Double, Integer> map=new HashMap<Double, Integer>();
		map.put(sao/count, count);
		return map;
	}
	public static void main(String[] args) {
		DanhGiaDAO dgDao=new DanhGiaDAO();
		dgDao.themDanhGia("Hào", "22/12/2022", 4, "tranhaoasda12", "noidungdag gia", "001");
	}
}
