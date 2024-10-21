<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<script>

</script>
</head>
<body>
<%@ page import ="java.sql.*" %>
<%


try
{
String dbDriver = "com.mysql.jdbc.Driver"; 
String dbURL = "jdbc:mysql://localhost:3306/ncp?autoReconnect=true&useSSL=false"; 
String dbUsername = "root"; 
String dbPassword ="nagalakshmi"; 
Class.forName(dbDriver); 
Connection con = DriverManager.getConnection(dbURL,dbUsername,dbPassword);
PreparedStatement stmt = con.prepareStatement("select pwd from studentlogin where uname = ? AND pwd= ?");

int rno;
String sname;


String name=request.getParameter("suname");
String pwd=request.getParameter("spwd");
stmt.setString(1,name);
stmt.setString(2,pwd);
ResultSet rs=stmt.executeQuery();

String original_password=null;
if(rs.next())
{
	session.setAttribute("user",name);
    response.sendRedirect("studentdashboard.jsp");
	//original_password =rs.getString(1);
}
else
{
	
	 
	 // session.setAttribute("user","no");
	  out.println("<script>alert('Wrong user name or password') </script>");
	 //RequestDispatcher rd=request.getRequestDispatcher("Studentlogin.html");
	  //rd.include(request, response);
	  response.sendRedirect("Studentlogin.jsp");
	
}

stmt.close();
con.close();
}
catch(SQLException e)
{
out.println(e);
}
catch(ClassNotFoundException e)
{
out.println(e);
}   %>

</body>
</html>