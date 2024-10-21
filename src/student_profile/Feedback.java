package student_profile;
import java.io.*;  
import javax.servlet.RequestDispatcher;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*; 
import java.sql.*;
//Servlet Name 
@WebServlet("/feedbackservlet")
public class Feedback extends HttpServlet
{
	public void doPost(HttpServletRequest request, HttpServletResponse response){  
	    try{  
	  
	    response.setContentType("text/html");  
	    PrintWriter out = response.getWriter();  
	    
	    System.out.println("Hello");
	    
	    String rate = request.getParameter("experience");  
	    String comments = request.getParameter("comments");
	    String name = request.getParameter("name");
	    String email = request.getParameter("email");
	    
	    DatabaseConnection db=new DatabaseConnection();
		Connection con=db.initializeDatabase();
	      
	    PreparedStatement ps=con.prepareStatement("insert into Feedback values(?,?,?,?)");  
	      
	    ps.setString(1,name);  
	    ps.setString(2,email);  
	    ps.setString(3,rate);  
	    ps.setString(4,comments);  
	              
	    int i=ps.executeUpdate();  
	    if(i>0)  {
	      RequestDispatcher rd=request.getRequestDispatcher("formpage.html");
 	      rd.include(request, response);
 		  out.print("<script>alert('Thank You For your Feedback ')</script>" ); 
	    }}
	    catch(Exception e)
	    {
	    	System.out.println(e);
	    }  
	  
	}
}
