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
<title>Task Index</title>
</head>
<style>
<!--
a {
  text-decoration: none;
}
-->
</style>
<body bgcolor="#00FFFF">
  <form action="">
 
        
        <td>
    <!--  All task shows-->
    <h2 align="center">
   
      <a href="addtask.jsp">Add Task</a><br>
      <a href="filtertask.jsp">filter Task</a><br>
    </h2>
    <h1 align="center">List of tasks</h1>
    <table border="1" align="center" cellpadding="5"
      style="font-size: 200%; font-family: inherit; font-style: normal; background-color: window;">
      <tr>
        <th>date </th>
        <th>Time</th>
        <th>subject</th>
        <th>descriptions</th>
        <th>Priority</th>
        <th>Actions</th>
      </tr>
     
    <%
      
      String username = (String) session.getAttribute("username");
        Connection con = DBconnection.getConn();
        Statement statement = con.createStatement();
        ResultSet resultSet = statement.executeQuery("Select * from task");
        
        while (resultSet.next()) {
      %>
       
        <td>
          <%
            out.print(resultSet.getString(3));
          %>
        </td>
        <td>
          <%
            out.print(resultSet.getString(4));
          %>
        </td>
        <td>
          <%
            out.print(resultSet.getString(5));
          %>
        </td>
        <td>
          <%
            out.print(resultSet.getString(6));
          %>
        </td>
        <td>
          <%
            out.print(resultSet.getString(7));
          %>
        </td>
      
        <form action="/task" method="post">
          <td><a value="Edit" name="Action" href="edit.jsp?id=<%=resultSet.getInt(1)%>">Edit</a> 
          <a href="deletetask.jsp?id=<%=resultSet.getInt(1)%>"">Delete</a>&nbsp;&nbsp;&nbsp;</td>
           </tr>
      
      </form>
      <%
}
%>

  
    </table>
    <td><h2 align="center">
    
  <a href="index.jsp">Exit</a><br>
  </h2>
  </td>
  </form>
</body>
</html>