
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

    <div class="container" >
	
      <form class="form-signin" action="HandleLoginServlet" method="post">
        <div class="form-signin-heading"><img src="img/logo.png" style="width:80%"></div>
             
              <div class="input-group">
              <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
              <input type="text" id="id" class="form-control" name="id" placeholder="Login" required autofocus>
        </div>
               
               <div class="input-group" >
        
              <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
        
        
              <input type="password" id="password" class="form-control" name="password" placeholder="Password" required>
        </div>
            <br>
        
        <button class="btn btn-lg btn-primary btn-block" type="submit" >Login</button>
        
          <p class="text-success"><a href="/isepweb/oubliemotdepasse.html"><strong>Forgot Password?</strong></a></p>
       
      </form>
      

    </div> <!-- /container -->

  </body>
</html>
