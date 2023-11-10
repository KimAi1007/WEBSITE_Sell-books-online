package Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import Connection.DbCon;
import Model.Customer;
import Model.Sanpham;
import Servlet.Customer.UpdateCustomer;


public class CustomerDao {
	Connection con = null;
	PreparedStatement pre = null;
	ResultSet rs = null;


	public List<Customer> selectAllCustomer() {
		List<Customer> customers = new ArrayList<>();
		String sql = "SELECT * FROM customer";
		try {
			con = new DbCon().getConnection();
			pre = con.prepareStatement(sql);
			rs = pre.executeQuery();
			while(rs.next()) {
				customers.add(new Customer(rs.getInt(1),
						rs.getString(2),
						rs.getString(3),
						rs.getString(4),
						rs.getString(5),
						rs.getInt(6),
						rs.getString(7),
						rs.getInt(8),
						rs.getInt(9))); 
			}
			
		} catch (Exception e) {
		}
		return customers;
	}


	public List<Customer> search(String searchValue) {
		List<Customer> listCSearchs;
		listCSearchs = new ArrayList<>();
		
		Connection con =null;
		PreparedStatement stm =  null;
		ResultSet rs = null;
		try {
			con = DbCon.getConnection();
			String sql = "SELECT * FROM customer where firstname like ? \r\n"
					+ "or lastname like ?\r\n"
					+ "or gmail like ?\r\n"
					+ "or phone like ?\r\n"
					+ "or address like ?;";
			stm = con.prepareStatement(sql);
			stm.setString(1, "%" + searchValue + "%");
			stm.setString(2, "%" + searchValue + "%");
			stm.setString(3, "%" + searchValue + "%");
			stm.setString(4, "%" + searchValue + "%");
			stm.setString(5, "%" + searchValue + "%");

			rs = stm.executeQuery();
			while (rs.next()) {
				listCSearchs.add(new Customer(rs.getInt(1),
						rs.getString(2),
						rs.getString(3),
						rs.getString(4),
						rs.getString(5),
						rs.getInt(6),
						rs.getString(7),
						rs.getInt(8),
						rs.getInt(9))); 
			}
		} catch (Exception e) {
		}
		return listCSearchs;
	}
	public void insertCustomer(String id,String firstname, String lastname,String pass,String gmail,String phone,String address, String isAdmin , String isCustomer) {

		String sql = "insert into customer (id,firstname,lastname,pass,gmail,phone,address,isAdmin,isCustomer)"
				+ "values (?,?,?,?,?,?,?,?,?);";
		try {
			con = DbCon.getConnection();
			pre = con.prepareStatement(sql);
			pre.setString(1, id);
			pre.setString(2, firstname);
			pre.setString(3, lastname);
			pre.setString(4, pass);
			pre.setString(5, gmail);
			pre.setString(6, phone);
			pre.setString(7, address);
			pre.setString(8, isAdmin);
			pre.setString(9, isCustomer);
			pre.executeUpdate();
			
			
		} catch (Exception e) {
		}
	}


	public void deleteCustomer(String id) {
		
		String sql = "delete from customer where id = ?;";
		try {
			con = DbCon.getConnection();
			pre = con.prepareStatement(sql);
			pre.setString(1, id);
			pre.executeUpdate();
			
			
		} catch (Exception e) {
		}
	}
		public Customer getCustomer(String id) {

			String sql = "select * from customer where id = ?;";
			try {
				con = DbCon.getConnection();
				pre = con.prepareStatement(sql);
				pre.setString(1, id);
				rs = pre.executeQuery();
				while(rs.next()) {
					return new Customer(rs.getInt(1),
							rs.getString(2),
							rs.getString(3),
							rs.getString(4),
							rs.getString(5),
							rs.getInt(6),
							rs.getString(7),
							rs.getInt(8),
							rs.getInt(9)); 
				}
						
			} catch (Exception e) {
			}
			return null;
	}
	
	public void updateCustomer(String id, String isAdmin , String isCustomer) {

		String sql = "update customer set isAdmin= ?,isCustomer= ? where id=?";
		try {
			con = DbCon.getConnection();
			pre = con.prepareStatement(sql);
			pre.setString(1, isAdmin);
			pre.setString(2, isCustomer);
			
			pre.setString(3, id);
			pre.executeUpdate();
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	public void updateTKCN(String id,String firstname, String lastname,String pass,String gmail,String phone,String address) {

		String sql = "update customer set firstname=? ,lastname=? ,pass =? ,gmail=? ,phone=? ,address=? where id=?";
		try {
			con = DbCon.getConnection();
			pre = con.prepareStatement(sql);
			pre.setString(1, firstname);
			pre.setString(2, lastname);
			pre.setString(3, pass);
			pre.setString(4, gmail);
			pre.setString(5, phone);
			pre.setString(6, address);
			
			pre.setString(7, id);
			pre.executeUpdate();
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	// Phần đăng nhập trong bảng khách hàng
	
	public Customer checkLoginn(String lastname, String pass) {
		Connection con = null;
		PreparedStatement pre = null;
		ResultSet rs = null;

		try {
			con = DbCon.getConnection();
			if (con != null) {
				String sql = "SELECT * FROM customer where lastname=? and pass=?";
				pre = con.prepareStatement(sql);
				pre.setString(1, lastname);
				pre.setString(2, pass);

				rs = pre.executeQuery();
				while (rs.next()) {
					return new Customer(rs.getInt(1),
							rs.getString(2),
							rs.getString(3),
							rs.getString(4),
							rs.getString(5),
							rs.getInt(6),
							rs.getString(7),
							rs.getInt(8),
							rs.getInt(9)); 
				}
			}

		} catch(Exception e) {			
		}
		return null;
	}

	public Customer checkAccount(String lastname) {
		Connection con = null;
		PreparedStatement pre = null;
		ResultSet rs = null;

		try {
			con = DbCon.getConnection();
			if (con != null) {
			String sql = "SELECT * FROM customer where lastname=?";
			pre = con.prepareStatement(sql);
				pre.setString(1, lastname);

				rs = pre.executeQuery();
				while (rs.next()) {
					return new Customer(rs.getInt(1),
							rs.getString(2),
							rs.getString(3),
							rs.getString(4),
							rs.getString(5),
							rs.getInt(6),
							rs.getString(7),
							rs.getInt(8),
							rs.getInt(9));  
				}
			}

				} catch(Exception e) {			
				}
				return null;
			

}
	public void signUp(String firstname, String lastname,String pass) {
		Connection con = null;
		PreparedStatement pre = null;
		try {
			con = DbCon.getConnection();		
			if (con != null) {
				String sql = "insert into customer (firstname,lastname,pass,isAdmin,isCustomer) values (?,?,?,0,1); ";
				pre = con.prepareStatement(sql);
					pre.setString(1, firstname);
					pre.setString(2, lastname);
					pre.setString(3, pass);
					pre.executeUpdate();
					
			}}
				 catch(Exception e) {	
			e.printStackTrace();
		}
			}	
	
	// ĐỌC TÀI KHOẢN CÁ NHÂN
	
public Customer getAllCustomer(String id ) {
		
		String sql = "SELECT * FROM customer where id = ?";
		try {
			con = DbCon.getConnection();
			pre = con.prepareStatement(sql);
			pre.setString(1, id);
			rs = pre.executeQuery();
			while(rs.next()) {
				return new Customer(rs.getInt(1),
						rs.getString(2),
						rs.getString(3),
						rs.getString(4),
						rs.getString(5),
						rs.getInt(6),
						rs.getString(7),
						rs.getInt(8),
						rs.getInt(9)); 
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

	public static void main(String[] args) {
		CustomerDao dao = new CustomerDao();
		
		Customer css = dao.getAllCustomer("1");
	 
		System.out.println(css);
}
}
