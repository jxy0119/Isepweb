<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->


<title>Fixed Top Navbar Example for Bootstrap</title>

<!-- Bootstrap core CSS -->
<link href="../bootstrap/css/bootstrap.min.css" rel="stylesheet">

<!-- Custom styles for this template -->
<link href="C:/Users/jxy01/git/isepweb1/WebContent/css/isepgo.css" rel="stylesheet">

<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>

<body>
<%
String u=(String)session.getAttribute("myName");
if(u==null){
	response.sendRedirect("login.jsp?err=1");
	return ;
}
%>

<a href="/isepwebproject/find.jsp">click here to find school</a><br>
<a href="/isepwebproject/SubmitAppication.jsp">click here to chose class</a><br>
<a href="/isepwebproject/HandleFindServlet?flag=5&studentname=<%=u %>" >click here to see the states of my applications</a><br>
<p>welcome!!<%=u %></p>
	<!-- Fixed navbar -->
	<nav class="navbar navbar-default navbar-fixed-top">
		<div class="container">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed"
					data-toggle="collapse" data-target="#navbar" aria-expanded="false"
					aria-controls="navbar">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="#"><img src="C:/Users/jxy01/git/isepweb1/WebContent/img/logo.png"
					height="100%"></a>
			</div>
			<div id="navbar" class="navbar-collapse collapse">
				<ul class="nav navbar-nav">
					<li class="active"><a href="">Accueil</a></li>
					<li><a href="">Profil</a></li>
					<li><a href="">Contact</a></li>
					<li><a href="">Écoles</a></li>

				</ul>
				<ul class="nav navbar-nav navbar-right">
					<li><a href="">Déconnexion</a></li>
				</ul>
			</div>
			<!--/.nav-collapse -->
		</div>
	</nav>

	<div class="container">

		<!-- Main component for a primary marketing message or call to action -->
		<div class="jumbotron">
			<h1>Navbar example</h1>
			<p>This example is a quick exercise to illustrate how the
				default, static and fixed to top navbar work. It includes the
				responsive CSS and HTML, so it also adapts to your viewport and
				device.</p>
			<p>To see the difference between static and fixed top navbars,
				just scroll.</p>
			<p>
				<a class="btn btn-lg btn-primary" href="../../components/#navbar"
					role="button">View navbar docs &raquo;</a>
			</p>
		</div>

	</div>
	<!-- /container -->


	<!-- Bootstrap core JavaScript
    ================================================== -->
	<!-- Placed at the end of the document so the pages load faster -->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
	<script src="C:/Users/jxy01/git/isepweb1/WebContent/bootstrap/js/bootstrap.min.js"></script>
</body>
</html>
