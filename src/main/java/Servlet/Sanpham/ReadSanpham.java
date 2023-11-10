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

@WebServlet("/ReadSanpham")
public class ReadSanpham extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
    public ReadSanpham() {
        super();
       
    }
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		SanphamDao sanphamDao = new SanphamDao();
		LoaisachDao loaisachDao = new LoaisachDao();
		List<Sanpham> listSanpham = sanphamDao.selectAllSanpham();
		List<Loaisach> listLoaisach =loaisachDao.selectAllLoaisach(); 
		
		 request.setAttribute("listSanpham", listSanpham);
		 request.setAttribute("category", listLoaisach);
		 /* 
		 * String id = request.getParameter("id"); Loaisach ls
		 * =loaisachDao.getAllLoaisach(id); request.setAttribute("loaisach", ls);
		 */
        request.getRequestDispatcher("Sanpham.jsp").forward(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
