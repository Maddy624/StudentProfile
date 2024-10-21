package student_profile;

import java.io.*;  
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;  
import java.sql.*;
  
@WebServlet("/admincheck")
public class adminlogin extends HttpServlet
 {    
public void doPost(HttpServletRequest req, HttpServletResponse res)  
{
        try
		{  
        	PrintWriter out = res.getWriter();           
            
        	String use = req.getParameter("user_name");
        	String pas = req.getParameter("user_pass");
        	Class.forName("com.mysql.jdbc.Driver");

            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ncp?autoReconnect=true&useSSL=false","root","nagalakshmi");

            Statement stmt=con.createStatement();
            String sql = "select Name from adminlogin where Username='"+use+"' AND Password='"+pas+"'";
            ResultSet rs=stmt.executeQuery(sql);
            

            if(rs.next()) {
            
          
            	HttpSession session = req.getSession();
            	String a=rs.getString(1);
            	session.setAttribute("u", a);
            	res.sendRedirect("intoadmin.jsp");
            	}
            else {
            	System.out.println("nomatch");
            	HttpSession session = req.getSession();
            	session.setAttribute("u", "no");
            	res.sendRedirect("adminlogin.jsp");
            }

            con.close();
        
        }
		catch(Exception e)
		{
			System.out.println(e);
		}  
}   
  
}  