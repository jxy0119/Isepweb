<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Accueilprofesseur</title>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="../css/isepgo.css" rel="stylesheet" type="text/css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<title></title>
<script>
$(function(){
$("footer").load("../footer.html");
});

$(function(){
    $("header").load("../menuteacher.html");
    });
</script>
</head>

<body>
	<img src="../img/logo.png" style="width: 10%">
	<header></header>
	<a href="HandleFindServlet?flag=2">click here to watch list of students</a>

	<footer></footer>

</body>
</html>