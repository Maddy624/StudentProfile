<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import ="java.sql.*" %>
 <!DOCTYPE html>
<html>
    <head>
      <style>
        .dashboard
        {
          padding: 5px;
          background: #005086;
          text-decoration: none;
          
          
          margin-left: 160px;
          font-size: 15px;
          font-weight: 600;
          color: #fff;
        }
      </style>
       
    </head>
<body>

<%@ page import ="java.sql.*" %>
           



 <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
        <script type="text/javascript">
            // Load google charts
            google.charts.load('current', {'packages':['corechart']});
            google.charts.setOnLoadCallback(drawChart);
            var a1,a2,a3,a4,a5;
            <%! float c1=0; %>  
            <%! float c2=0; %> 
            <%! float c3=0; %> 
            <%! float c4=0; %> 
            <%! float c5=0; %> 
             <%  try
            {
            String dbDriver = "com.mysql.jdbc.Driver"; 
            String dbURL = "jdbc:mysql://localhost:3306/ncp?autoReconnect=true&useSSL=false"; 
            String dbUsername = "root"; 
            String dbPassword ="nagalakshmi"; 
            Class.forName(dbDriver); 
            Connection con = DriverManager.getConnection(dbURL,dbUsername,dbPassword);
            PreparedStatement stmt = con.prepareStatement("select sgpa from student_sgpa");
            System.out.println("hi");
            int rno;
            String sname;
            ResultSet rs=stmt.executeQuery();

            //float c2=0,c3=0,c4=0,c5=0;
           
           while(rs.next())
            {
            float temp=rs.getFloat(1);
            System.out.println(temp);
            if(temp>9.0 && temp<=10)
            {
            	c1++;
            }
            else if(temp>8.0 && temp<=9)
            {
            	c2++;
            }
            else if(temp>7.0 && temp<=8)
            {
            	c3++;
            }
            else if(temp>6.0 && temp<=7)
            {
            	c4++;
            }
            else if(temp>5.0 && temp<=6)
            {
            	c5++;
            }
            
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
           
             
            
            // Draw the chart and set the chart values
            function drawChart() {
              var a1=<%= c1%> ;
              var a2=<%= c2%> ;
              var a3=<%= c3%> ;
              var a4=<%= c4%> ;
              var a5=<%= c5%> ;
              var data = google.visualization.arrayToDataTable([
              ['SCPA_range', 'Count of students'],
              ['9-10', a1],
              ['8-9', a2],
              ['7-8', a3],
              ['6-7', a4],
              ['5-6', a5],
              
            ]);
            
              // Optional; add a title and set the width and height of the chart
              var options = {'title':'Whole Class Performance statistics in a Semester', 'width':550, 'height':400};
            
              // Display the chart inside the <div> element with id="piechart"
              var chart = new google.visualization.PieChart(document.getElementById('piechart'));
              chart.draw(data, options);
            }
            </script>

<div id="piechart">
  
</div>
<a href="studentdashboard.jsp" class="dashboard">Goto Dashboard</a>

</body>
</html>
