<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page
	import="java.sql.*,java.util.*,isepwebproject.model.*,isepwebproject.controller.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Liste des éleves</title>
<link href="../css/isepgo.css" rel="stylesheet" type="text/css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
</head>
<body>
	<script>
$(function(){
	    $("header").load("../menuteacher.html");
	    });
$(function(){
    $("footer").load("../footer.html");
    });
	
</script>
	<img src="../img/logo.png" style="width: 10%">
	<header></header>
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
	
	<table>
		<tr>
		    <td>ID</td>
		    <td>StudentName</td>
			<td>School of offer</td>
			<td>operate</td>
			
		</tr>
		<%for(int i=0;i<aL1.size();i++){	  
		    StudentBean Sb=(StudentBean)aL1.get(i);
	  
	%>
		
		
		<tr>
		    <td><%=Sb.getId() %></td>
		    <td><%=Sb.getStudentName() %></td>
		    <td><%=Sb.getSchool() %></td>
		    <td><a href="HandleFindServlet?flag=3&studentname=<%=Sb.getStudentName()%>">his application</a></td><td><a href="#">all info </a></td>
		    
		</tr>
		<%  }
	
	    }%>		
	</table>
	
	
	<form action="HandleFindServlet?flag=4" method="post">
	<label>find student</label><br>
	<input type="text" name="studentname"><br>
	<input type="submit" name="submit"><br>
	
	
	</form>
</body>
</html>