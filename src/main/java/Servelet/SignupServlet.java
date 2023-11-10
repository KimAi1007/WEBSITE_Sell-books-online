package Servelet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Dao.CustomerDao;
import Model.Customer;



@WebServlet("/SignupServlet")
public class SignupServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.sendRedirect("Signup.jsp");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		
		String firstname = request.getParameter("login-firstname");
		String lastname = request.getParameter("login-lastname");
		String pass = request.getParameter("login-password");

		
		

		CustomerDao dao = new CustomerDao();
		Customer acc = dao.checkAccount(lastname);
		if (acc == null) {
			dao.signUp(firstname, lastname, pass);
			request.setAttribute("messe","Dang ki thanh cong");
			RequestDispatcher rd = request.getRequestDispatcher("Signup.jsp");
			rd.forward(request, response);	
		}else {
			request.setAttribute("mess","Dang ki that bai");
		    RequestDispatcher rd = request.getRequestDispatcher("Signup.jsp");
			rd.forward(request, response);	
		}
	}
	}

