package Model;

public class Loaisach {
	private int idloaisach;
	private String loaisach;
	public Loaisach() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Loaisach(int idloaisach, String loaisach) {
		super();
		this.idloaisach = idloaisach;
		this.loaisach = loaisach;
	}
	public int getIdloaisach() {
		return idloaisach;
	}
	public void setIdloaisach(int idloaisach) {
		this.idloaisach = idloaisach;
	}
	public String getLoaisach() {
		return loaisach;
	}
	public void setLoaisach(String loaisach) {
		this.loaisach = loaisach;
	}
	@Override
	public String toString() {
		return "Loaisach [idloaisach=" + idloaisach + ", loaisach=" + loaisach + "]";
	}
	
	

}