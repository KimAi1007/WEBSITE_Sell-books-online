package Servlet.Customer;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Dao.CustomerDao;
import Model.Customer;



@WebServlet("/CreateCustomer")
public class CreateCustomer extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public CreateCustomer() {
        super();
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
	
		request.getRequestDispatcher("CreateCustomer.jsp").forward(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		request.setCharacterEncoding("UTF-8");
		
		String id = request.getParameter("id");
		String firstname = request.getParameter("firstname");
		String lastname = request.getParameter("lastname");
		String pass = request.getParameter("password");
		String gmail = request.getParameter("gmail");
		String phone = request.getParameter("phone");
		String address = request.getParameter("address");
		String isAdmin = request.getParameter("isAdmin");
		
		String isCustomer = request.getParameter("isCustomer");
		
		CustomerDao customerDao = new CustomerDao();
		customerDao.insertCustomer(id, firstname, lastname, pass, gmail, phone, address, isAdmin, isCustomer);
		response.sendRedirect("ReadCustomer");
	}
}
