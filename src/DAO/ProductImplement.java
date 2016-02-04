package DAO;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import javax.jws.WebMethod;
import javax.jws.WebService;

import DAO.*;

import Beans.ProductBean;

@WebService
public class ProductImplement extends MainDao implements ProductDao {

	
	@WebMethod
	public ArrayList<ProductBean> getAllProducts() {
		ArrayList<ProductBean> list=new ArrayList<ProductBean>();
		try
		{
			 con=this.getConnection();
			PreparedStatement stmt=con.prepareStatement("select * from PRODUCT");
			ResultSet rs=stmt.executeQuery();
			while (rs.next())
			{
				ProductBean L=new ProductBean();
				L.setProductId((rs.getInt(1)));
				L.setProductName(rs.getString(2));
				L.setProductQuantity(rs.getInt(3));
				L.setProductPricePerUnit(rs.getInt(4));
				
				L.setLast_update(String.valueOf(rs.getDate(5)));
				list.add(L);
			}
	                       
				con.close();
	}catch(Exception e){
		System.out.println(e);
	}
		return list;
	}

	@Override
	public ProductBean getProductDetails(int productId){ 
		ProductBean L=new ProductBean();
try
	{
     
		 con=this.getConnection();
		PreparedStatement ps = con.prepareStatement("Select * from PRODUCT where PRODUCT_ID=?");
                ps.setInt(1,productId);
                ResultSet rs=ps.executeQuery();
                 rs.next();
                 L.setProductId((rs.getInt(1)));
 				L.setProductName(rs.getString(2));
 				L.setProductQuantity(rs.getInt(3));
 				L.setProductPricePerUnit(rs.getInt(4));
}
catch(Exception e)
    {
    System.out.println(e);
    return (null);
    }
return L;
}

	@Override
	public ArrayList<ProductBean> getProductByCategory(int catId) {
		ArrayList<ProductBean> list=new ArrayList<ProductBean>();
		ProductBean L=new ProductBean();
		try{
		
		con=this.getConnection();
		PreparedStatement ps = con.prepareStatement("Select * from PRODUCT where CATEGORY_ID=?");
                ps.setInt(1,catId);
                ResultSet rs=ps.executeQuery();
                
                 while(rs.next()){
                 L.setProductId((rs.getInt(1)));
 				L.setProductName(rs.getString(2));
 				L.setProductQuantity(rs.getInt(3));
 				L.setProductPricePerUnit(rs.getInt(4));
				list.add(L);
                 }
                       
                 
	}catch(Exception e){
		System.out.println(e);
	}
		return list;  
		
		
	}
		

}
