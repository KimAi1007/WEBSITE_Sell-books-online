package Servlet.Customer;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Dao.CustomerDao;
import Model.Customer;

@WebServlet("/SearchCustomer")
public class SearchCustomer extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
    public SearchCustomer() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		try {
			String searchValue = request.getParameter("txtSearchValue");
			
			CustomerDao schCdao=new CustomerDao();
			List<Customer> result = schCdao.search(searchValue);
			
			request.setAttribute("listCustomer", result);
			RequestDispatcher rd=request.getRequestDispatcher("AdminKH.jsp");
			rd.forward(request, response);
			
		}catch (Exception ex) {
			ex.getMessage();
		}
	}
}
