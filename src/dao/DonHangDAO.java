package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import db.ConnectDB;
import entity.ChiTietDH;
import entity.DonHang;
import entity.SanPham;

public class DonHangDAO {
	Connection conn = null;
	PreparedStatement ps = null;
	ResultSet rs = null;
	
	public List<DonHang> getListDonHang(int id_user) {
		List<DonHang> list=new ArrayList<DonHang>();
		String query="select * from DonHang where DonHang.id_user=?";
		try {
			conn=new ConnectDB().getConnection();
			ps=conn.prepareStatement(query);
			ps.setInt(1, id_user);
			rs=ps.executeQuery();
			while (rs.next()) {
				list.add(new DonHang(rs.getInt(1), rs.getString(2), rs.getNString(3), rs.getInt(4), getListSanPham(rs.getInt(1))));
			}
		} catch (Exception e) {
			
		}
		
		
		
		
		
		return list;
	}

	public List<ChiTietDH> getListSanPham(int id_dh) {
		List<ChiTietDH> list=new ArrayList<ChiTietDH>();
		String query="select ctdh.masach,sp.tensach, sp.gia,sp.tacgia, sp.loaisach, sp.ngayxuatban,sp.noixuatban, sp.mota, sp.ngaycapnhat, sp.images, sp.giamgia, sp.motact ,soluong\r\n"
				+ "from ChiTietDonHang ctdh join SanPham sp on ctdh.masach=sp.masach\r\n"
				+ "where id_dh=? ";
		try {
			conn=new ConnectDB().getConnection();
			ps=conn.prepareStatement(query);
			ps.setInt(1, id_dh);
			rs=ps.executeQuery();
			while (rs.next()) {
				list.add(new ChiTietDH(new SanPham(rs.getString(1),
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
						rs.getNString(12)),
						rs.getInt(13)));
			}
			
		} catch (Exception e) {
			// TODO: handle exception
		}

		return list;
	}
	public static void main(String[] args) {
		DonHangDAO dao=new DonHangDAO();
		System.out.println(dao.getListSanPham(2));
	}
}
