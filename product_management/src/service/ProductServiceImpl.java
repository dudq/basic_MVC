package service;

import model.Product;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class ProductServiceImpl implements ProductService {

//    private static List<Product> products = new ArrayList<>();
//
//
//    public static void getListProduct() throws SQLException {
//        DBConnection dbConnection = new DBConnection();
//        dbConnection.executeSQL("Use product_management;");
//        ResultSet result = dbConnection.executeSQL("Select * From products;");
//
//
//        while (result.next()) {
//            Product product = new Product();
//            product.setId(result.getInt("ProductID"));
//            product.setName(result.getString("ProductName"));
//            product.setQuantity(result.getInt("ProductQuantity"));
//
//            products.add(product);
//        }
//    }

    private static Map<Integer, Product> products;

    static {
        products = new HashMap<>();
        products.put(1, new Product(1, "sach", 10));
        products.put(2, new Product(2, "but", 20));
        products.put(3, new Product(3, "thuoc", 5));
    }

    @Override
    public List<Product> findAll() {
        return new ArrayList<>(products.values());
    }

    @Override
    public Product findById(int id) {
        return products.get(id);
    }


    @Override
    public void save(Product product) {
        products.put(product.getId(), product);
    }

    @Override
    public void update(int id, Product product) {
        products.put(id, product);
    }

    @Override
    public void delete(int id) {
        products.remove(id);
    }
}
