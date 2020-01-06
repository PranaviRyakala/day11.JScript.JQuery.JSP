<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<% String user=request.getParameter("user");
		String password=request.getParameter("password");
		RequestDispatcher rd = null;%>
		
		<% if(user.equals("admin") && password.equals("admin") )
			{
	
			session.setAttribute("admin", user);
			session.setAttribute("admin", password);
			rd=request.getRequestDispatcher("Admin");%>
			<h2>success</h2>
	
			
			<% }
		else if(user.equals("admin") &&(password.isEmpty()|| !(password.equals("admin")))){		%>	
			<h2><font color=red>password should not be empty</font></h2>
			<%rd=request.getRequestDispatcher("Form.html");
		}
		else if (user.isEmpty() || password.isEmpty() )
		{ %>
			 <h2><font color=red>name/password should not be empty</font></h2>
			<% rd=request.getRequestDispatcher("Form.html");
			}
			else
			{rd=request.getRequestDispatcher("User");%>
		<h2>success</h2>
		<%	}
		rd.include(request, response); %>
			
		

</body>
</html>