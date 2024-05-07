package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import context.DBContext;
import entity.Customer;

public class CustomerDAO {
	Connection connect = null; 			//ket noi SQL
	PreparedStatement prepare = null;   //Nem cau lenh sang SQL
	ResultSet resultSet = null; 		//Nhan ket qua tra ve
	
	public List<Customer> getAllCustomer(){
		List<Customer> list = new ArrayList<>();
		String allCus = "SELECT * FROM goods.customers;";
		try {
			connect  = new DBContext().getConnection();
			prepare = connect.prepareStatement(allCus);
			resultSet = prepare.executeQuery();
			while(resultSet.next()) {
				list.add(new Customer(
						resultSet.getInt("id"),
						resultSet.getString("customerName"),
						resultSet.getInt("userId"),
						resultSet.getString("address"),
						resultSet.getInt("phoneNumber"),
						resultSet.getString("email")
						));
			}
		}catch (Exception e) {
			e.printStackTrace();
		}
		
		return list;
	}
}
