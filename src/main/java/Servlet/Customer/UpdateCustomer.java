package Servlet.Customer;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Dao.CustomerDao;
import Model.Customer;


@WebServlet("/UpdateCustomer")
public class UpdateCustomer extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
    public UpdateCustomer() {
        super();
     
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id");
		CustomerDao customerDao = new CustomerDao();
		Customer customerEdit = customerDao.getCustomer(id);
		request.setAttribute("customerEdit", customerEdit);
		request.getRequestDispatcher("EditCustomer.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id = request.getParameter("id");

		String isAdmin = request.getParameter("isAdmin");
		String isCustomer = request.getParameter("isCustomer");
		
		CustomerDao customerDao = new CustomerDao();
		customerDao.updateCustomer(id, isAdmin, isCustomer);
		response.sendRedirect("ReadCustomer");
	}

}
