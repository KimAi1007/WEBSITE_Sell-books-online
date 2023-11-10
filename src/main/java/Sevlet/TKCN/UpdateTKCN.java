package Sevlet.TKCN;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Dao.CustomerDao;
import Model.Customer;

/**
 * Servlet implementation class UpdateTKCN
 */
@WebServlet("/UpdateTKCN")
public class UpdateTKCN extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateTKCN() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		
		String id = request.getParameter("id");
		CustomerDao customerDao = new CustomerDao();
		Customer customerEdit = customerDao.getCustomer(id);
		request.setAttribute("TKCNedit", customerEdit);
		request.getRequestDispatcher("NewFile.jsp").forward(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		
		String id = request.getParameter("id");

		String firstname = request.getParameter("firstname");
		String lastname = request.getParameter("lastname");
		String pass = request.getParameter("pass");
		String gmail = request.getParameter("gmail");
		String phone = request.getParameter("phone");
		String address = request.getParameter("address");
		
		
		
		CustomerDao customerDao = new CustomerDao();
		customerDao.updateTKCN(id, firstname, lastname, pass, gmail, phone, address);
		response.sendRedirect("ReadSPhome");
	}

}
