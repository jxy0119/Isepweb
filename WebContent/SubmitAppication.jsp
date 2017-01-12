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
<a href="<%=request.getContextPath()%>/student/accueil.jsp">back</a>
<p>hello <%=u %>,chose ur class plz!</p>
	<form action="ApplicateServlet?u=<%=u %>" method="post">

		
		ClassName:<input type="text" name="classname"><br>
		MajorName:<input type="text" name="majorname"><br>  
		<input type="submit" value="submit">


	</form>
</body>
</html>