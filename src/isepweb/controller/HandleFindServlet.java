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
		String[]values=request.getParameterValues("country");
		String []Language=request.getParameterValues("language");
		String major=request.getParameter("major");
		if((values!=null&&values.length>0)&&(major=="")&&(Language==null)){
			HandleFindBean hfb=new HandleFindBean();
			ArrayList<Object> al=hfb.getCountryInfo(values);
			request.setAttribute("al", al);
			request.getRequestDispatcher("Result.jsp?num=1").forward(request, response);
		}
		if((Language!=null&&Language.length>0)&&(major=="")&&(values==null)){
			HandleFindBean hfb=new HandleFindBean();
			Object []a=hfb.getLanguageInfo(Language);
			request.setAttribute("language", a);
			request.getRequestDispatcher("Result.jsp?num=2").forward(request, response);
		}
		if(major!=""){
			HandleFindBean hfb=new HandleFindBean();
			Object []a=hfb.getMajorInfo(major);
			request.setAttribute("major", a);
			request.getRequestDispatcher("Result.jsp?num=3").forward(request, response);
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
