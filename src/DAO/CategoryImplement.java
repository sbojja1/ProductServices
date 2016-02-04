package DAO;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import Beans.CategoryBean;
import Beans.ProductBean;

public class CategoryImplement extends MainDao implements CategoryDao {

	@Override
	public ArrayList<CategoryBean> getAllCategories() {
		ArrayList<CategoryBean> list=new ArrayList<CategoryBean>();
		try
		{
			 con=this.getConnection();
			PreparedStatement stmt=con.prepareStatement("select * from CATEGORY");
			ResultSet rs=stmt.executeQuery();
			while (rs.next())
			{
				CategoryBean L=new CategoryBean();
				L.setCategoryId(rs.getInt(1));
				L.setCategoryName(rs.getString(2));
				
				list.add(L);
			}
	                       
				con.close();
	}catch(Exception e){
		System.out.println(e);
	}
		return list;
	}

	@Override
	public CategoryBean getCategory(int catId) {
		CategoryBean L=new CategoryBean();
		try
			{
		     
				 con=this.getConnection();
				PreparedStatement ps = con.prepareStatement("Select * from CATEGORY where CATEGORY_ID=?");
		                ps.setInt(1,catId);
		                ResultSet rs=ps.executeQuery();
		                 rs.next();
		                L.setCategoryId(rs.getInt(1));
		 				L.setCategoryName(rs.getString(2));
		}
		catch(Exception e)
		    {
		    System.out.println(e);
		    return (null);
		    }
		return L;
		}

}

