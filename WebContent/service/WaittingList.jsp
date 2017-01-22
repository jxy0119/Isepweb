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
	
	<%ArrayList<Object> aL1=(ArrayList<Object>)request.getAttribute("al"); %>
	<%if(aL1.size()==0){ %><p>not found any waiting applications</p><br>
	<p><a href="/isepweb/student/accueil.jsp">back to accueil</a></p><br>
	
	<%}else { %>
	<table>
		<tr>
		    <td>Id</td>
		    <td>StudentName</td>
			<td>School name</td>
			<td>Details</td>
			<td>State</td>
		    <td>Date</td>
			<td>operate</td>
			
		</tr>
			<%for(int i=0;i<aL1.size();i++){	  
		    CommentBean Cb=(CommentBean)aL1.get(i);
	   
	%>
		
		<tr>
		    <td><%=Cb.getId() %></td>
		    <td><%=Cb.getUserName() %></td>
		    <td><%=Cb.getSchool() %></td>
		    <td><%=Cb.getDetails() %></td>
		    <td><%=Cb.getState() %></td>
		    <td><%=Cb.getDate() %></td>
		    <td><a href="OperateServlet?f=5&id=<%=Cb.getId() %>">accept</a></td><td><a href="OperateServlet?f=6&id=<%=Cb.getId() %>">refuse</a></td>
		</tr>
		<%} }%>
		<p><a href="OperateServlet?f=8">see the results of the comments</a></p>
	    <%
	}%>
	</table>	
</body>
</html>