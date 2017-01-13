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


    <title>Profil</title>

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
  </head>

  <body>
<<<<<<< HEAD
  <%
String u=(String)session.getAttribute("myName");
int id=(Integer)session.getAttribute("a");  
if(u==null||id==0){
	response.sendRedirect("login.jsp?err=1");
	return ;
}
%>

=======
  
  <%
String u=(String)session.getAttribute("myName");
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
>>>>>>> branch 'master' of https://github.com/johnsonofhongkong/isepweb.git

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
            <li><a href="student/accueil.jsp">Accueil</a></li>
            <li class="active"><a href="/isepweb/HandleFindServlet?flag=5&studentname=<%=u%>">Profil</a></li>
            <li><a href="/isepweb/student/contact.jsp">Contact</a></li>
          	<li><a href="/isepweb/student/ecoles.jsp?flag=1">Écoles</a></li>
          	<%} %>         	 
             <%if(id==1||id==2){ %>
             <li><a href="student/accueil.jsp">Accueil</a></li>
            <li class="active"><a href="/isepweb/HandleFindServlet?flag=2">list of students</a></li>
            <li><a href="/isepweb/student/contact.jsp">Contact</a></li>
          	<li><a href="/isepweb/student/ecoles.jsp?flag=1">Écoles</a></li><%} %> 
          </ul>
          <ul class="nav navbar-nav navbar-right">
            <li><FORM NAME="logoutform" METHOD="POST">
        <INPUT TYPE="HIDDEN" NAME="logout">
        <INPUT TYPE="BUTTON" VALUE="Déconnexion" class="btn btn-danger" ONCLICK="logoutbutton()" style="margin-top:8px">
    </FORM></li>
          </ul>
        </div><!--/.nav-collapse -->
      </div>
    </nav>

    <div class="container">

		<h3>Votre profil</h3>
      <div class="jumbotron container-fluid">
<<<<<<< HEAD
<%if(id==1||id==2) {%>      
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
	<%}if(id==3){ %>
	<%
if(request.getAttribute("al")==null){
	response.sendRedirect("/isepwebproject/login.jsp?err=1");
	return ;
}else{
%>
    <p>hello <%=u %></p>
	<%ArrayList<Object> aL1=(ArrayList<Object>)request.getAttribute("al"); %>
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

		</tr>
		<% }
			}%>
	</table><br>
	And next chose ur class plz!
	
=======

<p>hello <%=u %>,chose ur class plz!</p>
>>>>>>> branch 'master' of https://github.com/johnsonofhongkong/isepweb.git
	<form action="ApplicateServlet?u=<%=u %>" method="post">

		
		ClassName:<input type="text" name="classname"><br>
		MajorName:<input type="text" name="majorname"><br>  
		<input type="submit" value="submit">


	</form>
	<a href="/isepweb/student/accueil.jsp">back</a>
	
	<%} %>
	  </div>
    </div> <!-- /container -->
    
     <jsp:include page="../footer.html"/>


    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="<%=request.getContextPath()%>/bootstrap/js/bootstrap.min.js"></script>
  </body>
</html>
