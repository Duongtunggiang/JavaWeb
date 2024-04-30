package controll;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.ServletRequest;
import jakarta.servlet.ServletResponse;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import context.DBContext;
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
		 boolean isLoggedIn = checkLoginStatus(request);
		 
		 if (isLoggedIn) {
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
				case "productDetails":
				    productDetails(request, response);
				    break;
				default:
					home(request, response);
					break;
			} 
		 } else {
		        // Người dùng chưa đăng nhập, chuyển hướng đến trang đăng nhập
			 String action = request.getParameter("action");
		        if (action == null) {
		            action = "list1";
		        }
		        switch(action) {
		            case "new":
		                // Do something
		                break;
		            case "productDetails":
		                productDetails(request, response);
		                break;
		            case "changeAccount":
		                changeAccount(request, response);
		                break;
		            default:
		                home(request, response);
		                break;
		        }
		 }

		
	}

	private void home(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException{
		response.setContentType("text/html");
		
		DAO dao = new DAO();
		List<product> list = dao.getAllProduct();
		request.setAttribute("listP", list);
		
		List<product> top1 = dao.getTop1();
		request.setAttribute("Top1", top1);

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
	private boolean checkLoginStatus(HttpServletRequest request) {
	 
	    HttpSession session = request.getSession();
	    String username = (String) session.getAttribute("username");
	    return username != null; 
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		String username = request.getParameter("username");
        String password = request.getParameter("password");

//        boolean isAuthenticated = authenticate(username, password);
//
//        if (isAuthenticated) {
//            HttpSession session = request.getSession();
//            session.setAttribute("username", username);
////            response.sendRedirect("Home");
//            response.sendRedirect(request.getContextPath() + "/Home");
//        } else {
////            response.sendRedirect("login.jsp?error=1");
//        	response.sendRedirect(request.getContextPath() + "/login.jsp?error=1");
//        }
        boolean authenticated = authenticate(username, password);

        if (authenticated) {
            // Lưu thông tin người dùng vào session
            HttpSession session = request.getSession();
            session.setAttribute("username", username);
            session.setAttribute("isLoggedIn", true);

            // Chuyển hướng đến trang "Home.jsp"
            response.sendRedirect("Home");
        } else {
        	 request.setAttribute("loginError", "Tên người dùng hoặc mật khẩu không chính xác.");
        	    RequestDispatcher dispatcher = request.getRequestDispatcher("Home");
        	    dispatcher.forward(request, response);
        }
        
	}
	private void changeAccount(HttpServletRequest request, HttpServletResponse response)
	        throws ServletException, IOException {
	    String newUsername = request.getParameter("newUsername");
	    String newPassword = request.getParameter("newPassword");

	    // Thực hiện việc thay đổi tài khoản ở đây
	    // Ví dụ: cập nhật thông tin tài khoản trong cơ sở dữ liệu hoặc lưu vào session

	    // Chuyển hướng người dùng đến trang thông báo thành công
	    response.sendRedirect("ChangeAccountSuccess.jsp");
	}
	private boolean authenticate(String username, String password) {
	    Connection conn = null;
	    try {
	        conn = DBContext.getConnection();

	        return true; 
	    } catch (SQLException e) {
	        e.printStackTrace();
	    } finally {
	        if (conn != null) {
	            try {
	                conn.close();
	            } catch (SQLException e) {
	                e.printStackTrace();
	            }
	        }
	    }

	    return false; // Trả về false nếu thông tin đăng nhập không hợp lệ
	}
	private void productDetails(HttpServletRequest request, HttpServletResponse response) 
	        throws ServletException, IOException {
	    int productId = Integer.parseInt(request.getParameter("productId"));
	    product product = productDAO.getProductById(productId);
	    request.setAttribute("producted", product);
	    request.getRequestDispatcher("san-pham.jsp").forward(request, response);
	}

}
