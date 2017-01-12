<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String u=(String)session.getAttribute("myName");
if(u==null){
	response.sendRedirect("login.jsp?err=1");
	return ;
}
%>
<form action="HandleFindServlet?flag=1" method="post" >
<label> country</label><br>
<select name="country">
<option></option>
<option>China</option>
<option>France</option>
<option>US</option>
</select>

<label>language</label>
<select name="language">
<option></option>
<option>Fr</option>
<option>Eng</option>

</select>
<label>major</label>
<select name="major">
<option></option>
<option>Informatique</option>
<option>Mecanique</option>
<option>Telecommunication</option>
</select>
<input type="submit" value="submit">





</form>
</body>
</html>