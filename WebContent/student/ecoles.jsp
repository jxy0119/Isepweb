<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@page	import="java.sql.*,java.util.*,isepweb.model.*,isepweb.controller.*"%>
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
    <style >
    .jumbotron{
    font-family:courier, Helvetica, Arial, sans-serif;
    
    }</style>
  </head>

  <body>

 <%


String u=(String)session.getAttribute("myName");
int id=(Integer)session.getAttribute("a");  
if(u==null||id==0){
	response.sendRedirect("login.jsp?err=1");
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
            <li><a href="<%=request.getContextPath()%>/HandleFindServlet?flag=8&name=<%=u%>">Profile</a></li>
            <li><a href="/isepweb/student/contact.jsp">Contact</a></li>
          	<li class="active"><a href="<%=request.getContextPath()%>/HandleFindServlet?m=1&flag=6">Schools</a></li>
          	<li><a href="/isepweb/student/addApp.jsp">Apply</a></li>
          	<li><a href="<%=request.getContextPath()%>/HandleFindServlet?flag=5&studentname=<%=u%>">Application Result</a></li>
          	        	 
             <%}else if(id==2){ %>
             <li><a href="/isepweb/student/accueil.jsp">Home</a></li>
             <li><a href="/isepweb/HandleFindServlet?flag=2">list of students</a></li>
             <li><a href="/isepweb/student/contact.jsp">Contact</a></li>
             <li class="active"><a href="<%=request.getContextPath()%>/HandleFindServlet?m=1&flag=6">Écoles</a></li> 
             <%}else {%>
            <li><a href="/isepweb/student/accueil.jsp">Home</a></li>
            <li><a href="<%=request.getContextPath()%>/HandleFindServlet?flag=2">list of students</a></li>
            <li><a href="/isepweb/service/offer.jsp">offer</a></li>
            <li><a href="#">update</a></li>
            <li><a href="<%=request.getContextPath()%>/student/contact.jsp">Contact</a></li>
          	<li class="active"><a href="<%=request.getContextPath()%>/HandleFindServlet?m=1&flag=6">Schools</a></li><%} %>
          </ul>
          <ul class="nav navbar-nav navbar-right">
            <li><form NAME="logoutform" METHOD="POST">
        <INPUT TYPE="HIDDEN" NAME="logout">
        <INPUT TYPE="BUTTON" VALUE="Logout" class="btn btn-danger" ONCLICK="logoutbutton()" style="margin-top:8px">
    </form></li>
          </ul>
        </div><!--/.nav-collapse -->
      </div>
    </nav>
<%if(request.getAttribute("al1")!=null&&request.getAttribute("al2")!=null&&request.getAttribute("al3")!=null){ %>
    <div class="container">

      <!-- Main component for a primary marketing message or call to action -->
      <div class="jumbotron container-fluid">

      	
      	<div class="row"><form name="first" action="/isepweb/HandleFindServlet?flag=7&m=0" method="post" >

      		<div class="col-md-3"></div>
      		<div class="col-md-6">
      			<input type="search" class="form-control" name="search" id="search" placeholder="Search the info">
      		</div>
      		<div class="col-md-1"><button type="submit" form="first" class="btn btn-default glyphicon glyphicon-search"></button></div>
      	<div class="col-md-2"></div>
      </form></div>
      
      <br>
	<div class="row">
	<div class="col-md-4">Major</div>
	<div class="col-md-4">Country</div>
	<div class="col-md-4">Language</div>

	</div>

     <div class="row"><form name="second" action="/isepweb/HandleFindServlet?flag=1&m=0" method="post">
        
        <div class="col-md-4">
            
        	<select name="major" id="select" class="form-control">
        		<option>all</option>
        		<%ArrayList<Object> AL1=(ArrayList<Object>)request.getAttribute("al1"); %>
        		<%for(int i=0;i<AL1.size();i++){	  
		    InformationBean Ib=(InformationBean)AL1.get(i);%>
        		<option><%=Ib.getMajor() %></option>
                <%} %>
        	</select>
        </div>
        
        <div class="col-md-3">

           
        	<select name="country" id="select2" class="form-control" >
        		<option>all</option>
        		<%ArrayList<Object> AL3=(ArrayList<Object>)request.getAttribute("al3"); %>
        		<%for(int i=0;i<AL3.size();i++){	  
		    InformationBean Ib=(InformationBean)AL3.get(i);%>
        		<option><%=Ib.getCountry() %></option>
                <%} %>
        	</select>
        </div>
        

        <div class="col-md-4">
            
        	<select name="language" id="select3" class="form-control">
        		<option>all</option>
                <%ArrayList<Object> AL2=(ArrayList<Object>)request.getAttribute("al2"); %>
        		<%for(int i=0;i<AL2.size();i++){	  
		    InformationBean Ib=(InformationBean)AL2.get(i);%>
        		<option><%=Ib.getLanguage() %></option>
                <%} %>
        	</select>
        </div>
        

        
        <div class="col-md-1">
        <button type="submit" form="second" class="btn btn-default glyphicon glyphicon-search"></button>

        </div>
        </form>
      </div>
     </div>
 
 
     <div class="jumbotron container-fluid">
     <%} %>
     <% if(request.getAttribute("al")!=null){%>


	<%! @SuppressWarnings("unchecked") %> 
	<%ArrayList<Object> aL1=(ArrayList<Object>)request.getAttribute("al"); %>
	<%if(aL1.size()==0){ %><p>not found any information what u what</p><br>
	<p><a href="HandleFindServlet?m=1&flag=6">back to find page and chose again</a></p>
	
	<%}else { %>
	<table class="table table-hover">
	<thead>
		<tr class="active">
		    <td>Country</td>
		    <td>Language</td>
			<td>Major</td>
			<td>SchoolName</td>
			<td>more details</td>
		</tr>
		</thead>
			<%for(int i=0;i<aL1.size();i++){	  
		    InformationBean Ib=(InformationBean)aL1.get(i);
	  
	%>
		<tbody>
		<tr class="info">
		    <td><%=Ib.getCountry() %></td>
		    <td><%=Ib.getLanguage() %></td>
		    <td><%=Ib.getMajor() %></td>
		    <td><%=Ib.getSchoolName() %></td>
		    <td><a href="ShowSchoolInfoServlet?s=<%=Ib.getSchoolName()%>">Go</a></td>
		</tr>
		<%
	     }
	   }
	}%>
	</tbody>
	</table>

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
