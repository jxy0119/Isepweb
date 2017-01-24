<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page
	import="java.sql.*,java.util.*,isepweb.model.*,isepweb.controller.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
<title>List Of Schools</title>
 <!-- Bootstrap core CSS -->
    <link href="<%=request.getContextPath()%>/bootstrap/css/bootstrap.min.css" rel="stylesheet">

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

<div class="container">
      <div class="jumbotron container-fluid">

<a href="student/accueil.jsp" class="btn btn-info" role="button" style="margin-bottom:10px">Back To HomePage</a>
	
	<%ArrayList<Object> aL1=(ArrayList<Object>)request.getAttribute("al"); %>
	<table class="table table-hover">
		<tr class="active">
			<td>SchoolName</td>
			<td>Country</td>
			<td>Description</td>
			<td>Symbol</td>
			<td>WebSite</td>
			<td>Comment</td>
		</tr>
	
			<% for(int i=-0;i<aL1.size();i++){
	
	  
		  InformationBean Ib=(InformationBean)aL1.get(i);
			
	%>
		<tr class="active">
			<td><%=Ib.getSchoolName() %></td>
			<td><%=Ib.getCountry() %></td>
			<td><%=Ib.getDescription() %></td>
			<td><%=Ib.getSymbol() %></td>
			<td><a href="http://<%=Ib.getWebsite() %>"><%=Ib.getWebsite() %></a></td>
			<td><a href="<%=request.getContextPath()%>/OperateServlet?f=7&s=<%=Ib.getSchoolName() %>">See Comments</a></td>
		</tr>
	</table>
	<form action="<%=request.getContextPath()%>/OperateServlet?f=3&u=<%=u %>&s=<%=Ib.getSchoolName() %>" method="post">
	<%} %>
	<div class="form-group">
    <label for="comment">Make A Comment</label>
	<textarea class="form-control" rows="5" id="comment" style="margin-bottom:10px"></textarea>

	<input type="submit" value="Submit my comment" class="btn btn-info" value="Submit Button">
	</div>
	</form>

	</div>
	</div>
	<%} %>		 
   
</body>
</html>