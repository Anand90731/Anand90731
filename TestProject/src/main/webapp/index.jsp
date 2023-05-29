
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
 <%
 	String username = (String) session.getAttribute("username");
            out.print("Welcome "+username);


          %>
  <form action="">
    <h1 align="center">JP Main page</h1>
    <h2 align="center">
      <a href="taskmaster.jsp"> Task Master</a><br>
    </h2>
     <h2 align="center">
      <a href="tutorial.jsp">Tutorial</a><br>
    </h2>
    <h2 align="center">
      <a href="userprofile.jsp">User Profile</a><br>
    </h2>
   
       <tr>
       
        <td>
          
        </td>
        <td>
    
      </form>
      
    </table>
  </form>
</body>
</html>