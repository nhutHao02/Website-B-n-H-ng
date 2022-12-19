package control;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.DanhGiaDAO;
import dao.SanPhamDAO;
import entity.DanhGia;
import entity.SanPham;

/**
 * Servlet implementation class ReviewControl
 */
@WebServlet("/ReviewControl")
public class ReviewControl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ReviewControl() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		HttpSession session = request.getSession(true);
		String maSach=request.getParameter("masach");
		//lay ra danh gia cua sach
		DanhGiaDAO dgDAO=new DanhGiaDAO();
		
		
		// them danh gia
		String name=request.getParameter("name");
		String noiDung=request.getParameter("message");
		String email=request.getParameter("email");
		System.out.println(name);
		System.out.println(noiDung);
//		int sao=Integer.parseInt(request.getParameter("star"));
		long millis=System.currentTimeMillis();   
		java.sql.Date date=new java.sql.Date(millis);   
		String ngay=String.valueOf(date);
		dgDAO.themDanhGia(name, ngay, 5, email, noiDung, maSach);
		List<DanhGia> listDG=dgDAO.getDanhGia(maSach);
		session.setAttribute("sizeListDG", listDG.size());
		session.setAttribute("listDG", listDG);

		getServletContext().getRequestDispatcher("/product-details.jsp").forward(request, response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
