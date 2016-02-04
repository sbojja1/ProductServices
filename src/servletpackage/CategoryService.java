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

import Beans.*;
import DAO.*;


/**
 * Servlet implementation class CategoryService
 */
@WebServlet("/CategoryService")
public class CategoryService extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CategoryService() {
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
				Scanner sc = new Scanner(System.in);
				System.out.println("Enter the category ID ");
				int i = sc.nextInt();
				CategoryDao cat = new CategoryImplement();
//get category by category id
				CategoryBean c = cat.getCategory(i);
				out.println(c.getCategoryId()+"<br/>"+c.getCategoryName());
				//out.println(P.getCategoryId() + P.getCategoryName());
//list all categories
				out.println("<br/>");
				out.println("<u>Listing all Categories </u></br>");
				
				List<CategoryBean> list = cat.getAllCategories();
				System.out.println(list);
							
				for(CategoryBean P : cat.getAllCategories()){
					out.println(P.getCategoryId() +"   "+ P.getCategoryName());
					out.println("<br/>");		
				}
				
			}

}