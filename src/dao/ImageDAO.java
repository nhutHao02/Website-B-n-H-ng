package dao;

import java.awt.Image;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import db.ConnectDB;
import entity.Images;

public class ImageDAO {
	Connection conn = null;
	PreparedStatement ps = null;
	ResultSet rs = null;
	
	public List<Images> getAllImages(String maSach) {
		List<Images> list=new ArrayList<Images>();
		String query="select * from Images where masach=?";
		try {
			conn=new ConnectDB().getConnection();
			ps=conn.prepareStatement(query);
			ps.setString(1, maSach);
			rs=ps.executeQuery();
			while (rs.next()) {
				list.add(new Images(rs.getNString(1), rs.getNString(2)));
			}
			
		} catch (Exception e) {
			// TODO: handle exception
		}
		return list;
	}
	public static void main(String[] args) {
		List<Images> imgs=new ImageDAO().getAllImages("001");
		for (Images images : imgs) {
			System.out.println(images);
		}
	}
}
