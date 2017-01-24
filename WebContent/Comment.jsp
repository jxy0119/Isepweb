<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page
	import="java.sql.*,java.util.*,isepweb.model.*,isepweb.controller.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String u=(String)session.getAttribute("myName");
if(u==null){
	response.sendRedirect("/isepwebproject/login.jsp?err=1");
	return ;
}
%>
<%
if(request.getAttribute("al")==null){
	response.sendRedirect("/isepwebproject/login.jsp?err=1");
	return ;
}else{
%>
	
	<%String s=(String)request.getAttribute("s");
	ArrayList<Object> aL1=(ArrayList<Object>)request.getAttribute("al"); %>
	
	<h3><%=s %>'s comments !</h3>
	<%if(aL1.size()==0){ %><p>not found any comments here</p><br>
	<p><a href="<%=request.getContextPath()%>/ShowSchoolInfoServlet?s=<%=s%>">back to school page</a></p>
	
	<%}else { %>
	
	<table class="table table-hover">
		<thead>
	
		<tr class="active">
		    <td>Num</td>
		    <td>StudentName</td>
			
			<td>Details</td>
		
		    <td>Date</td>
			
			
		</tr>
			</thead>
		
			<%for(int i=0;i<aL1.size();i++){	  
		    CommentBean Cb=(CommentBean)aL1.get(i);
	   
	%>
		<tbody>
		<tr class="active">
		    <td><%=i+1 %></td>
		    
		    <td><%=Cb.getUserName() %></td>
		  
		    <td><%=Cb.getDetails() %></td>
		   
		    <td><%=Cb.getDate() %></td>
		    
		</tr>
		
		<% }%>
		<p><a href="<%=request.getContextPath()%>/ShowSchoolInfoServlet?s=<%=s%>">back to school page</a></p>
	    <%}
	}%>
	
				</tbody>
	
	</table>	
</body>
</html>