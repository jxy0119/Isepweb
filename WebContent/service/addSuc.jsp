<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@page
	import="java.sql.*,java.util.*,isepweb.model.*,isepweb.controller.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>add suc</title>
</head>
<body>
<%
String u=(String)session.getAttribute("myName");
if(u==null){
	response.sendRedirect("/isepweb/login.jsp?err=1");
	return ;
}
String x=(String)request.getAttribute("x");

%>
<%
if(request.getAttribute("al")==null){
	response.sendRedirect("/isepweb/login.jsp?err=1");
	return ;
}else{
%>
<%if(x.equals("1")) {%>
<p>add successfully!!</p>
<%}else if(x.equals("2")){ %>
<p>RESULT</p>
<%}else if(x.equals("3")){ %>
<p>DELETE successfully!!</p>
<%}else{ %>
<p>UPDATE successfully!!</p>
<%} %>
<%ArrayList<Object> aL1=(ArrayList<Object>)request.getAttribute("al"); %>
	<table>
		<tr>
		    <td>Id</td>
		    <td>schoolName</td>
		    <td>country</td>
			<td>language</td>
			<td>major</td>
			<td>website</td>
			<td>symbol</td>
		    <td>description</td>
		    <td>Operate</td>
			
			
		</tr>
			<%for(int i=0;i<aL1.size();i++){	  
		    InformationBean Ib=(InformationBean)aL1.get(i);
	   
	%>
		
		<tr>
		    <td><%=Ib.getId() %></td>
		    <td><%=Ib.getSchoolName() %></td>
		    <td><%=Ib.getCountry() %></td>
		    <td><%=Ib.getLanguage() %></td>
		    <td><%=Ib.getMajor() %></td>
		    <td><%=Ib.getWebsite() %></td>
		    <td><%=Ib.getSymbol() %></td>
		    <td><%=Ib.getDescription() %></td>
		    <td><a href="AddInforServlet?flag=3&id=<%=Ib.getId()%>">update</a></td><td><a href="AddInforServlet?flag=4&id=<%=Ib.getId()%>">delete</a></td>
		</tr>
		<% }
			}%>
	</table>
<p><a href="/isepweb/service/offer.jsp">back to add page</a></p>
</body>
</html>