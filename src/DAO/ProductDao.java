package DAO;

import java.util.ArrayList;


import Beans.ProductBean;

public interface ProductDao {
	  public ArrayList<ProductBean> getAllProducts();
	   public ProductBean getProductDetails(int productId);
	   public ArrayList<ProductBean> getProductByCategory(int catId);
	  

}
