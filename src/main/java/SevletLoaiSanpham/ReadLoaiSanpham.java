package SevletLoaiSanpham;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Dao.LoaisachDao;
import Model.Loaisach;


@WebServlet("/ReadLoaiSanpham")
public class ReadLoaiSanpham extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public ReadLoaiSanpham() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		LoaisachDao loaisachDao = new LoaisachDao();
		List<Loaisach> listLoaisach = loaisachDao.selectAllLoaisach();
		 request.setAttribute("listLoaisach", listLoaisach);
		 request.getRequestDispatcher("AdminLoaisach.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
