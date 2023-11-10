package SevletLoaiSanpham;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Dao.LoaisachDao;



@WebServlet("/DeleteLoaiSanpham")
public class DeleteLoaiSanpham extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public DeleteLoaiSanpham() {
        super();

    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String idloaisach = request.getParameter("idloaisach");
		LoaisachDao loaisachDao = new LoaisachDao();
		loaisachDao.deleteLoaiSanpham(idloaisach);
		response.sendRedirect("ReadLoaiSanpham");
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
