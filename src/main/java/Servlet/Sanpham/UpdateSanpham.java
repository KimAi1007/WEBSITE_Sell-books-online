package Servlet.Sanpham;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Dao.CustomerDao;
import Dao.SanphamDao;
import Model.Customer;
import Model.Sanpham;


@WebServlet("/UpdateSanpham")
public class UpdateSanpham extends HttpServlet {
	private static final long serialVersionUID = 1L;
 
    public UpdateSanpham() {
        super();
       
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id = request.getParameter("id");
		SanphamDao sanphamDao = new SanphamDao();
		Sanpham sanphamEdit = sanphamDao.getAllSanpham(id);
		request.setAttribute("sanphamEdit", sanphamEdit);
		request.getRequestDispatcher("EditSanpham.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		
		
		String masach = request.getParameter("masach");
		String hinhanh = request.getParameter("hinhanh");
		String idloaisach = request.getParameter("idloaisach");
		String loaisach = request.getParameter("loaisach");
		String tensach = request.getParameter("tensach");
		String tacgia = request.getParameter("tacgia");
		String nhacungcap = request.getParameter("nhacungcap");
		String nhaxuatban = request.getParameter("nhaxuatban");
		String namxuatban = request.getParameter("namxuatban");
		String dongia = request.getParameter("dongia");
		String soluongnhap = request.getParameter("soluongnhap");
		String daban = request.getParameter("daban");
		String tonkho = request.getParameter("tonkho");
		String gioithieu = request.getParameter("gioithieu");
		
		SanphamDao sanphamDao = new SanphamDao();
		sanphamDao.updateSanpham(masach, hinhanh, tensach, tacgia, nhacungcap, nhaxuatban, namxuatban, soluongnhap, daban, tonkho, dongia, gioithieu, loaisach, idloaisach);
		response.sendRedirect("ReadSanphamADMIN");
	}

}
