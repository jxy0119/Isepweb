<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<<<<<<< HEAD
    <%@page
=======
 <%@page
>>>>>>> branch 'master' of https://github.com/johnsonofhongkong/isepweb.git
	import="java.sql.*,java.util.*,isepweb.model.*,isepweb.controller.*"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->


    <title>Écoles</title>

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
=======
<%
String u=(String)session.getAttribute("myName");
if(u==null){
  response.sendRedirect("/isepweb/login.jsp?err=1");
  return ;
}
>>>>>>> branch 'master' of https://github.com/johnsonofhongkong/isepweb.git

<<<<<<< HEAD

int id=(Integer)session.getAttribute("a");  
if(u==null||id==0){
	response.sendRedirect("login.jsp?err=1");
	return ;
}
%>
=======
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
<form action="HandleFindServlet?flag=1" method="post" >

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
            <li><a href="/isepweb/student/accueil.jsp">Accueil</a></li>
            <li><a href="/isepweb/HandleFindServlet?flag=5&studentname=<%=u%>">Profil</a></li>
            <li><a href="/isepweb/student/contact.jsp">Contact</a></li>
          	<li class="active"><a href="/isepweb/student/ecoles.jsp">Écoles</a></li>
          	<%} %>         	 
             <%if(id==1||id==2){ %>
             <li><a href="/isepweb/student/accueil.jsp">Accueil</a></li>
            <li><a href="/isepweb/HandleFindServlet?flag=2">list of students</a></li>
            <li><a href="/isepweb/student/contact.jsp">Contact</a></li>
          	<li class="active"><a href="/isepweb/student/ecoles.jsp">Écoles</a></li>
          	<%} %>
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

      <!-- Main component for a primary marketing message or call to action -->
      <div class="jumbotron container-fluid">
<<<<<<< HEAD
      	<div class="row"><form action="#" method="post">
=======
      	<div class="row"><form action="#" method="post" >
>>>>>>> branch 'master' of https://github.com/johnsonofhongkong/isepweb.git
      		<div class="col-md-3"></div>
      		<div class="col-md-6">
      			<input type="search" class="form-control" name="search" id="search" placeholder="Mot-clé">
      		</div>
      		<div class="col-md-1"><button type="button" class="btn btn-default glyphicon glyphicon-search"></button></div>
      	<div class="col-md-2"></div>
      </form></div>
      
      <br>
<<<<<<< HEAD

     <div class="row"><form name="second" action="/isepweb/HandleFindServlet?flag=1" method="post">
    	
=======
<div class="row"><form action="/isepweb/HandleFindServlet?flag=1" method="post" >
     
        <div class="col-md-3"> 
        	<select name="major" id="select" class="form-control">
        		<option value="" >Systemes Embarques</option>
        		<option value="" >informatique</option>
        		<option value="" disabled selected>télécomunication</option>
        		
        	</select>
        </div>
>>>>>>> branch 'master' of https://github.com/johnsonofhongkong/isepweb.git
        
        <div class="col-md-3">
<<<<<<< HEAD
        	<select name="major" id="select" class="form-control">
        		<option value="" disabled selected>Systemes Embarques</option>
        		<option>all</option>
        		<option>Informatique</option>
                <option>Mecanique</option>
                <option>Telecommunication</option>
                <option>Electronique</option>
        	</select>
        </div>
        
        <div class="col-md-2">
=======
>>>>>>> branch 'master' of https://github.com/johnsonofhongkong/isepweb.git
        	<select name="country" id="select2" class="form-control" >
        		<option value="" disabled selected>Pays</option>
<<<<<<< HEAD
        		<option>all</option>
        		<option>China</option>
                <option>France</option>
                <option>US</option>
=======
        		<option>France</option>
        		<option>US</option>
        		<option>Chine</option>
>>>>>>> branch 'master' of https://github.com/johnsonofhongkong/isepweb.git
        	</select>
        </div>
        
<<<<<<< HEAD
        <div class="col-md-2">
=======
        <div class="col-md-3">
>>>>>>> branch 'master' of https://github.com/johnsonofhongkong/isepweb.git
        	<select name="language" id="select3" class="form-control">
        		<option value="" disabled selected>Langues des cours</option>
<<<<<<< HEAD
        		<option>all</option>
                <option>Fr</option>
                <option>Eng</option>
=======
        		<option>fr</option>
        		<option>eng</option>
>>>>>>> branch 'master' of https://github.com/johnsonofhongkong/isepweb.git
        	</select>
        </div>
        
<<<<<<< HEAD
        
        <div class="col-md-1">
        <button type="submit" form="second" class="btn btn-default glyphicon glyphicon-search"></button>
=======
    
        <div class="col-md-3">
        <button type="submit" class="btn btn-default glyphicon glyphicon-search"></button>
>>>>>>> branch 'master' of https://github.com/johnsonofhongkong/isepweb.git
        </div>
        </form>
      </div>
     </div>
 
 
     <div class="jumbotron container-fluid">
<<<<<<< HEAD
     <% if(request.getAttribute("al")!=null){%>



	<%ArrayList<Object> aL1=(ArrayList<Object>)request.getAttribute("al"); %>
	<%if(aL1.size()==0){ %><p>not found any information what u what</p><br>
	<p><a href="/isepweb/student/ecoles.jsp">back to find page and chose again</a></p>
	
	<%}else { %>
	<table>
		<tr>
		    <td>Country</td>
		    <td>Language</td>
			<td>Major</td>
			<td>SchoolName</td>
			<td>more details</td>
		</tr>
			<%for(int i=0;i<aL1.size();i++){	  
		    InformationBean Ib=(InformationBean)aL1.get(i);
	  
	%>
		
		<tr>
		    <td><%=Ib.getCountry() %></td>
		    <td><%=Ib.getLanguage() %></td>
		    <td><%=Ib.getMajor() %></td>
		    <td><%=Ib.getSchoolName() %></td>
		    <td><a href="ShowSchoolInfoServlet?s=<%=Ib.getSchoolName()%>">go</a></td>
		</tr>
		<%
	     }
	   }
	}%>
	</table>
=======



 

>>>>>>> branch 'master' of https://github.com/johnsonofhongkong/isepweb.git
     </div>
    </div> <!-- /container -->
    
     <jsp:include page="../footer.html"/>


    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="<%=request.getContextPath()%>/bootstrap/js/bootstrap.min.js"></script>
<<<<<<< HEAD
    
=======
     <%
   if(request.getAttribute("al")!=null){
	 
 %>
	<%ArrayList<Object> aL1=(ArrayList<Object>)request.getAttribute("al"); %>
	<%if(aL1.size()==0){ %><p>not found any information </p><br>
	
	<%}else { %>
	 <table>
		<tr>
		    <td>Country</td>
		    <td>Language</td>
			<td>Major</td>
			<td>SchoolName</td>
			<td>more details</td>
		</tr>
			<%for(int i=0;i<aL1.size();i++){	  
		    InformationBean Ib=(InformationBean)aL1.get(i);
	  %>
		
		<tr>
		    <td><%=Ib.getCountry() %></td>
		    <td><%=Ib.getLanguage() %></td>
		    <td><%=Ib.getMajor() %></td>
		    <td><%=Ib.getSchoolName() %></td>
		    <td><a href="ShowSchoolInfoServlet?s=<%=Ib.getSchoolName()%>">go</a></td>
		</tr>
		<%}
		
   }
	}%>
	</table>	
>>>>>>> branch 'master' of https://github.com/johnsonofhongkong/isepweb.git
  </body>
</html>
