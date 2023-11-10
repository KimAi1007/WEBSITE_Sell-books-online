package SevletLoaiSanpham;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Dao.LoaisachDao;
import Model.Loaisach;


/**
 * Servlet implementation class SearchLoaiSanpham
 */
@WebServlet("/SearchLoaiSanpham")
public class SearchLoaiSanpham extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SearchLoaiSanpham() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		try {
			String searchValue = request.getParameter("txtSearchValue");
			
			LoaisachDao chSdao =new LoaisachDao();
			List<Loaisach> result = chSdao.search(searchValue);
			
			request.setAttribute("listLoaisach", result);
			RequestDispatcher rd=request.getRequestDispatcher("AdminLoaisach.jsp");
			rd.forward(request, response);
			
		}catch (Exception ex) {
			ex.getMessage();
		}
	}
}
