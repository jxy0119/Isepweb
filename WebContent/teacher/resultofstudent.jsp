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
	<p><a href="/isepwebproject/HandleFindServlet?flag=2">back to last page</a></p>
	
	<%}else { %>
	<table>
		<tr>
		    <td>Id</td>
		    <td>studentID</td>
		    <td>StudentName</td>
			<td>School of offer</td>
			<td>Class</td>
			<td>Major</td>
			<td>State</td>
		    <td>Date</td>
			<td>operate</td>
			
		</tr>
			<%for(int i=0;i<aL1.size();i++){	  
		    ResultBean Rb=(ResultBean)aL1.get(i);
	   
	%>
		
		<tr>
		    <td><%=Rb.getId() %></td>
		    <td><%=Rb.getStudentId() %></td>
		    <td><%=Rb.getStudentName() %></td>
		    <td><%=Rb.getSchool() %></td>
		    <td><%=Rb.getCl() %></td>
		    <td><%=Rb.getMajor() %></td>
		    <td><%=Rb.getState() %></td>
		    <td><%=Rb.getDate() %></td>
		    <td><a href="OperateServlet?f=1&id=<%=Rb.getId() %>&sn=<%=Rb.getStudentName() %>">accept</a></td><td><a href="OperateServlet?f=2&id=<%=Rb.getId() %>&sn=<%=Rb.getStudentName() %>">refuse</a></td>
		</tr>
		<% }
	    }
	}%>
	</table>	
</body>
</html>