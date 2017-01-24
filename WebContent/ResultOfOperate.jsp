<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page
	import="java.sql.*,java.util.*,isepweb.model.*,isepweb.controller.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
<title>Results of Operate</title>
</head>
<body>

<div class="container" >

      <div class="jumbotron container-fluid">
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
	<%! @SuppressWarnings("unchecked") %> 
	<% String sn="";
	ArrayList<Object> aL1=(ArrayList<Object>)request.getAttribute("al"); %>
	
	<table class="table table-hover">
	<thead>
		<tr class="active">
		    <td>Id</td>
		    <td>studentID</td>
		    <td>StudentName</td>
			<td>School of offer</td>
			<td>Class</td>
			<td>Major</td>
			<td>State</td>
		    <td>Date</td>
			
			
		</tr>
		</thead>
			<%for(int i=0;i<aL1.size();i++){	  
		    ResultBean Rb=(ResultBean)aL1.get(i);
	   
	%>
		<tbody>
		<tr class="active">
		    <td><%=Rb.getId() %></td>
		    <td><%=Rb.getStudentId() %></td>
		    <td><%sn=Rb.getStudentName(); %><%=sn %></td>
		    <td><%=Rb.getSchool() %></td>
		    <td><%=Rb.getCl() %></td>
		    <td><%=Rb.getMajor() %></td>
		    <td><%=Rb.getState() %></td>
		    <td><%=Rb.getDate() %></td>
		    
		</tr>
		</tbody>
	
		
	<% }%>
	</table><br>
	<a href="HandleFindServlet?flag=3&studentname=<%=sn %>" class="btn btn-info">Back to the last page</a>

	<%
	}%>	
	</div>
	</div>	
</body>
</html>