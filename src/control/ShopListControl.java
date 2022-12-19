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
 * Servlet implementation class ShopListControl
 */
@WebServlet("/ShopListControl")
public class ShopListControl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ShopListControl() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		// lay trang hien tai
		String page=request.getParameter("page");
		request.setAttribute("page", page);

		
		// lay ra list sp
		SanPhamDAO dao=new SanPhamDAO();
		List<SanPham> list=dao.get12Product(Integer.parseInt(page));
		request.setAttribute("listSP", list);
		
		// dem so trang
		int countPage=dao.getTotalProduct()/12;
		if(dao.getTotalProduct() % 12 !=0) {
			countPage++;
		}
		request.setAttribute("CountP", countPage);
		
		
		request.getRequestDispatcher("/shop.jsp").forward(request, response);
		
	}
	

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
