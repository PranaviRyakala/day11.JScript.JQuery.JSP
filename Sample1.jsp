<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h2>sample JSP page</h2>
<%-- first jsp code --%>
<%! int x=10; %>
<h2 >x value is<%=x++ %></h2>
<%if(x>0){ %>
<h2>x is a positive value</h2>
<%}else{ %>
<h2>x is a negative value</h2>
<%} %>
</body>
</html>