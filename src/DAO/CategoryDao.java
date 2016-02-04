package DAO;

import java.util.ArrayList;

import Beans.CategoryBean;

public interface CategoryDao {
	
	public ArrayList<CategoryBean> getAllCategories();
	
	   public CategoryBean getCategory(int catId);
	   
}
