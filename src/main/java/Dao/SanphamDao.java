package Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import Connection.DbCon;
import Model.Customer;
import Model.Sanpham;

public class SanphamDao {
	Connection con = null;
	PreparedStatement pre = null;
	ResultSet rs = null;


	public List<Sanpham> selectAllSanpham() {
		List<Sanpham> sanpham = new ArrayList<>();
		String sql = "SELECT * FROM sach";
		try {
			con = DbCon.getConnection();
			pre = con.prepareStatement(sql);
			rs = pre.executeQuery();
			while(rs.next()) {
				sanpham.add(new Sanpham(rs.getInt(1),
						rs.getInt(2),
						rs.getString(3),
						rs.getString(4),
						rs.getString(5),
						rs.getString(6),
				        rs.getString(7),
				        rs.getString(8),
						
						rs.getInt(9),
						rs.getInt(10),
						rs.getInt(11),
						rs.getInt(12),
						rs.getString(13),
						rs.getString(14)));
			}
		
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return sanpham;
	}
        public List<Sanpham> getAllSanphamBycid(String id ) {
	    List<Sanpham> sanpham = new ArrayList<>();
		String sql = "SELECT * FROM sach where idloaisach = ?";
		try {
			con = DbCon.getConnection();
			pre = con.prepareStatement(sql);
			pre.setString(1, id);
			rs = pre.executeQuery();
			while(rs.next()) {
			sanpham.add(new Sanpham(rs.getInt(1),
						rs.getInt(2),
						rs.getString(3),
						rs.getString(4),
						rs.getString(5),
						rs.getString(6),
				        rs.getString(7),
				        rs.getString(8),

						rs.getInt(9),
						rs.getInt(10),
						rs.getInt(11),
						rs.getInt(12),
						rs.getString(13),
						rs.getString(14)));
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return sanpham;
	}
        public List<Sanpham> getAllSanphamTOP() {
    	    List<Sanpham> sanpham = new ArrayList<>();
    		String sql = "SELECT * FROM sach where daban ORDER BY daban  DESC \r\n"
    				+ "LIMIT 4;";
    		try {
    			con = DbCon.getConnection();
    			pre = con.prepareStatement(sql);
    			rs = pre.executeQuery();
    			while(rs.next()) {
    			sanpham.add(new Sanpham(rs.getInt(1),
    						rs.getInt(2),
    						rs.getString(3),
    						rs.getString(4),
    						rs.getString(5),
    						rs.getString(6),
    				        rs.getString(7),
    				        rs.getString(8),

    						rs.getInt(9),
    						rs.getInt(10),
    						rs.getInt(11),
    						rs.getInt(12),
    						rs.getString(13),
    						rs.getString(14)));
    			}
    			
    		} catch (Exception e) {
    			e.printStackTrace();
    		}
    		return sanpham;
    	}


	public Sanpham getAllSanpham(String id ) {
		
		String sql = "SELECT * FROM sach " +" where masach = ?";
		try {
			con = DbCon.getConnection();
			pre = con.prepareStatement(sql);
			pre.setString(1, id);
			rs = pre.executeQuery();
			while(rs.next()) {
				return new Sanpham(rs.getInt(1),
						rs.getInt(2),
						rs.getString(3),
						rs.getString(4),
						rs.getString(5),
						rs.getString(6),
				        rs.getString(7),
				        rs.getString(8),

						rs.getInt(9),
						rs.getInt(10),
						rs.getInt(11),
						rs.getInt(12),
						rs.getString(13),
						rs.getString(14));
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

		public List<Sanpham> search(String searchValue) {
			List<Sanpham> listSSearchs;
			listSSearchs = new ArrayList<>();
			
			Connection con =null;
			PreparedStatement stm =  null;
			ResultSet rs = null;
			try {
				con = DbCon.getConnection();
				String sql = "SELECT * FROM sach where loaisach like ?\r\n "
						+ "or tensach like ?\r\n"
						+ "or tacgia like ?\r\n"
						+ "or dongia like ?;";
						
				stm = con.prepareStatement(sql);
				stm.setString(1, "%" + searchValue + "%");
				stm.setString(2, "%" + searchValue + "%");
				stm.setString(3, "%" + searchValue + "%");
				stm.setString(4, "%" + searchValue + "%");
				

				rs = stm.executeQuery();
				while (rs.next()) {
					listSSearchs.add(new Sanpham(rs.getInt(1),
							rs.getInt(2),
							rs.getString(3),
							rs.getString(4),
							rs.getString(5),
							rs.getString(6),
					        rs.getString(7),
					        rs.getString(8),

							rs.getInt(9),
							rs.getInt(10),
							rs.getInt(11),
							rs.getInt(12),
							rs.getString(13),
							rs.getString(14)));
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
		return listSSearchs;
	}
		public void updateSanpham(String masach,String hinhanh, String tensach, String tacgia, String nhacungcap, String nhaxuatban,
				String namxuatban, String soluongnhap, String daban, String tonkho, String dongia,
				String gioithieu, String loaisach , String idloaisach) {

			String sql = "update sach set hinhanh =?, "
					+ "tensach =?,"
					+ "tacgia =?,"
					+ "nhacungcap =?,"
					+ "nhaxuatban =?,"
					+ "namxuatban =?,"
					+ "soluongnhap =?,"
					+ "daban =?,"
					+ "tonkho =?,"
					+ "dongia =?,"
					+ "gioithieu =?,"
					+ "loaisach =?,"
					+ "idloaisach =?"
					
					+ "where masach =?";
			try {
				con = DbCon.getConnection();
				pre = con.prepareStatement(sql);
				
				pre.setString(1, hinhanh);
				pre.setString(2, tensach);
				pre.setString(3, tacgia);
				pre.setString(4, nhacungcap);
				pre.setString(5, nhaxuatban);
				pre.setString(6, namxuatban);
				pre.setString(7, soluongnhap);
				pre.setString(8, daban);
				pre.setString(9, tonkho);
				pre.setString(10, dongia);
				pre.setString(11, gioithieu);
				pre.setString(12, loaisach);
				pre.setString(13, idloaisach);
				
				pre.setString(14, masach);
				pre.executeUpdate();
				
				
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
			public void deleteSanpham(String masach) {
				
				String sql = "delete from sach where masach = ?;";
				try {
					con = DbCon.getConnection();
					pre = con.prepareStatement(sql);
					pre.setString(1, masach);
					pre.executeUpdate();
					
				} catch (Exception e) {
				}
			}
			
			public void insertSanpham(String masach,String idloaisach,String loaisach,String tensach,String tacgia,String nhacungcap,String nhaxuatban, String namxuatban,
					                   String hinhanh , String soluongnhap,String daban,String tonkho,String dongia,String gioithieu) {

				String sql = "insert into sach ( masach,idloaisach, loaisach,tensach , tacgia, nhacungcap ,nhaxuatban, namxuatban, hinhanh , soluongnhap , daban, tonkho ,dongia , gioithieu)"
						+ "values (?,?,?,?,?,?,?,?,?,?,?,?,?,?);";
				try {
					con = DbCon.getConnection();
					pre = con.prepareStatement(sql);
					pre.setString(1, masach);
					pre.setString(2, idloaisach);
					pre.setString(3, loaisach);
					pre.setString(4, tensach);
					pre.setString(5, tacgia);
					pre.setString(6, nhacungcap);
					pre.setString(7, nhaxuatban);
					pre.setString(8, namxuatban);
					pre.setString(9, hinhanh);
					pre.setString(10, soluongnhap);
					pre.setString(11, daban);
					pre.setString(12, tonkho);
					pre.setString(13, dongia);
					pre.setString(14, gioithieu);
					
					
					pre.executeUpdate();
					
					
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
			
		
		public static void main(String[] args) {
			SanphamDao Dao = new SanphamDao();
			Dao.insertSanpham("15","1","ACC","AB", "ABC", "A", "B", "2017", "image", "8", "9", "10", "11", "ac");
			List<Sanpham> sp = Dao.selectAllSanpham();
			for(Sanpham spp: sp)
			{
			System.out.println(spp);
			}
		}
		
}
