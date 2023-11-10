package Dao;

import java.sql.Connection;


import java.sql.PreparedStatement;
import java.sql.ResultSet;

import Connection.DbCon;
import Model.Account;


public class AccountDao {
	
	private static final long serialVersionUID = 1L;

	public Account checkLogin(String username, String pass) {
		Connection con = null;
		PreparedStatement pre = null;
		ResultSet rs = null;

		try {
			con = DbCon.getConnection();
			if (con != null) {
				String sql = "SELECT * FROM LOGIN where username=? and pass=?";
				pre = con.prepareStatement(sql);
				pre.setString(1, username);
				pre.setString(2, pass);

				rs = pre.executeQuery();
				while (rs.next()) {
					return new Account(rs.getInt(1),rs.getString(2),rs.getString(3),rs.getInt(4),rs.getInt(5)); 
				}
			}

		} catch(Exception e) {			
		}
		return null;
	}

	public Account checkAccount(String username) {
		Connection con = null;
		PreparedStatement pre = null;
		ResultSet rs = null;

		try {
			con = DbCon.getConnection();
			if (con != null) {
			String sql = "SELECT * FROM LOGIN where username=?";
			pre = con.prepareStatement(sql);
				pre.setString(1, username);

				rs = pre.executeQuery();
				while (rs.next()) {
					return new Account(rs.getInt(1),rs.getString(2),rs.getString(3),rs.getInt(4),rs.getInt(5)); 
				}
			}

				} catch(Exception e) {			
				}
				return null;
			}
public void signUp(String username,String pass) {
	Connection con = null;
	PreparedStatement pre = null;

	try {
		con = DbCon.getConnection();
		if (con != null) {
			String sql = "INSERT INTO LOGIN (username,pass,isAdmin,isCustomer) VALUES (?,?,0,1);" ;
			pre = con.prepareStatement(sql);
			pre.setString(1, username);
			pre.setString(2, pass);
			pre.executeUpdate();
		}

	} catch(Exception e) {	
		e.printStackTrace();
	}
}
public static void main(String[] args) {
	AccountDao dao = new AccountDao();
	
          dao.checkLogin("CD", "1234");
	
	
	
	System.out.println();
}
}
	
