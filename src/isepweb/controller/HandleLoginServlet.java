package isepweb.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import isepweb.model.*;

/**
 * Servlet implementation class HandleLoginServlet
 */
@WebServlet("/HandleLoginServlet")
public class HandleLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public HandleLoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String u=request.getParameter("id");
		String p=request.getParameter("password");
		HandleUserBean hub=new HandleUserBean();
		if(hub.checkUser(u, p)){
			    request.getSession().setAttribute("myName", u);
			    
			    int a=hub.readAuthority(u);
			    request.getSession().setAttribute("a", a);
				request.getRequestDispatcher("/student/accueil.jsp").forward(request, response);
		}
		else
		{
			response.getWriter().print("Authentication Failed. Credentials Invalid. <br><a href=\"" + request.getContextPath() + "/login.jsp\">Retry</a>");
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
