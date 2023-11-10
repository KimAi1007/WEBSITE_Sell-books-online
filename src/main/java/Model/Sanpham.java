package Model;

public class Sanpham {
	private int masach ;
	private int idloaisach; 
	private String tensach;
	private String tacgia;
	private String nhacungcap; 
	private String nhaxuatban;
	private String namxuatban; 
	private String hinhanh; 
	private int soluongnhap;
	private int daban ;
	private int tonkho; 
	private int dongia ;
	private String gioithieu;
	private String loaisach;
	public Sanpham() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Sanpham(int masach, int idloaisach, String tensach, String tacgia, String nhacungcap, String nhaxuatban,
			String namxuatban, String hinhanh, int soluongnhap, int daban, int tonkho, int dongia, String gioithieu,
			String loaisach) {
		super();
		this.masach = masach;
		this.idloaisach = idloaisach;
		this.tensach = tensach;
		this.tacgia = tacgia;
		this.nhacungcap = nhacungcap;
		this.nhaxuatban = nhaxuatban;
		this.namxuatban = namxuatban;
		this.hinhanh = hinhanh;
		this.soluongnhap = soluongnhap;
		this.daban = daban;
		this.tonkho = tonkho;
		this.dongia = dongia;
		this.gioithieu = gioithieu;
		this.loaisach = loaisach;
	}
	public int getMasach() {
		return masach;
	}
	public void setMasach(int masach) {
		this.masach = masach;
	}
	public int getIdloaisach() {
		return idloaisach;
	}
	public void setIdloaisach(int idloaisach) {
		this.idloaisach = idloaisach;
	}
	public String getTensach() {
		return tensach;
	}
	public void setTensach(String tensach) {
		this.tensach = tensach;
	}
	public String getTacgia() {
		return tacgia;
	}
	public void setTacgia(String tacgia) {
		this.tacgia = tacgia;
	}
	public String getNhacungcap() {
		return nhacungcap;
	}
	public void setNhacungcap(String nhacungcap) {
		this.nhacungcap = nhacungcap;
	}
	public String getNhaxuatban() {
		return nhaxuatban;
	}
	public void setNhaxuatban(String nhaxuatban) {
		this.nhaxuatban = nhaxuatban;
	}
	public String getNamxuatban() {
		return namxuatban;
	}
	public void setNamxuatban(String namxuatban) {
		this.namxuatban = namxuatban;
	}
	public String getHinhanh() {
		return hinhanh;
	}
	public void setHinhanh(String hinhanh) {
		this.hinhanh = hinhanh;
	}
	public int getSoluongnhap() {
		return soluongnhap;
	}
	public void setSoluongnhap(int soluongnhap) {
		this.soluongnhap = soluongnhap;
	}
	public int getDaban() {
		return daban;
	}
	public void setDaban(int daban) {
		this.daban = daban;
	}
	public int getTonkho() {
		return tonkho;
	}
	public void setTonkho(int tonkho) {
		this.tonkho = tonkho;
	}
	public int getDongia() {
		return dongia;
	}
	public void setDongia(int dongia) {
		this.dongia = dongia;
	}
	public String getGioithieu() {
		return gioithieu;
	}
	public void setGioithieu(String gioithieu) {
		this.gioithieu = gioithieu;
	}
	public String getLoaisach() {
		return loaisach;
	}
	public void setLoaisach(String loaisach) {
		this.loaisach = loaisach;
	}
	@Override
	public String toString() {
		return "Sanpham [masach=" + masach + ", idloaisach=" + idloaisach + ", tensach=" + tensach + ", tacgia="
				+ tacgia + ", nhacungcap=" + nhacungcap + ", nhaxuatban=" + nhaxuatban + ", namxuatban=" + namxuatban
				+ ", hinhanh=" + hinhanh + ", soluongnhap=" + soluongnhap + ", daban=" + daban + ", tonkho=" + tonkho
				+ ", dongia=" + dongia + ", gioithieu=" + gioithieu + ", loaisach=" + loaisach + "]";
	}
	
	
	
	}
	
	