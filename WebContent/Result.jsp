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
<%String num=request.getParameter("num"); 
if(num.equals("1")){%>
<%ArrayList<Object> aL1=(ArrayList<Object>)request.getAttribute("al"); %>
   <table>
   <tr><td>SchoolName</td><td>Country</td><td>more details</td><tr>
   <%for(int i=0;i<aL1.size();i++){
	
	  
		  SchoolBean Sb=(SchoolBean)aL1.get(i);
	  
	%><tr><td><%=Sb.getSchoolName() %></td><td><%=Sb.getCountry() %></td><td><a href="ShowSchoolInfoServlet?s=<%=Sb.getSchoolName() %>">go</a></td></tr>
	<%  
   }%></table><%
   }else if(num.equals("2")){
   %> 

<%Object []a=(Object[])request.getAttribute("language"); %>
<%ArrayList<Object> aL1=(ArrayList)a[0];
ArrayList<Object> aL2=(ArrayList)a[1];
ArrayList<Object> aL3=(ArrayList)a[2];%>
<table>
   <tr><td>Language</td><td>ClassName</td><td>MajorName</td><td>SchoolName</td><td>MoreDetails</td></tr>  
<%for(int i=0;i<aL1.size();i++){
	ClassBean Cb=(ClassBean)aL1.get(i);
	MajorBean Mb=(MajorBean)aL2.get(i);
	SchoolBean Sb=(SchoolBean)aL3.get(i);

	%><tr><td><%=Cb.getLanguage() %></td><td><%=Cb.getClassName() %></td><td><%=Mb.getMajorName() %></td>
	<td><%=Sb.getSchoolName() %></td><td><a href="ShowSchoolInfoServlet?s=<%=Sb.getSchoolName() %>">go</a></td></tr>

   
   
   
<%}}else{ %> 
<%Object []a=(Object[])request.getAttribute("major"); %>
<%ArrayList<Object> aL1=(ArrayList)a[0];
ArrayList<Object> aL2=(ArrayList)a[1];
ArrayList<Object> aL3=(ArrayList)a[2];%>
<table>
   <tr><td>MajorName</td><td>ClassName</td><td>SchoolName</td><td>MoreDetails</td></tr>  
<%for(int i=0;i<aL1.size();i++){
	ClassBean Cb=(ClassBean)aL1.get(i);
	MajorBean Mb=(MajorBean)aL2.get(i);
	SchoolBean Sb=(SchoolBean)aL3.get(i);

	%><tr><td><%=Cb.getClassName() %></td><td><%=Mb.getMajorName() %></td><td><%=Sb.getSchoolName() %></td>
	<td><a href="ShowSchoolInfoServlet?s=<%=Sb.getSchoolName() %>">go</a></td></tr>

<%}} %>  
   </table>
</body>
</html>