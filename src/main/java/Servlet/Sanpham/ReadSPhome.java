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

/**
 * Servlet implementation class ReadSPhome
 */
@WebServlet("/ReadSPhome")
public class ReadSPhome extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public ReadSPhome() {
        super();
        
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		SanphamDao sanphamDao = new SanphamDao();
		List<Sanpham> listSanpham = sanphamDao.getAllSanphamTOP();
		 request.setAttribute("listSP", listSanpham);
		 request.getRequestDispatcher("Trangchu.jsp").forward(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
