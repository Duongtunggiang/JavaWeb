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

import dao.CustomerDAO;
import dao.DAO;
import dao.ProductDAO;
import dao.RoleDAO;
import dao.UserDAO;
import entity.Customer;
import entity.product;
import entity.user;
@WebServlet("/information-user")
public class UserServlet extends HttpServlet {
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
    public UserServlet() {
        super();
        // TODO Auto-generated constructor stub
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
	
}
