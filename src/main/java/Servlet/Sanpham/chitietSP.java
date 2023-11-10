package Servlet.Sanpham;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Dao.SanphamDao;
import Model.Sanpham;

@WebServlet("/chitietSP")
public class chitietSP extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
 
    public chitietSP() {
        super();
       
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		 String id = request.getParameter("id"); 
		 SanphamDao sanphamDao = new SanphamDao(); 
		 Sanpham sp =sanphamDao.getAllSanpham(id); 
		 
		 
		 request.setAttribute("chitietSP", sp);
		 request.getRequestDispatcher("ChitietSP.jsp").forward(request, response);
		 

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
