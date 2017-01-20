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
<<<<<<< HEAD
<a href="student/accueil.jsp">back to accueil page</a>
	
=======

<br>

>>>>>>> branch 'master' of https://github.com/johnsonofhongkong/isepweb.git
	<%ArrayList<Object> aL1=(ArrayList<Object>)request.getAttribute("al"); %>
				<%for(int i=0;i<aL1.size();i++){
	
	  
		  InformationBean Ib=(InformationBean)aL1.get(i);
		  
	  
	%>
	<div class="panel panel-info ">
<div class="panel-heading"><h3><%=Ib.getSchoolName() %> - <%=Ib.getCountry() %></h3></div>
<div class="panel-body">

		
	<table class="table table-bordered">
		<tr class="success">
			<th>School Name</th>
			<th>Country</th>
			<th>Description</th>
			<th>Symbol</th>
			<th>Website</th>
			<th>Comment</th>
		</tr>

		<tr>
			<td><%=Ib.getSchoolName() %></td>
			<td></td>
			<td><%=Ib.getDescription() %></td>
			<td><%=Ib.getSymbol() %></td>
			<td><a href="#"><%=Ib.getWebsite() %></a></td>
			<td><a href="OperateServlet?f=7">click here to watch comments</a></td>
		</tr>

	</table>

	<form action="OperateServlet?f=3&u=<%=u %>&s=<%=Ib.getSchoolName() %>" method="post">
	<%} %><p>comment here</p>
	<input type="text" name="comment">
	<input type="submit" value="submit">
	</form>


	

		 
   <%} %>	

	
	
	
	
	
	

</div>
   
   </div>
   
   <h4><a href="student/accueil.jsp">&larr;Return</a></h4>

</body>
</html>