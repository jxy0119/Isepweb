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
	response.sendRedirect("login.jsp?err=1");
	return ;
}
%>
<%
if(request.getAttribute("al")==null){
	response.sendRedirect("/login.jsp?err=1");
	return ;
}else{
%>
<a href="student/accueil.jsp">back to accueil page</a>
	<%ArrayList<Object> aL1=(ArrayList<Object>)request.getAttribute("al"); %>
	<table>
		<tr>
			<td>SchoolName</td>
			<td>Country</td>
			<td>Description</td>
			<td>Symbol</td>
			<td>WebSite</td>
			<td>Comment</td>
		<tr>
			<%for(int i=0;i<aL1.size();i++){
	
	  
		  InformationBean Ib=(InformationBean)aL1.get(i);
	  
	%>
		
		<tr>
			<td><%=Ib.getSchoolName() %></td>
			<td><%=Ib.getCountry() %></td>
			<td><%=Ib.getDescription() %></td>
			<td><%=Ib.getSymbol() %></td>
			<td><a href="#"><%=Ib.getWebsite() %></a></td>
			<td><a href="OperateServlet?f=7">click here to watch comments</a></td>
		</tr>

	</table>
	<form action="OperateServlet?f=3&u=<%=u %>&s=<%=Ib.getSchoolName() %>" method="post">
	<p>comment here</p>
	<input type="text" name="comment">
	<input type="submit" value="submit">
	</form>
	
		<%}  
   }%>	
</body>
</html>