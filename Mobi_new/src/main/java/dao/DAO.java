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
						resultSet.getInt("id"),
						resultSet.getString("productName"),
						resultSet.getString("productType"),
						resultSet.getString("img"),
						resultSet.getInt("unitPrice")
						));
			}
			
		}catch (Exception e) {
			e.printStackTrace();
		}
		
		return list;
	}
}
