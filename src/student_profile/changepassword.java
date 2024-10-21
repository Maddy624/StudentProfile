package student_profile;

import java.io.*;  

import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;  
import java.sql.*;
  
@WebServlet("/changepass")
public class changepassword extends HttpServlet
 {    
public void doPost(HttpServletRequest req, HttpServletResponse res)  
{
        try
		{  
        	PrintWriter out = res.getWriter(); 
        	HttpSession session=req.getSession(); 
            
        	String uname=(String)session.getAttribute("user"); 
        	String pas = req.getParameter("password");
        	Class.forName("com.mysql.jdbc.Driver");

            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ncp?autoReconnect=true&useSSL=false","root","nagalakshmi");
            PreparedStatement ps=con.prepareStatement("update studentlogin set pwd=? where uname=?");
            ps.setString(1, pas);
            ps.setString(2, uname);
            
            int i=ps.executeUpdate();
            if(i>0) {
            

            	
            	
            	res.sendRedirect("studentdashboard.jsp");
            	}
            else {
            	//out.println("<script>alert('Oops! both the password do not match re enter again')</script>");
            	res.sendRedirect("changepassword.jsp");
            }

            con.close();
        
        }
		catch(Exception e)
		{
			System.out.println(e);
		}  
}   
  
}  