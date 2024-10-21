<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

 <%@ page import="javax.servlet.http.*,javax.servlet.*,java.sql.*" %>
<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title>Into student</title>
    <link rel="stylesheet" href="style3.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.12.1/css/all.min.css">
  </head>
  <body>
  <% 
String url = "jdbc:mysql://localhost:3306/ncp?autoReconnect=true&useSSL=false";
String username = "root";
String password = "nagalakshmi" ;
String user=(String)session.getAttribute("user");  
String sql = "select firstn from newstudent where un='"+user+"'"; 
Class.forName("com.mysql.jdbc.Driver"); 
Connection con = DriverManager.getConnection(url,username,password);
Statement st = con.createStatement();
ResultSet rs = st.executeQuery(sql);
rs.next();
%>

    <input type="checkbox" id="check">
    <!--header area start-->
    <header>
      <label for="check">
        <i class="fas fa-bars" id="sidebar_btn"></i>
      </label>
      <div class="left_area">
        <h3>Welcome <span><%= rs.getString(1) %></span></h3>
      </div>
      <div class="right_area">
        <a href="logout_new.jsp" class="logout_btn">Logout</a>
      </div>
    </header>
    
      <div class="sidebar">
        <center>
          <img src="images/student1.jpg" class="profile_image" alt="hello">
          <h4>STUDENT</h4>
        </center>
        <a href="#"><i class="fas fa-desktop"></i><span>Dashboard</span></a>
        <a href="StudentReport.jsp"><i class="fas fa-table"></i><span>Student Report</span></a>
        <a href="Resume_new.jsp"><i class="fas fa-th"></i><span>Resume</span></a>
        <a href="piechart.jsp"><i class="fas fa-sliders-h"></i><span>Overall Class statistics</span></a>
        <a href="changepassword.jsp"><i class="fas fa-sliders-h"></i><span>Change Password</span></a>
      </div>
    <!--header area end-->
    <!--sidebar start-->
    
   
<!--sidebar end-->

   <div class="mid">
  
   </div>
    


  </body>
</html>