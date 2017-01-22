<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page
	import="java.sql.*,java.util.*,isepweb.model.*,isepweb.controller.*"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="<%=request.getContextPath()%>/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="<%=request.getContextPath()%>/css/isepgo.css" rel="stylesheet">
    <link href="<%=request.getContextPath()%>/css/stickyfooter.css" rel="stylesheet">

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<title>Liste des éleves</title>
<link href="../css/isepgo.css" rel="stylesheet" type="text/css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
	
	
<style type="text/css">
	table, td, th {
    border: 1px solid black;
}

table {
    border-collapse: collapse;
    width: 100%;
}

th {
    height: 50px;
}
</style>
	
</head>
<body>

	 <nav class="navbar navbar-default navbar-fixed-top">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="#"><img src="<%=request.getContextPath()%>/img/logo.png" height="100%"></a>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
          <ul class="nav navbar-nav">
            <li class="active"><a href="accueil.jsp">Accueil</a></li>
            <li><a href="/isepweb/eleves.jsp">liste des élèves</a></li>
            <li><a href="/isepweb/student/contact.jsp">Contact</a></li>
          	<li><a href="/isepweb/student/ecoles.jsp">Écoles</a></li>
          	
          </ul>
          <ul class="nav navbar-nav navbar-right">
            <li><a href="">Logout</a></li>
          </ul>
        </div><!--/.nav-collapse -->
      </div>
    </nav>
	<%
String u=(String)session.getAttribute("myName");
if(u==null){
	response.sendRedirect("/isepwebp/login.jsp?err=1");
	return ;
}
%>
<%
if(request.getAttribute("al")==null){
	response.sendRedirect("/isepweb/login.jsp?err=1");
	return ;
}else{
%>
	<%! @SuppressWarnings("unchecked") %> // for the line below
	<%ArrayList<Object> aL1=(ArrayList<Object>)request.getAttribute("al"); %>
<div class="jumbotron container-fluid">
    
	<form action="HandleFindServlet?flag=4" method="post">
	<label>find student</label><br>
	<input type="text" name="studentname"><br>
	<input type="submit" name="submit" value="valider"><br>
	</form>
 </div>	
	<table>
		<tr>
		    <td>  ID  </td>
		    <td>  NOM  </td>
			<td>  Ecole affecté  </td>
			<td>  Modules  </td><br>		
		</tr>
		<%for(int i=0;i<aL1.size();i++){	  
		    StudentBean Sb=(StudentBean)aL1.get(i);
	  
	%>
		
		
		<tr>
		    <td><%=Sb.getId() %></td>
		    <td><%=Sb.getStudentName() %></td>
		    <td><%=Sb.getSchool() %></td>
		    <td><a href="HandleFindServlet?flag=3&studentname=<%=Sb.getStudentName()%>">Modules demandés</a></td><td><a href="#">détail </a></td>
		    
		</tr>
		<%  }
	
	    }%>		
	</table>
	
	
	
	<jsp:include page="../footer.html"/>
</body>
</html>