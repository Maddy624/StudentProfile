<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ page import="javax.servlet.http.*,javax.servlet.*,java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
       <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login System</title>
    <link rel="stylesheet" href="style.css">
    <script >
        function validate()
{ 
var letters = /^[A-Za-z]+[0-9]/;
var al = '<%=session.getAttribute("uname")%>';

if( document.AdminLogin.user_name.value == "" )
{
 alert( "Please provide your username!" );

 return false;
}
if( document.AdminLogin.user_pass.value == "" )
{
 alert( "Please provide your password!" );

 return false;
}
/*if(!document.AdminLogin.user_name.value.match(letters) )
{
 alert( "Username should be alphanumeric only Wrong username" );
 return false;
}*/
if( document.AdminLogin.user_pass.value.length<8 )
{
 alert( "Password should be minimum of minimumlength 8" );
 return false;
}
return true;
}
        function callalert(){
        	var al = '<%=session.getAttribute("u")%>';
        	if(al != "null"){
        		if(al === "no"){
        			alert("Login not sccessful");
        			<%session.removeAttribute("u");%>
        			
        		}
        		
        	}
        }
          
    </script>
    </head>
    <body  onload="callalert()">
     <img class="wave" src="wave.png">
    <section class="left-section">
        <div id="left-form" class="form fade-in-element">
            <h1>Admin Login</h1>
            <form action="admincheck" method="post" name=AdminLogin onsubmit="return validate()">
                <input type="text" name="user_name" class="input-box" placeholder="User Name">
                <input type="password" name="user_pass" class="input-box" placeholder="Password">
                <input type="submit" name="login-btn"  value="Login">
            </form>
        </div>
    </section>

    
        
    </body>
    
</html>