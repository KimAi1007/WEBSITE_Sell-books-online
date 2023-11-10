package Servlet.Sanpham;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Dao.LoaisachDao;
import Dao.SanphamDao;
import Model.Loaisach;
import Model.Sanpham;


@WebServlet("/LoaiSP")
public class LoaiSP extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public LoaiSP() {
        super();
      
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		  String id = request.getParameter("id"); 
		  //da lay ID ve 
		  SanphamDao Dao = new SanphamDao(); 
		  LoaisachDao loaisachDao = new LoaisachDao(); 
		  
		  List<Sanpham> listSanpham = Dao.getAllSanphamBycid(id); 
		  List<Loaisach> listLoaisach =loaisachDao.selectAllLoaisach(); 
		  
		  request.setAttribute("category", listLoaisach); 
		  request.setAttribute("listSanpham", listSanpham);
			/* request.getRequestDispatcher("Sanpham.jsp").forward(request, response); */
		 
			/*
			 * String id = request.getParameter("id"); LoaisachDao loaisachDao = new
			 * LoaisachDao(); Loaisach ls =loaisachDao.getAllLoaisach(id);
			 * 
			 * 
			 * request.setAttribute("loaisach", ls);
			 */
		  request.getRequestDispatcher("Sanpham.jsp").forward(request, response);
		

	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
