package control;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.SanPhamDAO;
import entity.SanPham;

/**
 * Servlet implementation class SearchByAjax
 */
@WebServlet("/SearchByAjax")
public class SearchByAjax extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SearchByAjax() {
        super();
        // TODO Auto-generated constructor stub
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		String text=request.getParameter("search");
		System.out.println(text);
		SanPhamDAO dao=new SanPhamDAO();
		List<SanPham> list=dao.getProductSearch(text);
		
		PrintWriter out=response.getWriter();
		for (SanPham sp : list) {
			int gia=(int) (sp.getGia()-(((sp.getGia())*(Integer.parseInt(sp.getGiamGia())))/100));
			out.println("<div class=\"col-lg-4 col-sm-6\">\r\n"
					+ "					<div class=\"product-card\">\r\n"
					+ "						<div class=\"product-grid-content\">\r\n"
					+ "							<div class=\"product-header\">\r\n"
					+ "								<a href=\"#\" class=\"author\"> "+sp.getTacGia()+" </a>\r\n"
					+ "								<h3>\r\n"
					+ "									<a href=\"ProductDetailsControl?masach="+sp.getMaSach()+"\">"+sp.getTenSach()+"</a>\r\n"
					+ "								</h3>\r\n"
					+ "							</div>\r\n"
					+ "							<div class=\"product-card--body\">\r\n"
					+ "								<div class=\"card-image\">\r\n"
					+ "									<img src=\""+sp.getImage()+"\" alt=\"\">\r\n"
					+ "									<div class=\"hover-contents\">\r\n"
					+ "										<a href=\"product-details.html\" class=\"hover-image\"> <img\r\n"
					+ "											src=\""+sp.getImage()+"\" alt=\"\">\r\n"
					+ "										</a>\r\n"
					+ "										<div class=\"hover-btns\">\r\n"
					+ "											<a href=\"cart.html\" class=\"single-btn\"> <i\r\n"
					+ "												class=\"fas fa-shopping-basket\"></i>\r\n"
					+ "											</a> <a href=\"wishlist.html\" class=\"single-btn\"> <i\r\n"
					+ "												class=\"fas fa-heart\"></i>\r\n"
					+ "											</a> <a href=\"compare.html\" class=\"single-btn\"> <i\r\n"
					+ "												class=\"fas fa-random\"></i>\r\n"
					+ "											</a> <a href=\"#\" data-bs-toggle=\"modal\"\r\n"
					+ "												data-bs-target=\"#quickModal\" class=\"single-btn\"> <i\r\n"
					+ "												class=\"fas fa-eye\"></i>\r\n"
					+ "											</a>\r\n"
					+ "										</div>\r\n"
					+ "									</div>\r\n"
					+ "									\r\n"
					+ "								</div>\r\n"
					+ "								<div class=\"price-block\">\r\n"
					+ "									<span class=\"price\">"+gia+"vnđ</span>\r\n"
					+ "									<del class=\"price-old\">"+sp.getGia()+"vnđ</del>\r\n"
					+ "									<span class=\"price-discount\">"+sp.getGiamGia()+"%</span>\r\n"
					+ "								</div>\r\n"
					+ "							</div>\r\n"
					+ "						</div>\r\n"
					+ "\r\n"
					+ "					</div>\r\n"
					+ "				</div>");
		}
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
