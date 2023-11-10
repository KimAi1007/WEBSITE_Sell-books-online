package Model;

public class Customer {
	private int id ;
	private String firstname ;
	private String lastname ;
	private String pass ;
	private String gmail;
	private int phone ;
	private String address ;
	private int isAdmin;
	private int isCustomer ;
	public Customer() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Customer(int id, String firstname, String lastname, String pass, String gmail, int phone, String address,
			int isAdmin, int isCustomer) {
		super();
		this.id = id;
		this.firstname = firstname;
		this.lastname = lastname;
		this.pass = pass;
		this.gmail = gmail;
		this.phone = phone;
		this.address = address;
		this.isAdmin = isAdmin;
		this.isCustomer = isCustomer;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getFirstname() {
		return firstname;
	}
	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}
	public String getLastname() {
		return lastname;
	}
	public void setLastname(String lastname) {
		this.lastname = lastname;
	}
	public String getPass() {
		return pass;
	}
	public void setPass(String pass) {
		this.pass = pass;
	}
	public String getGmail() {
		return gmail;
	}
	public void setGmail(String gmail) {
		this.gmail = gmail;
	}
	public int getPhone() {
		return phone;
	}
	public void setPhone(int phone) {
		this.phone = phone;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
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
		return "Customer [id=" + id + ", firstname=" + firstname + ", lastname=" + lastname + ", pass=" + pass
				+ ", gmail=" + gmail + ", phone=" + phone + ", address=" + address + ", isAdmin=" + isAdmin
				+ ", isCustomer=" + isCustomer + "]";
	}
	
	
}