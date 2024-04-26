package controll;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

import dao.DAO;
import entity.product;

/**
 * Servlet implementation class HomeControll
 */
public class HomeControll extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public HomeControll() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
//		response.getWriter().append("Served at: ").append(request.getContextPath());
		response.setContentType("text/html");
		
		DAO dao = new DAO();
		List<product> list = dao.getAllProduct();
		
		request.setAttribute("listP", list);
//		PrintWriter writer = response.getWriter();
//		writer.println("<h1>Xin chao toi la Duong</h1>");
		
		request.getRequestDispatcher("Home.jsp").forward(request, response);
//		writer.close();
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
