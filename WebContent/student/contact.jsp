<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->


    <title>Contact</title>

    <!-- Bootstrap core CSS -->
    <link href="../bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="../css/isepgo.css" rel="stylesheet">
    <link href="../css/stickyfooter.css" rel="stylesheet">

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
          <a class="navbar-brand" href="#"><img src="../img/logo.png" height="100%"></a>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
          <ul class="nav navbar-nav"><%if(id==3){ %>
            <li><a href="/isepweb/student/accueil.jsp">Home</a></li>
            <li><a href="<%=request.getContextPath()%>/HandleFindServlet?flag=8&name=<%=u%>">Profile</a></li>
            <li class="active"><a href="/isepweb/student/contact.jsp">Contact</a></li>
          	<li><a href="<%=request.getContextPath()%>/HandleFindServlet?m=1&flag=6">Schools</a></li>
          	<li><a href="/isepweb/student/addApp.jsp">Make a new App</a></li>
          	<li><a href="<%=request.getContextPath()%>/HandleFindServlet?flag=5&studentname=<%=u%>">Result of Apps</a></li>
          	        	 
             <%}else if(id==2){ %>
             <li><a href="/isepweb/student/accueil.jsp">Home</a></li>
             <li><a href="/isepweb/HandleFindServlet?flag=2">list of students</a></li>
             <li class="active"><a href="/isepweb/student/contact.jsp">Contact</a></li>
             <li><a href="HandleFindServlet?m=1&flag=6">Schools</a></li> 
             <%}else {%>
            <li><a href="/isepweb/student/accueil.jsp">Home</a></li>
            <li><a href="<%=request.getContextPath()%>/HandleFindServlet?flag=2">list of students</a></li>
            <li><a href="/isepweb/service/offer.jsp">offer</a></li>
            <li><a href="#">update</a></li>
            <li class="active"><a href="<%=request.getContextPath()%>/student/contact.jsp">Contact</a></li>
          	<li><a href="<%=request.getContextPath()%>/HandleFindServlet?m=1&flag=6">Schools</a></li><%} %>
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

    <div class="container" align="center" >
<img src="../img/contact.jpg" width="30%" style="margin-bottom:20px">

      <!-- Main component for a primary marketing message or call to action -->
      <div class="jumbotron" align="center">
<hr style="margin-top:-30px">

     
		<h2 >Contacter votre responable de parcours</h2>
		     
		
		<form  action="" method="post">
		<label for="sujet" class="sr-only">sujet</label>
        <input type="text" id="sujet" class="form-control" name="sujet" placeholder="sujet" required autofocus><br>
        <textarea class="form-control" rows="5" id="texte" name="texte" placeholder="texte"></textarea><br>
       		  <span class="help-block">Envoyer un mail à ssimons@isep.fr</span>
       
        <button type="button" class="btn btn-primary">Envoyer</button>
        </form>
      </div>
      <br>

      <div class="jumbotron" align="center">
      <h2>Envoyer des informations au service international</h2>
		
		<form  action="" method="post">
		<label for="pays" class="sr-only">Pays</label>
        <input type="text" id="pays" class="form-control" name="pays" placeholder="Pays" required autofocus><br>
        <label for="pays" class="sr-only">Pays</label>
        <input type="text" id="ecole" class="form-control" name="ecole" placeholder="Nom de l'école" required autofocus><br>
        <label for="sujet" class="sr-only">sujet</label>
        <input type="text" id="sujet" class="form-control" name="sujet" placeholder="sujet" required autofocus><br>
        <textarea class="form-control" rows="5" id="texte" name="texte" placeholder="texte"></textarea><br>
        <span class="help-block">Envoyer un mail au service international</span>
        
        <button type="button" class="btn btn-primary">Envoyer</button>
        </form>	
      </div>
      
    </div> <!-- /container -->
    
     <jsp:include page="../footer.html"/>


    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="../bootstrap/js/bootstrap.min.js"></script>
  </body>
</html>
