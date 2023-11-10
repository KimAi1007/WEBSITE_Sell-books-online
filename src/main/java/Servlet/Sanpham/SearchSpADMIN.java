package Servlet.Sanpham;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Dao.SanphamDao;
import Model.Sanpham;


@WebServlet("/SearchSPadmin")
public class SearchSpADMIN extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public SearchSpADMIN() {
        super();
       
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		try {
			String searchValue = request.getParameter("txtSearchValue");
			
			SanphamDao chSdao=new SanphamDao();
			List<Sanpham> result = chSdao.search(searchValue);
			
			request.setAttribute("listSanpham", result);
			RequestDispatcher rd=request.getRequestDispatcher("AdminSanpham.jsp");
			rd.forward(request, response);
			
		}catch (Exception ex) {
			ex.getMessage();
		}
	}

}
