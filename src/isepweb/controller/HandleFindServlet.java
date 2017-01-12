package isepweb.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import isepweb.model.*;
import java.util.*;
/**
 * Servlet implementation class HandleFindServlet
 */
@WebServlet("/HandleFindServlet")
public class HandleFindServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public HandleFindServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String flag=request.getParameter("flag");
		if(flag.equals("1")){
		String country=request.getParameter("country");
		String language=request.getParameter("language");
		String major=request.getParameter("major");
		
			HandleFindBean hfb=new HandleFindBean();
			ArrayList<Object> al=hfb.getCountryInfo(country,language,major);
			request.setAttribute("al", al);
			request.getRequestDispatcher("ecoles.jsp").forward(request, response);
		
		}else if(flag.equals("2")){
			
			HandleFindBean hfb=new HandleFindBean();
			ArrayList<Object> al=hfb.getStudentList();
			request.setAttribute("al", al);
			request.getRequestDispatcher("/teacher/studentlist.jsp").forward(request, response);
		}else if(flag.equals("3")){
			String s=request.getParameter("studentname");
			HandleFindBean hfb=new HandleFindBean();
			ArrayList<Object> al=hfb.WaitingAppList(s);
			request.setAttribute("al", al);
			request.getRequestDispatcher("/teacher/resultofstudent.jsp").forward(request, response);
		    System.out.println(s);
		}else if(flag.equals("4")){
			String s=request.getParameter("studentname");
			HandleFindBean hfb=new HandleFindBean();
			ArrayList<Object> al=hfb.typeStudent(s);
			request.setAttribute("al", al);
			request.getRequestDispatcher("/teacher/studentlist.jsp").forward(request, response);
		    System.out.println(s);
			
		}else{
			String s=request.getParameter("studentname");
			HandleFindBean hfb=new HandleFindBean();
			ArrayList<Object> al=hfb.getStudent(s);
			request.setAttribute("al", al);
			request.getRequestDispatcher("/student/ResultOfApp.jsp").forward(request, response);
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
