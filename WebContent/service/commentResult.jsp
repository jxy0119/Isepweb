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


    <title>Comments</title>

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
          <ul class="nav navbar-nav">
            <li><a href="/isepweb/student/accueil.jsp">Home</a></li>
            <li><a href="<%=request.getContextPath()%>/HandleFindServlet?flag=2">List of students</a></li>
            <li><a href="/isepweb/service/offer.jsp">Offer</a></li>
            <li><a href="<%=request.getContextPath()%>/student/contact.jsp">Contact</a></li>
          	<li><a href="<%=request.getContextPath()%>/HandleFindServlet?m=1&flag=6">Schools</a></li>
          	<li class="active"><a href="<%=request.getContextPath()%>/OperateServlet?f=4">Comments</a></li>
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

    <div class="container">

		<h3>Comment list</h3>
      <div class="jumbotron container-fluid">
<%
if(request.getAttribute("al")==null){
	response.sendRedirect("/isepweb/login.jsp?err=1");
	return ;
}else{
%>
	
	<%ArrayList<Object> aL1=(ArrayList<Object>)request.getAttribute("al"); %>	
	
	<table>
		<tr>
		    <td>Id</td>
		    <td>StudentName</td>
			<td>School name</td>
			<td>Details</td>
			<td>State</td>
		    <td>Date</td>
			
			
		</tr>
			<%for(int i=0;i<aL1.size();i++){	  
		    CommentBean Cb=(CommentBean)aL1.get(i);
	   
	%>
		
		<tr>
		    <td><%=Cb.getId() %></td>
		    <td><%=Cb.getUserName() %></td>
		    <td><%=Cb.getSchool() %></td>
		    <td><%=Cb.getDetails() %></td>
		    <td><%=Cb.getState() %></td>
		    <td><%=Cb.getDate() %></td>
		    
		</tr>
		<% }%>
		<p><a href="<%=request.getContextPath()%>/OperateServlet?f=4">back to last page</a></p>
	    <%
	}%>
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
	