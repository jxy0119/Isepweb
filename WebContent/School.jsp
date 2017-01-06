<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*,isepweb.model.*,isepweb.controller.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%ArrayList<Object> aL1=(ArrayList<Object>)request.getAttribute("al"); %>
   <table>
   <tr><td>SchoolName</td><td>Country</td><td>Discription</td><td>WebSite</td><tr>
   <%for(int i=0;i<aL1.size();i++){
	
	  
		  SchoolBean Sb=(SchoolBean)aL1.get(i);
	  
	%><tr><td><%=Sb.getSchoolName() %></td><td><%=Sb.getCountry() %></td><td><%=Sb.getDiscription() %></td><td><a href="<%=Sb.getWebSite() %>"><%=Sb.getWebSite() %></a></td></tr>
	<%  
   }%></table>
</body>
</html>