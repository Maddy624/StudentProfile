package student_profile;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DatabaseConnection {
	public static Connection initializeDatabase() 
	        throws SQLException , ClassNotFoundException
	    { 
	
	String dbDriver = "com.mysql.jdbc.Driver"; 
    String dbURL = "jdbc:mysql://localhost:3306/ncp?autoReconnect=true&useSSL=false"; 
    // Database name to access 
   
    String dbUsername = "root"; 
    String dbPassword ="nagalakshmi"; 
    
    
    
    	Class.forName(dbDriver); 
        Connection con = DriverManager.getConnection(dbURL, 
                                                     dbUsername,  
                                                     dbPassword);
        return con;
	    }
}