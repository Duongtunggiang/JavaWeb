package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import context.DBContext;
import entity.product;

public class DAO {
	Connection connect = null; 			//ket noi SQL
	PreparedStatement prepare = null;   //Nem cau lenh sang SQL
	ResultSet resultSet = null; 		//Nhan ket qua tra ve
	
	public List<product> getAllProduct(){
		List<product> list = new ArrayList<>();
		String query = "SELECT * FROM goods.products;";
		try {
			connect = new DBContext().getConnection(); //Mo ket noi SQL
			prepare = connect.prepareStatement(query);
			resultSet = prepare.executeQuery();
			while (resultSet.next()) {
				list.add(new product(
						resultSet.getInt(1),
						resultSet.getString(2),
						resultSet.getString(3),
						resultSet.getString(4),
						resultSet.getInt(5)
						));
			}
			
		}catch (Exception e) {
		}
		
		return list;
	}
	public static void main(String[] args) {
		DAO dao = new DAO();
		
		List<product> list = dao.getAllProduct();
		for (product o : list) {
			System.out.println(o);
		}
	}
}
