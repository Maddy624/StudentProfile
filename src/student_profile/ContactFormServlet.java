package student_profile;

import java.io.PrintWriter;
import java.sql.PreparedStatement;
import java.util.Date;
import java.sql.*;

import javax.servlet.RequestDispatcher;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
//Servlet Name 
@WebServlet("/contact1")

public class ContactFormServlet  extends HttpServlet{
	public void doPost(HttpServletRequest req,HttpServletResponse res) 
	{
				 //creating submit button  
	   
		 try{  
			  
			    res.setContentType("text/html");  
			    String firstname=req.getParameter("first-name");
				String lastname=req.getParameter("last-name");
				String email=req.getParameter("email");
				Long  phoneno=Long.parseLong(req.getParameter("phone"));
				String message=req.getParameter("message");
				DatabaseConnection db=new DatabaseConnection();
				Connection conn=db.initializeDatabase();
				long millis=System.currentTimeMillis();  
				java.sql.Date date=new java.sql.Date(millis);  
				
				PreparedStatement stmt = conn.prepareStatement("insert into contact_form values(?,?,?,?,?,?)");
				stmt.setString(1,firstname);
				stmt.setString(2, lastname);
				stmt.setString(3, email);

       		    stmt.setLong(4,phoneno );
       		    stmt.setString(5,message);
       		    stmt.setDate(6, date);
       		    stmt.executeUpdate();
       	        System.out.println("hi");
       
       		    PrintWriter out = res.getWriter(); 
       		    
       		  
       		  
       		     
       		  RequestDispatcher rd=req.getRequestDispatcher("contact.html");
       	      rd.include(req, res);
       		  out.print("<script>alert('Thank You For Contacting us!!')</script>" );  
       		  
       		   
       		          
       		    out.close(); 

			  
			  
			   
			          
			      
			  
			        }catch(Exception e){System.out.println(e);}  
			  }  
		

}
