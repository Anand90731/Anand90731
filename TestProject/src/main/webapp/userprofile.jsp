<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.login.DBconnection"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>user profile</title>
</head>

<body>
	<div align="center">
		<h1>user profile</h1>
		<form action="<%=request.getContextPath()%>/index.jsp" method="post">
			<table style="with: 100%">
				
		<% 
		String username = (String) session.getAttribute("username");
       	Connection con = DBconnection.getConn();
      	Statement statement = con.createStatement();
      	ResultSet resultSet = statement.executeQuery("Select * from login where Username=\""+username+"\"");
  
      while (resultSet.next()) {
       %>
				<tr>
					<td>Name</td>
					<td><input type="text" name="name" value= <%out.print(resultSet.getString(1));%><%out.print(resultSet.getString(3));%> /></td>
				</tr>
				<td>email</td>
					<td><input type="text" name="email" value= <%out.print(resultSet.getString(2));%> /></td>
				</tr>
				<tr>
					<td>User name</td>
					<td><input type="text" name="email" value= <%out.print(resultSet.getString(4));%> /></td>
				</tr>
<%
} 
%>
			</table>
			<input type="submit" value="exit" />
			
		</form>
	</div>
</body>
</html>