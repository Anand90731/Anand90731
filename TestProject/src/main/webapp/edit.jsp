<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.login.DBconnection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
  pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Edit</title>
</head>
<body bgcolor="#00FFFF">
  <form action="<%=request.getContextPath()%>/task" method="post">
    <h1 align="center">Edit Task</h1>
    <h1>
      <a href="index.jsp">back to Task</a>
    </h1>
    
       
    <table border="1" align="center" cellpadding="5"
      style="font-size: 200%; font-family: inherit; font-style: normal; background-color: window;">
      
      
      <% 
      int id=Integer.parseInt(request.getParameter("id"));
      Connection con = DBconnection.getConn();
      Statement statement = con.createStatement();
      ResultSet resultSet = statement.executeQuery("Select * from task where id="+id);
      
      while (resultSet.next()) {
      
      
      %>
        <input type="hidden" name="id" value= <%out.print(resultSet.getString(1));%> >
       
    
      <tr>
        <td>Date</td>
        <td><input type="date" name="dateoftask" value= <%out.print(resultSet.getString(3));%> ></td>
      </tr>
      <tr>
        <td>Time</td>
        <td><input type="time" name="times" value= <%out.print(resultSet.getString(4));%> ></td>
      </tr>
      
       <tr>
      <td>
       <label for="subject">subject</label>
       <td>
     <select name="subject" id="subject">
     <option value= <%out.print(resultSet.getString(5));%>><%out.print(resultSet.getString(5));%></option>
     <option value="Maths">Maths</option>
  	<option value="English">English</option>
  	<option value="computer science">computer science</option>
  	<option value="Business management">Business management</option>
  	<option value="languages">languages</option>
  	<option value="sciences">Sciences</option>
  	<option value="cas">CAS</option>
  	<option value="tok">TOK</option>
   	<option value="EE">EE</option>
    <option value="IA">IA</option> 
	</select> 
	</td>
	</tr>
	
	
       <td>
       <label for="priority">Priority</label>
       <td>
     <select name="priority" id="priority">
     <option value= <%out.print(resultSet.getString(7));%> selected><%out.print(resultSet.getString(7));%></option>
      <option value="high">high</option>
  	<option value="medium">medium</option>
  	<option value="low">low</option>
  	</select> 
      </td>
      <tr>
      <td>Description</td>
        <td>
        <textarea type="text" name="description" rows="4" cols="50"><%out.print(resultSet.getString(6));%>
        </textarea>
        </td>
     </tr>
           <td></td>
     
     <% } %>
      <td align="left"><input type="submit" name="Action" value="Edit"></td>
    </table>

  </form>
</body>
</html>