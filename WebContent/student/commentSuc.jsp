<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Make your comment!</title>
</head>
<body>
<%String s=(String)request.getAttribute("school"); %>
<p>comment Suc! waiting for confirmming</p>
<a href="<%=request.getContextPath()%>/ShowSchoolInfoServlet?s=<%=s%>">back to school information page</a>
</body>
</html>