<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Accueil</title>
<style type="text/css">
body{
	font-family:sans-serif;
}
#welcome{
	border-style:solid;
	border-width:1px;
	width: 70%;
}
#search{
	width:40%;
}
ul {
    list-style-type: none;
    margin: 0 0 0 0 ;
    padding: 0;
    overflow: hidden;
    background: linear-gradient(#BBB, #777);
}

li {
    float: left;
}

li a {
    display: block;
    color: white;
    text-align: center;
    padding: 14px 40px;
    text-decoration: none;
}

li a:hover {
    background: linear-gradient(#999, #555);
}
.searchpad {
    display: inline-block;
    width:30%;
}
#school{

}
#status{

}
#search{
    display: inline-block;
    width: 20%;
    border: 1px solid rgba(255,255,255,0.6);
    background: linear-gradient(#eee, #fff);
    transition: all 0.3s ease-out;
    box-shadow: 
        inset 0 1px 4px rgba(0,0,0,0.4);
    padding: 5px;
    -moz-box-sizing: border-box;
    box-sizing: border-box;
}
</style>
</head>
<body>
<img src="img/logo1.jpg" style="width:50px">
<br>
<header>
<ul>
<li><a href="#">Accueil</a></li>
<li><a href="#">Profil</a></li>
<li><a href="#">Contact</a></li>
<li><a href="#">Ecoles</a></li>
<li><a href="#">Déconnexion</a></li>
</ul>
</header>
<br>
<div id="welcome">
<span>Bienvenue </span><span id="name">Bob</span>
<br>
<img src="img/logo1.jpg" style="width:100px">
<span id="school">Ecole</span>
<br>
<span id="status">Statut</span>
</div>
<br>
<span class="searchpad"></span>
<input type="text" name="search" id="search">
<span class="searchpad"></span>
</body>
</html>