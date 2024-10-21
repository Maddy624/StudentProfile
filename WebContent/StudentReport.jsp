<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@ page import ="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
    <meta charset="ISO-8859-1">
        <title>Student Report</title>
        <style>
            table,td {
         border: 1px solid black;
         border-collapse:Collapse;
         padding: 15px;
        }
         th{
            border: 1px solid black;
        font-weight:bold;
       text-align:center;
       background: #625D5D;
       color:white;
       padding: 15px;
       }

       .student_sgpa {
  text-align:right;
  font-weight:bold;
}
.print_icon
{
    margin-top:20px;
    margin-bottom:10px;
    margin-left:900px
}

.dashboard{
  padding: 5px;
  background: #625D5D;
  text-decoration: none;
  float: right;
  margin-right: 700px;
  margin-top: 20px;
  font-size: 15px;
  font-weight: 600;
  color: #fff;

}

        </style>
    </head>
    <body>
        <a class='print_icon' href="javascript:window.print()"   title="Print"><img src="images/icn-print.jpg" alt="" /></a>
<center>


            <%   
  String name=(String)session.getAttribute("user");  
  
  %> 
            <%! String sub1; %> 
            <%! String sub2; %> 
            <%! String sub3; %> 
            <%! String sub4; %> 
            <%! String sub5; %> 
            <%! float sgpa;%>
             <%  try
            {
             
            String dbDriver = "com.mysql.jdbc.Driver"; 
            String dbURL = "jdbc:mysql://localhost:3306/ncp?autoReconnect=true&useSSL=false"; 
            String dbUsername = "root"; 
            String dbPassword ="nagalakshmi"; 
            Class.forName(dbDriver); 
            Connection con = DriverManager.getConnection(dbURL,dbUsername,dbPassword);
            PreparedStatement stmt = con.prepareStatement("select sub1,sub2,sub3,sub4,sub5,sgpa from studentmarks where uname = ? ");
            System.out.println("hi");
            int rno;
            String sname=(String)session.getAttribute("user");
            stmt.setString(1,name);
          
            ResultSet rs=stmt.executeQuery();

            //float c2=0,c3=0,c4=0,c5=0;
           
           while(rs.next())
            {
        	   System.out.println("inside");
               sub1=rs.getString(1);
               sub2=rs.getString(2);
               sub3=rs.getString(3);
               sub4=rs.getString(4);
               sub5=rs.getString(5);
               sgpa=rs.getFloat(6);
               System.out.println(sub1);
          
       
            
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
            }   
            %>

<h4>RollNo:<%= name%></h4>

<table >
    <tr>
      <th>CourseCode</th>
      <th>CourseName</th>
      <th>Grade</th>
    </tr>
    <tr>
      <td>15CSE311</td>
      <td>Compiler Design</td>
      <td><%= sub1%></td>
    </tr>
    <tr>
      <td>15CSE312</td>
      <td>Computer Networks</td>
      <td><%= sub2%></td>
    </tr>
    <tr>
        <td>15CSE313</td>
        <td>Software Engineering</td>
        <td><%= sub3%></td>
      </tr>
      <tr>
        <td>15CSE432</td>
        <td>Principles of Machine Learning</td>
        <td><%= sub4%></td>
      </tr>
      <tr>
        <td>15CSE387</td>
        <td>Open Lab</td>
        <td><%= sub5%></td>
      </tr>
      <tr>
        <td colspan="2" class="student_sgpa">SGPA</td>
        <td ><%= sgpa%></td>
      </tr>
  </table>


    <a href="studentdashboard.jsp" class="dashboard">Goto Dashboard</a>
  
</center>
</body>
  </html>