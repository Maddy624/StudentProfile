<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html>
<HTML>
    <head>
        <link rel="stylesheet" href="style5.css">

    </head>
    <body>
     <% 
String url ="jdbc:mysql://localhost:3306/ncp?autoReconnect=true&useSSL=false";
String username = "root";
String password = "nagalakshmi" ;

String name=(String)session.getAttribute("user");
String sql = "select * from newstudent where un='"+name+"'"; 
Class.forName("com.mysql.jdbc.Driver"); 
Connection con = DriverManager.getConnection(url,username,password);
Statement st = con.createStatement();
ResultSet rs = st.executeQuery(sql);
rs.next();
%>
        <center>
        <table>
            <tr>
        
             
             <td><h1 class=name><%= rs.getString(1)+rs.getString(5)%>
            <td><a class='north' href="javascript:window.print()" title="Print"><img src="images/icn-print.jpg" alt="" /></a></td>
             </h1></td>   
            </tr>
            <tr>
                <td ><h4 class=mail>Email:<%= rs.getString(21) %></h4></td>
            </tr>
            <tr>
                <td><h4 class=tel>Telephone:<%= rs.getString(23) %></h4></td>
            </tr>

          

            <tr>
                <td><h2>OBJECTIVE</h2></td>
                <td><p><%= rs.getString(4) %></p></td>
            </p></td>
            </tr>

            <tr><td><h2>EDUCATION</h2></td></tr>
            <tr>
                <td><h3>Degree</h3></td>
                <td>
                    <p><b>Course:</b><%= rs.getString(17) %><br />
                        <b>Institution & University:</b> <%= rs.getString(18) %></br>
                        <b>Period: </b><%= rs.getString(19) %></br>
                        <b>CGPA:</b> <%= rs.getString(20) %></br>
                        </p>
                </td>
            </tr>

            <tr>
                <td><h3>Higher Secondary Education</h3></td>
                <td>
                    <p>
                        <b>Institution:</b><%= rs.getString(14) %></br>
                        <b>Period: </b><%= rs.getString(15) %></br>
                        <b>Marks/Grade:</b> <%= rs.getString(16) %></br>
                        </p>
                </td>
            </tr>

            <tr>
                <td><h3>Secondary Education</h3></td>
                <td>
                    <p>
                        <b>Institution:</b><%= rs.getString(10) %></br>
                        <b>Period: </b><%= rs.getString(11) %></br>
                        <b>Marks/Grade:</b><%= rs.getString(12) %></br>
                        </p>
                </td>

            </tr>

            <tr>
                <td><h2>Personal Details</h2></td>
                <td>
                <p>
                    <b>Date Of Birth:</b><%= rs.getString(22) %></br>
                    <b>Contact Address: </b><%= rs.getString(8) %></br>
                    </p>
                </td>
            </tr>
            <tr></tr>
        </table>
    </center>
    </body>
</HTML>