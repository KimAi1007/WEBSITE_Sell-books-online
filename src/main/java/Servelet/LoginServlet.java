package Servelet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Dao.AccountDao;
import Model.Account;



@WebServlet("/LoginServelet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.sendRedirect("Login.jsp");

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username = request.getParameter("txtUsername");
		String pass = request.getParameter("txtPassword");

		AccountDao dao = new AccountDao();
		
		try { 
			Account isValid = dao.checkLogin(username, pass);
			
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