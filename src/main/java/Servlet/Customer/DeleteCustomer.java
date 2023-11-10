package Servlet.Customer;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Dao.CustomerDao;


@WebServlet("/DeleterCustomer")
public class DeleteCustomer extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
    public DeleteCustomer() {
        super();
        // TODO Auto-generated constructor stub
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		String id = request.getParameter("id");
		CustomerDao customerDao = new CustomerDao();
		customerDao.deleteCustomer(id);
		response.sendRedirect("ReadCustomer");
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		doGet(request, response);
	}

}
