<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page
	import="java.sql.*,java.util.*,isepweb.model.*,isepweb.controller.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title></title>
    <!-- Bootstrap core CSS -->
    <link href="<%=request.getContextPath()%>/bootstrap/css/bootstrap.min.css" rel="stylesheet">


</head>
<body>
<div class="panel panel-info ">
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

<br>
<div class="panel-heading"><h4><a href="student/accueil.jsp">Back to home</a></h4></div>
<div class="panel-body">
	<%ArrayList<Object> aL1=(ArrayList<Object>)request.getAttribute("al"); %>
	<table class="table table-bordered">
		<tr class="success">
			<th>School Name</th>
			<th>Country</th>
			<th>Description</th>
			<th>Symbol</th>
			<th>Website</th>
			<th>Comment</th>
		</tr>
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
	
	<form action="OperateServlet?f=3&u=<%=u %>&s=<%=Ib.getSchoolName() %>" method="post"><br>
	
	<%}}%><p>comment</p>
	<input class="form-control col-md-3" type="text" name="comment" placeholder="comment"><br><br>
	<input class="btn btn-default" type="submit" value="submit"><br><br>
	</form>
	
	

</div>
   
   </div>
</body>
</html>