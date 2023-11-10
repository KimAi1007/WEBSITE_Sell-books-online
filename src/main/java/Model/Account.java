package Model;

public class Account {
	private int id ;
	private String username;
	private String pass;
	private int isAdmin;
	private int isCustomer;
	public Account() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Account(int id, String username, String pass, int isAdmin, int isCustomer) {
		super();
		this.id = id;
		this.username = username;
		this.pass = pass;
		this.isAdmin = isAdmin;
		this.isCustomer = isCustomer;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPass() {
		return pass;
	}
	public void setPass(String pass) {
		this.pass = pass;
	}
	public int getIsAdmin() {
		return isAdmin;
	}
	public void setIsAdmin(int isAdmin) {
		this.isAdmin = isAdmin;
	}
	public int getIsCustomer() {
		return isCustomer;
	}
	public void setIsCustomer(int isCustomer) {
		this.isCustomer = isCustomer;
	}
	@Override
	public String toString() {
		return "Account [id=" + id + ", username=" + username + ", pass=" + pass + ", isAdmin=" + isAdmin
				+ ", isCustomer=" + isCustomer + "]";
	}
	
	
}