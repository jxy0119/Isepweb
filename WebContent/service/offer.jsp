<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Ajouter une offre</title>
<link href="../css/isepgo.css" rel="stylesheet" type="text/css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>

<script>
$(function(){
$("footer").load("../footer.html");
});

$(function(){
    $("header").load("../menuteacher.html");
    });
$(function(){
    $("#research").load("../research.jsp");
    });
</script>
</head>
<body>
<img src="../img/logo.png" style="width:10%">
<header></header>
<form>
<table>
<tr>
<td>Nom d'école: </td>
<td><input type="text" name="nom"></td>
</tr>
<tr>
<td>Pays: </td>
<td><input type="text" name="pays"></td>
</tr>
<tr>
<td>Langue d'enseignement: </td>
<td><input type="text" name="langue"></td>
</tr>
<tr>
<td>Domaine: </td>
<td><input type="text" name="domaine"></td>
</tr>
<tr>
<td>Autre: </td>
<td><textarea name="autre"></textarea></td>
</tr>
</table>
<input type="submit" value="valider"></input>
</form>
<footer></footer>
</body>
</html>