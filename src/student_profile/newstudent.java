package student_profile;

import java.io.*;  
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;  
import java.sql.*;
  

@WebServlet("/newstd")


public class newstudent extends HttpServlet
{    
public void doPost(HttpServletRequest req, HttpServletResponse res)  
{
       try
		{  
       	PrintWriter out = res.getWriter();           
           
       	String firstname=req.getParameter("fname");
       	String un=req.getParameter("uname");
       	String pas=req.getParameter("pass");
       	String ob=req.getParameter("obj");
		String lastname=req.getParameter("lname");
		String fathername=req.getParameter("fathername");
		String se=req.getParameter("sex");
		String add=req.getParameter("Address");
		String cth=req.getParameter("ctenth");
		String ith=req.getParameter("itenth");
		String pth=req.getParameter("ptenth");
		String perth=req.getParameter("pertenth");
		String ctw=req.getParameter("cinter");
		String itw=req.getParameter("iinter");
		String ptw=req.getParameter("pinter");
		String pertw=req.getParameter("perinter");
		String cbt=req.getParameter("cbtech");
		String ibt=req.getParameter("ibtech");
		String pbt=req.getParameter("pbtech");
		String perbt=req.getParameter("perbtech");
		String em=req.getParameter("emailid");
		String db=req.getParameter("dob");
		Long  phoneno=Long.parseLong(req.getParameter("mobileno"));
       	//out.print("insert into register values ('"+fn+"','"+ln+"','"+reg+"','"+usern+"','"+passw+"','"+passw+"','"+dob+"','"+phno+"','"+lia+"')");
       	Class.forName("com.mysql.jdbc.Driver");

           Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ncp?autoReconnect=true&useSSL=false","root","nagalakshmi");

           Statement stmt=con.createStatement();
           
         
           String sql1 = "insert into newstudent values ('"+firstname+"','"+un+"','"+pas+"','"+ob+"','"+lastname+"','"+fathername+"','"+se+"','"+add+"','"+cth+"','"+ith+"','"+pth+"','"+perth+"','"+ctw+"','"+itw+"','"+ptw+"','"+pertw+"','"+cbt+"','"+ibt+"','"+pbt+"','"+perbt+"','"+em+"','"+db+"','"+phoneno+"')";
           String sql2 = "insert into studentlogin values ('"+un+"','"+pas+"')";
           stmt.executeUpdate(sql1);
           stmt.executeUpdate(sql2);
           System.out.println("inserted");
           res.sendRedirect("intoadmin.jsp");
           con.close();
 // String sql = "insert into newstudent values ('"+firstname+"','"+un+"','"+pas+"','"+ob+"','"+lastname+"','"+fathername+"','"+se+"','"+add+"','"+cth+"','"+ith+"','"+pth+"','"+perth+"','"+ctw+"','"+itw+"','"+ptw+"','"+pertw+"','"+cbt+"','"+ibt+"','"+pbt+"','"+perbt+"','"+em+"','"+db+"','"+phoneno+"')";
           
           //stmt.executeUpdate(sql);

       
       }
		catch(Exception e)
		{
			System.out.println(e);
		}  
}   
 
}

