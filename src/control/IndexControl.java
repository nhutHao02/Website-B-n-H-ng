package control;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.SanPhamDAO;
import entity.SanPham;

/**
 * Servlet implementation class IndexControl
 */
@WebServlet("/IndexControl")
public class IndexControl extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public IndexControl() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		HttpSession session = request.getSession(true);
		SanPhamDAO dao = (SanPhamDAO) session.getAttribute("spDAO");
		if(dao==null) {
			dao=new SanPhamDAO();
			session.setAttribute("spDAO", dao);
		}
		
		getServletContext().getRequestDispatcher("/index.jsp").forward(request, response);

	
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
