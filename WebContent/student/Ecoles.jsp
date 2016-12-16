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
    <link href="../css/isepgo.css" rel="stylesheet">

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>

  <body>

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
          <ul class="nav navbar-nav">
            <li class="active"><a href="">Accueil</a></li>
            <li><a href="">Profil</a></li>
            <li><a href="">Contact</a></li>
          	<li><a href="">Écoles</a></li>
          	
          </ul>
          <ul class="nav navbar-nav navbar-right">
            <li><a href="">Déconnexion</a></li>
          </ul>
        </div><!--/.nav-collapse -->
      </div>
    </nav>

    <div class="container">

      <!-- Main component for a primary marketing message or call to action -->
      <div class="jumbotron">
        <label for="search">Search:</label>
    <input type="search" name="search" id="search">
    <div>
        <label for="date">Date:</label>
        <input type="date"  name="date" id="date">
        <label for="select">systemes Embarques:</label>
        <select name="select" id="select">
        </select>
        <label for="select2">Pays:</label>
        <select name="select2" id="select2">
        </select>
        <label for="select3">Langues des cours:</label>
        <select name="select3" id="select3">
        </select>
        <label for="select4">Duree:</label>
        <select name="select4" id="select4">
        </select>
    </div>
    <div>
        <li>
            <label for="textarea">Text Area:</label>
            <textarea name="textarea" id="textarea"></textarea>
        </li>
        <li>
            <label for="textarea2">Text Area:</label>
            <textarea name="textarea2" id="textarea2"></textarea>
        </li>
        <li>
            <label for="textarea3">Text Area:</label>
            <textarea name="textarea3" id="textarea3"></textarea>
        </li>
        <li>
            <label for="textarea4">Text Area:</label>
            <textarea name="textarea4" id="textarea4"></textarea>
        </li>
    </div>
      </div>

    </div> <!-- /container -->


    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="../bootstrap/js/bootstrap.min.js"></script>
  </body>
</html>
