package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import entity.product;

public class ProductDAO {
	private Connection connection;

	public ProductDAO(Connection connection) {
        this.connection = connection;
    }

    public product getProductById(int productId) {
        product product = null;

        try {
            String query = "SELECT * FROM products WHERE id = ?";
            PreparedStatement statement = connection.prepareStatement(query);
            statement.setInt(1, productId);
            ResultSet resultSet = statement.executeQuery();

            if (resultSet.next()) {
                int id = resultSet.getInt("id");
                String productName = resultSet.getString("productName");
                String productType = resultSet.getString("productType");
                String img = resultSet.getString("img");
                int unitPrice = resultSet.getInt("unitPrice");

                // Khởi tạo đối tượng product
                product = new product(id, productName, productType, img, unitPrice);
            }

            resultSet.close();
            statement.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return product;
    }
}
