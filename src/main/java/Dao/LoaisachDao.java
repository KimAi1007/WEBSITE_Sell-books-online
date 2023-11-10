package Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import Connection.DbCon;
import Model.Loaisach;
import Servlet.Customer.DeleteCustomer;


public class LoaisachDao {
	Connection con = null;
	PreparedStatement pre = null;
	ResultSet rs = null;


	public List<Loaisach> selectAllLoaisach() {
		List<Loaisach> loaisach = new ArrayList<>();
		String sql = "SELECT * FROM loaisach";
		try {
			con = DbCon.getConnection();
			pre = con.prepareStatement(sql);
			rs = pre.executeQuery();
			while(rs.next()) {
				loaisach.add(new Loaisach(rs.getInt(1),
						rs.getString(2)));
						
			}
			
		} catch (Exception e) {
		}
		return loaisach;
	}
public List<Loaisach> getAllLoaisachBy(String id ) {
	List<Loaisach> loaisach = new ArrayList<>();
		String sql = "SELECT * FROM loaisach where idloaisach= ?";
		try {
			con = DbCon.getConnection();
			pre = con.prepareStatement(sql);
			pre.setString(1, id);
			rs = pre.executeQuery();
			while(rs.next()) {
				loaisach.add(new Loaisach(rs.getInt(1),
						rs.getString(2)));
			
			}
			
		} catch (Exception e) {
		}
		return loaisach;
	}
public Loaisach getAllLoaisach(String id ) {
		
		String sql = "SELECT * FROM loaisach " +" where idloaisach = ?";
		try {
			con = DbCon.getConnection();
			pre = con.prepareStatement(sql);
			pre.setString(1, id);
			rs = pre.executeQuery();
			while(rs.next()) {
				return new Loaisach(rs.getInt(1),
						rs.getString(2));
			
			}
			
		} catch (Exception e) {
		}
		return null;
	}
public List<Loaisach> search(String searchValue) {
	List<Loaisach> listSSearchs;
	listSSearchs = new ArrayList<>();
	
	Connection con =null;
	PreparedStatement stm =  null;
	ResultSet rs = null;
	try {
		con = DbCon.getConnection();
		String sql = "SELECT * FROM loaisach where loaisach like ?\r\n";
			
		stm = con.prepareStatement(sql);
		stm.setString(1, "%" + searchValue + "%");

		rs = stm.executeQuery();
		while (rs.next()) {
			listSSearchs.add(new Loaisach(rs.getInt(1),
					rs.getString(2)));
		}
	} catch (Exception e) {
	}
return listSSearchs;
}


public void updateLoaiSanpham(String idloaisach, String loaisach) {

	String sql = "update loaisach set loaisach =? where idloaisach =? ;";
	try {
		con = DbCon.getConnection();
		pre = con.prepareStatement(sql);
		
		pre.setString(1, loaisach);
		
		pre.setString(2 , idloaisach);
		pre.executeUpdate();
		
		
	} catch (Exception e) {
		e.printStackTrace();
	}
}
	public void deleteLoaiSanpham(String idloaisach) {
		
		String sql = "delete from loaisach where idloaisach = ?;";
		try {
			con = DbCon.getConnection();
			pre = con.prepareStatement(sql);
			pre.setString(1, idloaisach);
			pre.executeUpdate();
			
		} catch (Exception e) {
		}
	}
	
	public void insertLoaiSanpham(String idloaisach, String loaisach) {

		String sql = "insert into loaisach ( idloaisach , loaisach)"
				+ "values (?,?);";
		try {
			con = DbCon.getConnection();
			pre = con.prepareStatement(sql);
			pre.setString(1, idloaisach);
			pre.setString(2, loaisach);

			pre.executeUpdate();
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
public static void main(String[] args) {
	LoaisachDao dao = new LoaisachDao();
	
          dao.deleteLoaiSanpham("8");
	
	
	
	System.out.println();
}
}



