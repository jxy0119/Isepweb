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
	response.sendRedirect("/isepweb/login.jsp?err=1");
	return ;
}
%>


<div class="container">
      <div class="jumbotron container-fluid">

<a href="/isepweb/student/accueil.jsp" class="btn btn-info" role="button" style="margin-bottom:10px">Back To HomePage</a>
	
	<%String s=(String)request.getParameter("sn"); %>
	<form action="<%=request.getContextPath()%>/AddInforServlet?flag=6&sn=<%=s%>" method="post">
	
	<div class="form-group">
    <label for="comment">Edit <%=s %>'s School</label>
	
    <input class="form-control" type="text" id="comment" style="margin-bottom:10px" name="school">
	<input type="submit" value="Submit" class="btn btn-info" value="Submit Button">
	</div>
	</form>

	</div>
	</div>
		 
   
</body>
</html>