<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Page de connexion</title>
<link href="css/isepgo.css" rel='stylesheet' type='text/css' />	
</head>

<body>

<script>
	$(function(){
    $("footer").load("footer.html");
    });
	
</script>
<header>
<img src="img/logo.png" >
</header>
<form action="HandleLoginServlet" method="post">

<label class="loginpage">Identifiant</label>
<input class = "login" type="text" name="id"></input><br>

<label class ="WebContent/css/isepgo.css" "loginpage">Mot de passe</label>
<input class="login" type="password" name="password"></input><br>

<p id = "mdp">Mot de passe oublié?</p><br>
<input id = "login" type="submit" value = "connecter"></input>
<footer></footer>
</form>
</body>
</html>