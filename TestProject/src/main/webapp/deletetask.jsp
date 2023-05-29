<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.login.DBconnection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
</head>
<body>
	<div align="center">
		<h1>Delete Task</h1>
		<form action="<%=request.getContextPath()%>/task" method="post">
			 <table border="1" align="center" cellpadding="5"
      style="font-size: 200%; font-family: inherit; font-style: normal; background-color: window;">
     <% 
      int id=Integer.parseInt(request.getParameter("id"));
      Connection con = DBconnection.getConn();
      Statement statement = con.createStatement();
      ResultSet resultSet = statement.executeQuery("Select * from task where id="+id);
      
      while (resultSet.next()) {
    
      %>
       
       
       <input type="hidden" name="id" value= <%out.print(resultSet.getString(1));%> readonly>
      
   
      <tr>
        <td>Date</td>
        <td><input type="date" name="date" value= <%out.print(resultSet.getString(3));%> readonly></td>
      </tr>
      <tr>
        <td>Time</td>
        <td><input type="time" name="times"  value= <%out.print(resultSet.getString(4));%> readonly ></td>
      </tr>
      
       <tr>
      <td>
       <label for="subject">subject</label>
       <td>
     <select name="subject" id="subject">
     <option value= <%out.print(resultSet.getString(5));%>><%out.print(resultSet.getString(5));%></option>
    
	</select> 
	</td>
	</tr>
	
	
       <td>
       <label for="priority">Priority</label>
       <td>
     <select name="priority" id="priority">
     <option value= <%out.print(resultSet.getString(7));%> selected><%out.print(resultSet.getString(7));%></option>
     
  	</select> 
      </td>
      <tr>
      <td>Description</td>
        <td>
        <textarea type="text" name="description" rows="4" cols="50" readonly><%out.print(resultSet.getString(6)); %>
        </textarea>
        </td>
     </tr>
           <td></td>
      
     <% } %>
     <td align="left"><input type="submit" name="Action" value="Delete"></td>
    </table>
			
			
			
		</form>
	</div>
</body>
</html>