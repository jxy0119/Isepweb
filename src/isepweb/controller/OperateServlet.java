package isepweb.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import isepwebproject.model.*;

/**
 * Servlet implementation class OperateServlet
 */
@WebServlet("/OperateServlet")
public class OperateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public OperateServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String f_flag=request.getParameter("f");
		int flag=Integer.parseInt(f_flag);
		if(flag==1){
			String Id=request.getParameter("id");
			String stName=request.getParameter("sn");
			OperateBean ob=new OperateBean();
			if(ob.accept(Id)){
				HandleFindBean hfb=new HandleFindBean();
				ArrayList<Object> al=hfb.getStudent(stName);
				request.setAttribute("al", al);
				request.getRequestDispatcher("ResultOfOperate.jsp").forward(request, response);
			}else{
				request.getRequestDispatcher("fail.html").forward(request, response);
			}	
		}
		
		else if(flag==2)  {	
			String Id=request.getParameter("id");
			String stName=request.getParameter("sn");
			OperateBean ob=new OperateBean();
			if(ob.refuse(Id)){
				HandleFindBean hfb=new HandleFindBean();
				ArrayList<Object> al=hfb.getStudent(stName);
				request.setAttribute("al", al);
				request.getRequestDispatcher("ResultOfOperate.jsp").forward(request, response);
			}else{
				request.getRequestDispatcher("fail.html").forward(request, response);
			}			
		}else if(flag==3){
			String userName=request.getParameter("u");
			String school=request.getParameter("s");
			String Com=request.getParameter("comment");
			HandleCommBean hcb=new HandleCommBean();
			if(hcb.comment(userName, school, Com)){
				request.setAttribute("school", school);
				request.getRequestDispatcher("commentSuc.jsp").forward(request, response);
			}
		}else if(flag==4){
			HandleCommBean hcb=new HandleCommBean();
			ArrayList<Object> al=hcb.WaitingCommList();
			request.setAttribute("al", al);
			request.getRequestDispatcher("#").forward(request, response);
		}else if(flag==5){
			String Id=request.getParameter("id");
			HandleCommBean hcb=new HandleCommBean();
			if(hcb.acceptComm(Id)){
				ArrayList<Object> al=hcb.ServiceCommentResult();
				request.setAttribute("al", al);
				request.getRequestDispatcher("#").forward(request, response);	
			}
			
		}else if(flag==6){
			String Id=request.getParameter("id");
			HandleCommBean hcb=new HandleCommBean();
			if(hcb.refuseComm(Id)){
				ArrayList<Object> al=hcb.ServiceCommentResult();
				request.setAttribute("al", al);
				request.getRequestDispatcher("#").forward(request, response);
			}
		}
		else {
			HandleCommBean hcb=new HandleCommBean();
			ArrayList<Object> al=hcb.commentResult();
			request.setAttribute("al", al);
			request.getRequestDispatcher("#").forward(request, response);
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
