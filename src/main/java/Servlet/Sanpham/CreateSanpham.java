package Servlet.Sanpham;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Dao.SanphamDao;
import Dao.SanphamDao;

@WebServlet("/CreateSanpham")
public class CreateSanpham extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public CreateSanpham() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher("CreateSanpham.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		
		String masach = request.getParameter("masach");
		String idloaisach = request.getParameter("idloaisach");
		String loaisach = request.getParameter("loaisach");
		String tensach = request.getParameter("tensach");
		String tacgia = request.getParameter("tacgia");
		String nhacungcap = request.getParameter("nhacungcap");
		String nhaxuatban = request.getParameter("nhaxuatban");
		String namxuatban = request.getParameter("namxuatban");
		String hinhanh = request.getParameter("hinhanh");
		String soluongnhap = request.getParameter("soluongnhap");
		String daban = request.getParameter("daban");
		String tonkho = request.getParameter("tonkho");
		String dongia = request.getParameter("dongia");
		String gioithieu = request.getParameter("gioithieu");
		
		SanphamDao sanphamDao = new SanphamDao();
		sanphamDao.insertSanpham(masach, idloaisach, loaisach, tensach, tacgia, nhacungcap, nhaxuatban, nhaxuatban, hinhanh, soluongnhap, daban, tonkho, dongia, gioithieu);
	
		response.sendRedirect("ReadSanphamADMIN");
	}

}
