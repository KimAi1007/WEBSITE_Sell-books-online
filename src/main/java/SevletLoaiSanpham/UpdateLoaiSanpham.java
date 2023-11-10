package SevletLoaiSanpham;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Dao.LoaisachDao;
import Model.Loaisach;


/**
 * Servlet implementation class UpdateLoaiSanpham
 */
@WebServlet("/UpdateLoaiSanpham")
public class UpdateLoaiSanpham extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateLoaiSanpham() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id");
		LoaisachDao loaisachDao = new LoaisachDao();
		Loaisach loaisachEdit = loaisachDao.getAllLoaisach(id);
		request.setAttribute("loaisachEdit", loaisachEdit);
		request.getRequestDispatcher("EditLoaiSanpham.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		
		
		String idloaisach = request.getParameter("idloaisach");
		String loaisach = request.getParameter("loaisach");
		
		LoaisachDao loaisachDao = new LoaisachDao();
		loaisachDao.updateLoaiSanpham(idloaisach, loaisach);
		response.sendRedirect("ReadLoaiSanpham");
	}
}
