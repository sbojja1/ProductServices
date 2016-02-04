package servletpackage;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import java.util.Scanner;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Beans.ProductBean;
import DAO.*;


/**
 * Servlet implementation class ProductService
 */
@WebServlet("/ProductService")
public class ProductService extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private Scanner sc;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ProductService() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html");
		PrintWriter out = response.getWriter(); 
		sc = new Scanner(System.in);
		
		

		ProductDao product = new ProductImplement();
//Get Product Details
		System.out.println("Enter the product ID ");
		int i1 = Integer.parseInt(sc.nextLine());
		out.println("<u>List the products for the given product id: </u>"+i1+"<br/>");
		ProductBean Pb=product.getProductDetails(i1);
		out.println(Pb.getProductId() +"       "+ Pb.getProductName() +"     "+ Pb.getProductPricePerUnit() +"       "+ Pb.getCatId() +"      "+ Pb.getProductQuantity());
		out.println("<br/>");
//list
		List<ProductBean> list = product.getAllProducts();
//list products by Category
		System.out.println("Enter the category ID ");
		int i = sc.nextInt();
        out.println("<u>List the products for the given category id: </u>"+i+"<br/>");
		for(ProductBean P :product.getProductByCategory(i)){
			out.println(P.getProductId() +"       "+ P.getProductName() +"     "+ P.getProductPricePerUnit() +"       "+ P.getCatId() +"      "+ P.getProductQuantity());
			out.println("<br/>");			
		}
//list all products
		out.println("<u>List the all products</u><br/>");
		for(ProductBean P : product.getAllProducts()){
			out.println(P.getProductId() +"       "+ P.getProductName() +"     "+ P.getProductPricePerUnit() +"       "+ P.getCatId() +"      "+ P.getProductQuantity());
			out.println("<br/>");		
		}
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
