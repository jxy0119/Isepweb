package isepweb.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import isepweb.model.*;
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
			String s_StudentNum=request.getParameter("studentnum");
		    String StudentName=request.getParameter("studentname");
		    String ClassName=request.getParameter("classname");
		    String MajorName=request.getParameter("majorname");
		    String Date=request.getParameter("date");
			 int StudentNum=Integer.parseInt(s_StudentNum);
			 HandleUserBean hub=new HandleUserBean();
			 if(hub.addInfo(StudentName, StudentNum, ClassName, MajorName, Date)){
				 request.getRequestDispatcher("suc.html").forward(request, response);
			 }else{
				 request.getRequestDispatcher("fail.html").forward(request, response);
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
