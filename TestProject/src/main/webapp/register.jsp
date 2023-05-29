<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
</head>
<script>  
function matchPassword() {  
	  var pw1 = document.getElementById("password");  
	  var pw2 = document.getElementById("repassword"); 
	 
	  
	  if(pw1 != pw2)  
	  {   
	    alert("Passwords did not match"+pw1);  
	  } else {  
	    alert("Password created successfully"+pw2);  
	  }  
	}  
function verifyPassword() {  
  var pw = document.getElementById("password").value;  
  //check empty password field  
  if(pw == "") {  
     document.getElementById("message").innerHTML = "**Fill the password please!";  
     return false;  
  }  
   
 //minimum password length validation  
  if(pw.length < 8) {  
     document.getElementById("message").innerHTML = "**Password length must be atleast 8 characters";  
     return false;  
  }  
  
//maximum length of password validation  
  if(pw.length > 15) {  
     document.getElementById("message").innerHTML = "**Password length must not exceed 15 characters";  
     return false;  
  } else {  
     alert("Password is correct");  
  }  
}  
</script>  
  
<body>
	<div align="center">
		<h1>Sign Up</h1>
		<form action="<%=request.getContextPath()%>/register" method="post">
			<table style="with: 100%">
				<tr>
					<td>First Name</td>
					<td><input type="text" name="Fname" /></td>
				</tr>
				<tr>
					<td>Last Name</td>
					<td><input type="text" name="Lname" /></td>
				</tr>
				<tr>
					<td>email</td>
					<td><input type="email" name="email" /></td>
				</tr>
				<tr>
					<td>User Name</td>
					<td><input type="text" name="username" /></td>
				</tr>
				<tr>
					<td>Password</td>
					<td><input type="password" name="password" /></td>
				</tr>
				
				<tr>
					<td>Retype Password</td>
					<td><input type="password" name="repassword" /></td>
				</tr>

			</table>
			<!--  input type="submit" onclick="matchPassword()" value="Submit" />-->
			<input type="submit" name="Action" value="Add Profile">
			
		</form>
	</div>
</body>
</html>