package Servelet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


import Dao.CustomerDao;
import Model.Customer;

@WebServlet("/CustomerLOGIN")
public class CustomerLOGIN extends HttpServlet {
	private static final long serialVersionUID = 1L;
 
    public CustomerLOGIN() {
        super();
        
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.sendRedirect("Login.jsp");
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String lastname = request.getParameter("txtUsername");
		String pass = request.getParameter("txtPassword");


		CustomerDao dao = new CustomerDao();
		try { 
			Customer isValid = dao.checkLoginn(lastname, pass);

			if (isValid != null)
			{
				//tao session de luu tru phien dang nhap
				HttpSession session = request.getSession();
				//thiet lap gia tri trong session
				session.setAttribute("username", isValid);
				
				//chuyen den view trang home
				response.sendRedirect("ReadSPhome");
			}else {
				//truong hop dang nhap that bai 
				request.setAttribute("mess","Wrong username or pass !!!");
				RequestDispatcher rd = request.getRequestDispatcher("Loilogin.jsp");
				rd.forward(request, response);
			}
		} finally {
		     response.getWriter().close();
		}
	}

}
