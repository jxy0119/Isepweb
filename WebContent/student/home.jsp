<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Accueil</title>

<link href="../css/isepgo.css" rel="stylesheet" type="text/css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>

<script>
$(function(){
$("footer").load("../footer.html");
});

$(function(){
    $("header").load("../menu.html");
    });
$(function(){
    $("#research").load("../research.jsp");
    });
</script>

 
</head>
<body>
<header></header>
<div id="welcomestudent">
<span>Bienvenue </span><span id="name">Bob</span>
<br>
<!-- <img src="../img/logo1.jpg" style="width:100px"> -->
<span id="school">Ecole affecté:</span>
<br>
<span id="studentstatus">Statut de module:</span>
</div>
<br>
<div id="research">
</div>

<footer></footer>

</body>
</html>