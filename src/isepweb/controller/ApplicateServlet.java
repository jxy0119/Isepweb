package isepweb.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import isepwebproject.model.*;
/**
 * Servlet implementation class ApplicateServlet
 */
@WebServlet("/ApplicateServlet")
public class ApplicateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ApplicateServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		try{
			String u=request.getParameter("u");
		    String ClassName=request.getParameter("classname");
		    String MajorName=request.getParameter("majorname");
		    
			 
			 HandleUserBean hub=new HandleUserBean();
			 String []a=hub.bacisInfo(u);
			 
			 if(hub.addInfo(a[0], a[1], a[2],ClassName, MajorName)){
				 request.getRequestDispatcher("suc.html").forward(request, response);
				 System.out.println(u);
			     System.out.println(a[0]);
			     System.out.println(a[1]);
			     System.out.println(a[2]);
			     System.out.println(ClassName);
			     System.out.println(MajorName);
			 }else{
				 request.getRequestDispatcher("fail.html").forward(request, response);
			     System.out.println(u);
			     System.out.println(a[0]);
			     System.out.println(a[1]);
			     System.out.println(a[2]);
			     System.out.println(ClassName);
			     System.out.println(MajorName);
			 }
			 
			 
			
			
			
		}catch(Exception e){
			e.printStackTrace();
		}		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		this.doGet(request, response);
	}

}
