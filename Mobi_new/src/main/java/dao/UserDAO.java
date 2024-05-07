package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import context.DBContext;
import entity.user;

public class UserDAO {
	Connection connect = null; 			//ket noi SQL
	PreparedStatement prepare = null;   //Nem cau lenh sang SQL
	ResultSet resultSet = null; 		//Nhan ket qua tra ve
	
	public List<user> getAllUser(){
		List<user> list = new ArrayList<>();
		String allUser = "select * from goods.users;";
		try {
			connect = new DBContext().getConnection();
			prepare = connect.prepareStatement(allUser);
			resultSet = prepare.executeQuery();
			while(resultSet.next()) {
				list.add(new user(
						resultSet.getInt("id"),
						resultSet.getString("username"),
						resultSet.getString("password")
						));
			}
			
		}catch (Exception e) {
			e.printStackTrace();
		}
		
		return list;
	}
	
	
}
