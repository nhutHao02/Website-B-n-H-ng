package control;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.SanPhamDAO;
import entity.GioHang;
import entity.GioHangItem;
import entity.SanPham;

/**
 * Servlet implementation class WishlistControl
 */
@WebServlet("/WishlistControl")
public class WishlistControl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public WishlistControl() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		HttpSession session = request.getSession();
		GioHang wishlist = (GioHang) session.getAttribute("wishlist");
		if (wishlist == null) {
			wishlist = new GioHang();
		}
		String maSach = request.getParameter("masach");
		String type = request.getParameter("txt");
		String page = request.getParameter("page");
		if (type.equals("load")) {
			getServletContext().getRequestDispatcher("/wishlist.jsp").forward(request, response);

		}
		if (type.equals("add")) {
			SanPham sach = new SanPhamDAO().getProduct(maSach);
			boolean check = false;
			// kiem tra sách có tồn tại trong giỏ chưa
			for (int i = 0; i < wishlist.getCard().size(); i++) {
				GioHangItem item = wishlist.getCard().get(i);
				if (item.getSp().compareSP(sach)) {
					item.addSoluong();
					check = true;
					break;
				}
			}
			// kiểm tra nếu kh tồn tại
			if (check == false) {
				GioHangItem item = new GioHangItem(sach, 1);
				wishlist.getCard().add(item);
			}
			session.setAttribute("wishlist", wishlist);

			getServletContext().getRequestDispatcher("/" + page).forward(request, response);

		}

		if (type.equals("remove")) {
			int index=0;
			for (int i = 0; i < wishlist.getCard().size(); i++) {
				if(wishlist.getCard().get(i).getSp().getMaSach().equals(maSach)) {
					index=i;
					break;
				}
			}
			wishlist.getCard().remove(index);
			
			session.setAttribute("wishlist", wishlist);
			getServletContext().getRequestDispatcher("/" + page).forward(request, response);
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
