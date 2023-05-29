<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
  pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add task</title>
</head>
<% String username = (String) session.getAttribute("username");
            out.print("Welcome "+username);
          %>	
            
<body bgcolor="#00FFFF">
  <form action="<%=request.getContextPath()%>/task" method="post">
    <h1 align="center">Add Task</h1>
	
    <h1>
      <a href="taskmaster.jsp">Back to List</a>
    </h1>
    <table border="1" align="center" cellpadding="5"
      style="font-size: 200%; font-family: inherit; font-style: normal; background-color: window;">
      
      <tr>
     
        <td>Date</td>
        <td><input type="date" name="dates"></td>
      </tr>
      <tr>
        <td>Time</td>
        <td><input type="time" name="times"></td>
      </tr>
      <tr>
      <td>
       <label for="subject">subject</label>
       <td>
     <select name="subject" id="subject">
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
     <option value="high">high</option>
  	<option value="medium">medium</option>
  	<option value="low">low</option>
  	</select> 
      <tr>	
      
        <td>Description</td>
        <td>
        <textarea type="text" name="description"  rows="4" cols="50">
        </textarea>
        </td>
        
      </tr>
      <tr>
        <td></td>
        <td><input type="submit" name="Action" value="Add Task"></td>
      </tr>
    </table>
  </form>
</body>
</html>