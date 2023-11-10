package Servlet.Customer;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Dao.CustomerDao;
import Model.Customer;


@WebServlet("/ReadCustomer")
public class ReadCustomer extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public ReadCustomer() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		CustomerDao customerDao = new CustomerDao();
		List<Customer> listCustomer = customerDao.selectAllCustomer();
		request.setAttribute("listCustomer", listCustomer);
		request.getRequestDispatcher("AdminKH.jsp").forward(request, response);

	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
