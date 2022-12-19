package control;

import java.io.IOException;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.DanhGiaDAO;
import dao.ImageDAO;
import dao.SanPhamDAO;
import entity.DanhGia;
import entity.Images;
import entity.SanPham;

/**
 * Servlet implementation class ProductDetailsControl
 */
@WebServlet("/ProductDetailsControl")
public class ProductDetailsControl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ProductDetailsControl() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		HttpSession session = request.getSession(true);
		String maSach=request.getParameter("masach");
		//lay ra sach can hien thi
		SanPham sp=new SanPhamDAO().getProduct(maSach);
		List<SanPham> list=new SanPhamDAO().getAllProductByCategory(maSach);
		//lay ra danh gia cua sach
		DanhGiaDAO dgDAO=new DanhGiaDAO();
		List<DanhGia> listDG=dgDAO.getDanhGia(maSach);
		//lay image
		List<Images> imgs=new ImageDAO().getAllImages(maSach);
		session.setAttribute("imgs", imgs);
		session.setAttribute("listDG", listDG);
		session.setAttribute("sizeListDG", listDG.size());
		session.setAttribute("listByCate", list);
		session.setAttribute("spDetails", sp);
		getServletContext().getRequestDispatcher("/product-details.jsp").forward(request, response);
		
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
