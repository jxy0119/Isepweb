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
 * Servlet implementation class AddInforServlet
 */
@WebServlet("/AddInforServlet")
public class AddInforServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddInforServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String school=request.getParameter("nom");
		String country=request.getParameter("pays");
		String language=request.getParameter("langue");
		String major=request.getParameter("domaine");
		String webSite=request.getParameter("website");
		String symbol=request.getParameter("symbol");
		String details=request.getParameter("autre");
		String f=request.getParameter("flag");
		
		
		HandleAddInfor ha=new HandleAddInfor();
		if(f.equals("1")){
		     if(ha.AddInfo(school, country, language, major, webSite, symbol, details)){
			   String x="1";
		    	 ArrayList<Object> al=ha.InfoResult();
			    request.setAttribute("al",al );
			    request.setAttribute("x", x);
			    request.getRequestDispatcher("/service/addSuc.jsp?").forward(request, response);
		    }else{
			    request.getRequestDispatcher("/service/addFail.jsp").forward(request, response);
		  }
		}else if(f.equals("2")){
			String x="2";
			ArrayList<Object> al=ha.InfoResult();
		    request.setAttribute("al",al );
		    request.setAttribute("x", x);
		    request.getRequestDispatcher("/service/addSuc.jsp").forward(request, response);
		}else if(f.equals("3")){
			String id=request.getParameter("id");
			ArrayList<Object> al=ha.InfoResultById(id);
			request.setAttribute("al",al );
		    request.getRequestDispatcher("/service/update.jsp").forward(request, response);
		}else if(f.equals("4")){
			String id=request.getParameter("id");
			String x="3";
			if(ha.DeleteInfo(id)){
				ArrayList<Object> al=ha.InfoResult();
			    request.setAttribute("al",al );
			    request.setAttribute("x", x);
			    request.getRequestDispatcher("/service/addSuc.jsp?").forward(request, response);
			}
		}else if(f.equals("5")){
			String id=request.getParameter("id");
			String x="4";
			if(ha.UpdateInfo(id,school, country, language, major, webSite, symbol, details)){
			    ArrayList<Object> al=ha.InfoResult();
			    request.setAttribute("al",al );
			    request.setAttribute("x", x);
			    request.getRequestDispatcher("/service/addSuc.jsp").forward(request, response);
		    }else{
			    request.getRequestDispatcher("/service/addFail.jsp").forward(request, response);
		  }
		}else{
			String sn=request.getParameter("sn");
			String s=request.getParameter("school");
			if(ha.AddOfferSchool(s, sn)){
				request.getRequestDispatcher("/service/addOfferSuc.jsp").forward(request, response);
			}
			else{
				request.getRequestDispatcher("fail.html").forward(request, response);
			}
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
