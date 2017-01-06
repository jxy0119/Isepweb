<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="HandleFindServlet" method="post" >
<label> country</label><br>
us:<input type="checkbox" name="country" value="us">
fr:<input type="checkbox" name="country" value="fr"><br>
<label>language</label>
eng:<input type="checkbox" name="language" value="eng"><br>
fr:<input type="checkbox" name="language" value="fr"><br>
<label>major</label>
<select name="major">
<option></option>
<option>Informatique</option>
<option>Mecanique</option>
<option>Economique</option>
</select>
<input type="submit" value="submit">





</form>
</body>
</html>