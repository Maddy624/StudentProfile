<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*,java.sql.*" %>
<!DOCTYPE html>
<html lang="en" dir="ltr">
    <head>
        <meta charset="utf-8">
        <title>Change Password</title>
        <link rel="stylesheet" href="style6.css">

        <script >
          function validate()
     {
var password = document.ChangePassword.passOne.value ,confirm_password = document.ChangePassword.passTwo.value;

if(password=="")
{
  alert("Enter new password");
  return false;
}

if(confirm_password=="")
{
  alert("Enter  Confirm new  password");
  return false;
}

if(password!= confirm_password) {
  alert("Passwords Don't Match");
  return false;
}
 
  return true;

}
</script>
    </head>
    <body>
      <form  action="changepass" method="post" name="ChangePassword" onsubmit="return(validate());">
        <div id="container">
            
            <div id="header">
              <center><h1>Change Password</h1></center>
            </div> 
            <div id="form">
              
              <input type="password" placeholder="New Password" name="password"  id="passOne"/>
              <input type="password" placeholder="Confirm New Password"  name="passTwo" id="passTwo"/>
            </div>
            <div id="footer" class="incorrect">
                <center><input type="submit" name="login-btn"  value="Confirm"> </center>
            </div>
          
          </div>
        </form>
    </body>
   
</html>