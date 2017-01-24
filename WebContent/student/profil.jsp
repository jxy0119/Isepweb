<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page
	import="java.sql.*,java.util.*,isepweb.model.*,isepweb.controller.*"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->


    <title>Profile</title>

    <!-- Bootstrap core CSS -->
    <link href="<%=request.getContextPath()%>/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="<%=request.getContextPath()%>/css/isepgo.css" rel="stylesheet">
    <link href="<%=request.getContextPath()%>/css/stickyfooter.css" rel="stylesheet">

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
    <style >
    .jumbotron{
    font-family:courier, Helvetica, Arial, sans-serif;
    
    }</style>
  </head>

  <body>

  
  <%
String u=(String)session.getAttribute("myName");
int id=(Integer)session.getAttribute("a");
if(u==null){
  response.sendRedirect("/isepweb/login.jsp?err=1");
  return ;
}

if(request.getParameter("logout") != null){
	session.invalidate();
	response.sendRedirect("/isepweb/login.jsp?err=1");	
} 
%>

<script>
        
        function logoutbutton()
        {
            document.logoutform.logout.value = "yes";
            logoutform.submit();
        } 
    </script>

    <!-- Fixed navbar -->
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
          <ul class="nav navbar-nav"><%if(id==3){ %>
            <li><a href="/isepweb/student/accueil.jsp">Home</a></li>
            <li class="active"><a href="<%=request.getContextPath()%>/HandleFindServlet?flag=8&name=<%=u%>">Profile</a></li>
            <li><a href="/isepweb/student/contact.jsp">Contact</a></li>
          	<li><a href="<%=request.getContextPath()%>/HandleFindServlet?m=1&flag=6">Schools</a></li>
          	<li><a href="/isepweb/student/addApp.jsp">Apply</a></li>
          	<li><a href="<%=request.getContextPath()%>/HandleFindServlet?flag=5&studentname=<%=u%>">Application Result</a></li>
          	        	 
             <%}else if(id==2){ %>
             <li><a href="/isepweb/student/accueil.jsp">Home</a></li>
             <li class="active"><a href="<%=request.getContextPath()%>/HandleFindServlet?flag=2">List of students</a></li>
             <li><a href="/isepweb/student/contact.jsp">Contact</a></li>
             <li><a href="<%=request.getContextPath()%>/HandleFindServlet?m=1&flag=6">Schools</a></li> 
             <%}else {%>
            <li><a href="/isepweb/student/accueil.jsp">Home</a></li>
            <li class="active"><a href="<%=request.getContextPath()%>/HandleFindServlet?flag=2">List of students</a></li>
            <li><a href="/isepweb/service/offer.jsp">Offer</a></li>
            <li><a href="<%=request.getContextPath()%>/student/contact.jsp">Contact</a></li>
          	<li><a href="<%=request.getContextPath()%>/HandleFindServlet?m=1&flag=6">Schools</a></li>
          	<li><a href="<%=request.getContextPath()%>/OperateServlet?f=4">Comments</a></li><%} %>
          </ul>
          <ul class="nav navbar-nav navbar-right">
            <li><FORM NAME="logoutform" METHOD="POST">
        <INPUT TYPE="HIDDEN" NAME="logout">
        <INPUT TYPE="BUTTON" VALUE="Logout" class="btn btn-danger" ONCLICK="logoutbutton()" style="margin-top:8px">
    </FORM></li>
          </ul>
        </div><!--/.nav-collapse -->
      </div>
    </nav>

    <div class="container" >

      <div class="jumbotron container-fluid">
<%if(id==1||id==2) {%>      
<%
if(request.getAttribute("al")==null){
	response.sendRedirect("/isepweb/login.jsp?err=1");
	return ;
}else{
%>
	<%ArrayList<Object> aL1=(ArrayList<Object>)request.getAttribute("al"); %>
	
	<table  class="table table-hover">
	  <thead>
		<tr  >
		    <td>ID</td>
		    <td>StudentName</td>
			<td>School of offer</td>
			<td>operate</td>
			
		</tr>
		
		</thead>
		  
		
		<%for(int i=0;i<aL1.size();i++){	  
		    StudentBean Sb=(StudentBean)aL1.get(i);
	  
	%>
		  <tbody>
		
		<tr >
		    <td><%=Sb.getId() %></td>
		    <td><%=Sb.getStudentName() %></td>
		    <td><%=Sb.getSchool() %></td>
		    <%if(id==2){ %><td><a href="<%=request.getContextPath()%>/HandleFindServlet?flag=3&studentname=<%=Sb.getStudentName()%>">His application</a></td><td><a href="#">All info </a></td>
		    <%} %>
		    <%if(id==1){ %><td><a href="/isepweb/service/addOffer.jsp?sn=<%=Sb.getStudentName()%>">Edit his/her school</a></td><%} %>
		</tr>
		   
		
		<%  }
	
	    }%>	
	    
	     </tbody>	
	</table>
	
	<div class="form-group">
	<form action="<%=request.getContextPath()%>/HandleFindServlet?flag=4" method="post">
	<label>Find a student</label><br>
	<input type="text" name="studentname"  class="form-control" ><br>
	<input type="submit" name="submit" value="Search" class="btn btn-info" ><br>
	
	
	</form>
	<%}if(id==3){ %>
	<%
if(request.getAttribute("al")==null){
	response.sendRedirect("/isepweb/login.jsp?err=1");
	return ;
}else{
%>
    <p>hello <%=u %></p>
    
	<%ArrayList<Object> aL1=(ArrayList<Object>)request.getAttribute("al"); %>
	<table class="table table-hover">
		<thead>
		<tr  class="active">
		   
		    <th>StudentID</th>
		    <th>StudentName</th>
			<th>School of offer</th>
			
			
		</tr>
				</thead>
		
			<%for(int i=0;i<aL1.size();i++){	  
		    StudentBean Sb=(StudentBean)aL1.get(i);
	   
	%>
				<tbody>
		
		<tr  class="active">
		    
		    <td><%=Sb.getId() %></td>
		    <td><%=Sb.getStudentName() %></td>
		    <td><%=Sb.getSchool() %></td>
		    

		</tr>
		<% }
			}%>
			</tbody>
				</table><br>
	
	
	
	  </div>
    </div> <!-- /container -->
    
    <jsp:include page="../footer.html"/> 


    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="<%=request.getContextPath()%>/bootstrap/js/bootstrap.min.js"></script><%} %>
  </body>
</html>
