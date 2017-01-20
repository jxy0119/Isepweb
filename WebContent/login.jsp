
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->



<title>Login ISEP GO</title>

<!-- Bootstrap core CSS -->
<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">

<!-- Custom styles for this template -->
<link href="css/login.css" rel="stylesheet">

</head>

<body>

	<div class="container">

		<form class="form-signin" action="HandleLoginServlet" method="post">

			<div class="form-signin-heading">
				<img src="img/logo.png" style="width: 80%">
			</div>
			<label for="id" class="sr-only">Identifiant</label> <input
				type="text" id="id" class="form-control" name="id"
				placeholder="Identifiant" required autofocus> <label
				for="password" class="sr-only">Mot de passe</label> <input
				type="password" id="password" class="form-control" name="password"
				placeholder="Mot de passe" required>


			<button class="btn btn-lg btn-primary btn-block" type="submit">Connecter</button>
			<p id="mdp">Mot de passe oublié?</p>
		</form>


	</div>
	<!-- /container -->

</body>
</html>
