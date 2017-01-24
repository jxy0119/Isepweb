<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page
	import="java.sql.*,java.util.*,isepweb.model.*,isepweb.controller.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="<%=request.getContextPath()%>/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    
<title>All Schools</title>
</head>
<body>
<%
String u=(String)session.getAttribute("myName");
if(u==null){
	response.sendRedirect("/isepweb/login.jsp?err=1");
	return ;
}
%>
<%
if(request.getAttribute("al")==null){
	response.sendRedirect("/isepweb/login.jsp?err=1");
	return ;
}else{
%>
	<%! @SuppressWarnings("unchecked") %> // for the line below
	<%ArrayList<Object> aL1=(ArrayList<Object>)request.getAttribute("al"); %>
	<%if(aL1.size()==0){ %><p>not found any information what u what</p><br>
	<p><a href="find.jsp">back to find page and chose again</a></p>
	
	<%}else { %>
	<table>
		<tr>
		    <td>Country</td>
		    <td>Language</td>
			<td>Major</td>
			<td>SchoolName</td>
			<td>more details</td>
		</tr>
			<%for(int i=0;i<aL1.size();i++){	  
		    InformationBean Ib=(InformationBean)aL1.get(i);
	  
	%>
		
		<tr>
		    <td><%=Ib.getCountry() %></td>
		    <td><%=Ib.getLanguage() %></td>
		    <td><%=Ib.getMajor() %></td>
		    <td><%=Ib.getSchoolName() %></td>
		    <td><a href="<%=request.getContextPath()%>/ShowSchoolInfoServlet?s=<%=Ib.getSchoolName()%>">go</a></td>
		</tr>
		<%}
		}
	}%>
	</table>	
</body>
</html>