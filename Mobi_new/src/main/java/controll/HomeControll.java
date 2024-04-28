package controll;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.List;

import dao.DAO;
import dao.ProductDAO;
import dao.RoleDAO;
import entity.product;

@WebServlet("/Home")
public class HomeControll extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private RoleDAO roleDAO;
    private product product;
    private ProductDAO productDAO;
    private DAO dao;
	public void init(){
		 try {
	            // Khởi tạo đối tượng Connection
	            Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/goods", "root", "3112");
	            
	            // Khởi tạo RoleDAO và DAO với đối tượng Connection
	            roleDAO = new RoleDAO(connection);
	            productDAO = new ProductDAO(connection);
	            product = new product();
	        } catch (SQLException e) {
	            e.printStackTrace();
	        }
	}
    public HomeControll() {
        super();
    }

    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		String action = request.getParameter("action");
		if (action == null) {
            action = "list1";
		}
		switch(action) {
			case "new":
//				showNewForm(request, response);
				break;
			case "redirect":
                roleBasedRedirect(request, response);
                break;
			default:
				home(request, response);
				break;
		}
		
	}

	private void home(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException{
		response.setContentType("text/html");
		
		DAO dao = new DAO();
		List<product> list = dao.getAllProduct();
		request.setAttribute("listP", list);

		request.getRequestDispatcher("Home.jsp").forward(request, response);
	}
	private void roleBasedRedirect(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
		int userId = Integer.parseInt(request.getParameter("userId"));
	    String userRole = roleDAO.getUserRole(userId);

	    if (userRole.equals("admin")) {
	        response.sendRedirect("admin.jsp");
	    } else if (userRole.equals("customer")) {
	        response.sendRedirect("index.jsp");
	    } else {
	        // Xử lý khi vai trò không xác định
	        String errorMessage = "Vai trò của người dùng không xác định";
	        request.setAttribute("error", errorMessage);
	        request.getRequestDispatcher("error.jsp").forward(request, response);
	    }
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
        int productId = Integer.parseInt(request.getParameter("id"));
        product product = productDAO.getProductById(productId);
        request.setAttribute("producted", product);
        request.getRequestDispatcher("san-pham.jsp").forward(request, response);
	}
//	private void 

}
