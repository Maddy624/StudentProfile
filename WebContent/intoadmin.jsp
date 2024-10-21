<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title>Into Admin</title>
    <link rel="stylesheet" href="style3.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.12.1/css/all.min.css">
  </head>
  <body>
  <% 
String url = "jdbc:mysql://localhost:3306/ncp?autoReconnect=true&useSSL=false";
String username = "root";
String password = "nagalakshmi" ;
String sql = "select * from adminlogin"; 
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
        <h3>Welcome <span><%=session.getAttribute("u")%></span></h3>
      </div>
      <div class="right_area">
        <a href="index.html" class="logout_btn">Logout</a>
      </div>
    </header>
    <!--header area end-->
    <!--sidebar start-->
    <div class="sidebar">
      <center>
        <img src="1.jpg" class="profile_image" alt="">
        <h4><%=session.getAttribute("u")%></h4>
      </center>
      <a href="dashboard.html"><i class="fas fa-desktop"></i><span>Dashboard</span></a>
      <a href="newstudent.jsp" target="f1"><i class="fas fa-cogs"></i><span>Add student</span></a>
      
      
      
    </div>
    <!--sidebar end-->

    <div class="content" name="f1"></div>

  </body>
</html>