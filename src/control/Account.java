package control;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.DonHangDAO;
import dao.KhachHangDAO;
import entity.DonHang;
import entity.KhachHang;

/**
 * Servlet implementation class Account
 */
@WebServlet("/Account")
public class Account extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Account() {
		super();
		// TODO Auto-generated constructor stub
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		HttpSession session = request.getSession();
		String type = request.getParameter("type");
		if(type.equals("load")) {
			KhachHang kh=(KhachHang) session.getAttribute("khachhang");
			if(kh==null) {
				getServletContext().getRequestDispatcher("/login-register.jsp").forward(request, response);
			}else {
				DonHangDAO dhDAO=new DonHangDAO();
				List<DonHang> donhang=dhDAO.getListDonHang(kh.getId());
				session.setAttribute("donhang", donhang);
				
				getServletContext().getRequestDispatcher("/my-account.jsp").forward(request, response);
			}
		}
		
		
		
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		HttpSession session = request.getSession(true);
		String type = request.getParameter("type");
		

		if (type.equals("login")) {
			String email = request.getParameter("user");
			String pass = request.getParameter("passw");
			KhachHangDAO dao = new KhachHangDAO();
			//kiem tra user có tồn tại không
			if(dao.checkUser(email)==false) {
				int error = 1;
				request.setAttribute("error", error);
				getServletContext().getRequestDispatcher("/login-register.jsp").forward(request, response);
			}
			KhachHang khachhang = dao.getKhachHang(email, pass);
			if (khachhang != null) {
				if (khachhang.isAd()) {
					// chuyen toi trang admin
				}
				if (khachhang.isAd()==false) {
					session.setAttribute("khachhang", khachhang);
					getServletContext().getRequestDispatcher("/index.jsp").forward(request, response);
				}

			} else {
				int error = 2;
				request.setAttribute("error", error);
				getServletContext().getRequestDispatcher("/login-register.jsp").forward(request, response);
			}

		}  
		if (type.equals("register")) {
			String email=request.getParameter("email");
			KhachHangDAO dao = new KhachHangDAO();
			if(!(dao.checkUser(email))) {
				int error = 1;
				request.setAttribute("error", error);
				getServletContext().getRequestDispatcher("/login-register.jsp").forward(request, response);
			}
			String fullname=request.getParameter("fullname");
			String pass=request.getParameter("pass");
			String passRP=request.getParameter("passRP");
			if(!(pass.equals(passRP))) {
				int error = 2;
				request.setAttribute("error", error);
				getServletContext().getRequestDispatcher("/login-register.jsp").forward(request, response);
			}
			dao.registerUser(fullname, email, pass);
			getServletContext().getRequestDispatcher("/login-register.jsp").forward(request, response);

		}
		if (type.equals("logout")) {
			session.removeAttribute("khachhang");
			getServletContext().getRequestDispatcher("/index.jsp").forward(request, response);
		}

		if(type.equals("update")) {
			String fullname=request.getParameter("fname");
			String age=request.getParameter("age");
			String gender=request.getParameter("gender");
			String phone=request.getParameter("phone");
			String email=request.getParameter("email");
			String address=request.getParameter("address");
			KhachHang kh=(KhachHang)session.getAttribute("khachhang");
			KhachHangDAO khDAO=new KhachHangDAO();
			khDAO.updateInfo(fullname,Integer.parseInt(age),gender,phone,email,address,kh.getId());
			getServletContext().getRequestDispatcher("/my-account.jsp").forward(request, response);
		}
		if(type.equals("doimk")) {
			String pass=request.getParameter("pass");
			String newpass=request.getParameter("newpass");
			String newpassRP=request.getParameter("newpassRP");
			KhachHang kh=(KhachHang)session.getAttribute("khachhang");
			KhachHangDAO khDAO=new KhachHangDAO();
			khDAO.changePass(pass,kh.getId());
			getServletContext().getRequestDispatcher("/my-account.jsp").forward(request, response);
			
		}
		
		
	}

}
