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
   <form action="<%=request.getContextPath()%>/filtertask" method="post">
     <table border="1" align="center" cellpadding="5"
      style="font-size: 100%; font-family: inherit; font-style: normal; background-color: window;">

        <td>Date</td>
        <td><input type="date" name="dates"></td>

      <td>
       <label for="subject">subject</label>
       <td>
     <select name="subject" id="subject">
      <option value="select">select</option>
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

	<td>
       <label for="priority">Priority</label>
       <td>
     <select name="priority" id="priority">
      <option value="select">select</option>
     <option value="high">high</option>
  	<option value="medium">medium</option>
  	<option value="low">low</option>
  	</select> 
  
        <td><input type="submit" name="Action" value="filter Task"></td>
      </tr>
    </table>
    </h2>

  </form>
</body>
</html>

<table border="1" align="center" cellpadding="5"
      style="font-size: 100%; font-family: inherit; font-style: normal; background-color: window;">
      <tr>
        <th>date </th>
        <th>Time</th>
        <th>subject</th>
        <th>descriptions</th>
        <th>Priority</th>
        <th>Actions</th>
      </tr>
     
    <%
      
     String priority = request.getParameter("priority");
     String subject =request.getParameter("subject");
     String dates =request.getParameter("dates");
     
     System.out.print("Select * from task where priority=\""+priority+"\"and subject=\""+subject+"\"and dates=\""+dates+"\"" );

        Connection con = DBconnection.getConn();
        Statement statement = con.createStatement(); 
        ResultSet resultSet = statement.executeQuery("Select * from task where priority=\""+priority+"\"AND subject=\""+subject+"\"" );
        
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

