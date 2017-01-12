<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@page
	import="java.sql.*,java.util.*,isepwebproject.model.*,isepwebproject.controller.*"%>
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

<p>add successfully!!</p>
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
		    
		</tr>
		<% }
			}%>
	</table>
<p><a href="/isepwebproject/service/offer.jsp">back to add page</a></p>
</body>
</html>