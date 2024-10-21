<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
 <%@ page import="javax.servlet.http.*,javax.servlet.*,java.sql.*" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <title>Registration</title>

    <meta charset="utf-8">

    <link rel="stylesheet" href="final.css">

    <meta name="viewport" content="width=device-width, initial-scale=1">
    
    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

    <!-- jQuery library -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

    <!-- Popper JS -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    
    <!-- Latest compiled JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
  </head>
  <body class="fluid-container bg-secondary">
    <div class="container bg-dark">
      <h2>Add Student</h2>
      <form name="register" action="newstd" method="POST">
        
        <div class="form-group">
          <label for="fname">First Name:</label>
          <input type="text" class="form-control" id="fname" name="fname" pattern="^[A-Z][a-z]+" placeholder="First name" title="Enter First as capital letter followed by small letters(exclude numbers and specialcharacters except space)" required>
        </div>

        <div class="form-group">
          <label for="lname">Last Name:</label>
          <input type="text" class="form-control" id="lname" name="lname" pattern="^[A-Z][a-z]+" placeholder="Last name" title="Enter First as capital letter followed by small letters(exclude numbers and specialcharacters except space)" required>
        </div>
        
        <div class="form-group">
          <label for="fathername">Last Name:</label>
          <input type="text" class="form-control" id="fathername" name="fathername" pattern="^[A-Z][a-z]+" placeholder="Father name" title="Enter First as capital letter followed by small letters(exclude numbers and specialcharacters except space)" required>
        </div>
        
        <div class="form-group">
          <label for="sex">Sex:</label>
          <input type="radio" name="sex" value="male" size="10" >Male
          <input type="radio" name="sex" value="Female" size="10" >Female
        </div>
        
         <div class="form-group">
            <label for="Objective">Objective:</label>
            <input type="text" name="obj" class="form-control"  required>
        </div>
        <table>
                        <tr>
                          
                            <th>Education</th>
                            <th>Course</th>
                            <th>Institution</th>
                            <th>period</th>
                            <th>Marks</th>
                            
                        </tr>

                        <tr>
                            
                            <td>Degree</td>
                            <td><input type="text" name="cbtech"></td>
                            <td><input type="text" name="ibtech"></td>
                            <td><input type="text" name="pbtech"></td>
                            <td><input type="text" name="perbtech"></td>
                        </tr>

                        <tr>
                            
                            <td>Higher Secondary Education</td>
                            <td><input type="text" name="cinter"></td>
                            <td><input type="text" name="iinter"></td>
                            <td><input type="text" name="pinter"></td>
                            <td><input type="text" name="perinter"></td>
                        </tr>

                        <tr>
                            
                            <td>Secondary Education</td>
                            <td><input type="text" name="ctenth"></td>
                            <td><input type="text" name="itenth"></td>
                            <td><input type="text" name="ptenth"></td>
                            <td><input type="text" name="pertenth"></td>
                        </tr>

         
 <div class="form-group">
            <label for="email">Email address:</label>
            <input type="text" class="form-control" id="email" name="emailid" pattern="^(([-\w\d]+)(\.[-\w\d]+)*@([-\w\d]+)(\.[-\w\d]+)*(\.([a-zA-Z]{2,5}|[\d]{1,3})){1,2})$" aria-describedby="emailHelp" placeholder="Enter email" title="Your email address" required>
            <small id="emailHelp" class="form-text">We'll never share your email with anyone else.</small>
        </div>

        <div class="form-group">
            <label for="DOB">Birth Date:</label>
            <input type="text" class="form-control" id="DOB" name="dob" required>
        </div>


        <div class="form-group">
            <label for="Username">Username:</label>
            <input type="text" class="form-control" id="Username" name="uname" required>
        </div>
       

        <div class="form-group">
            <label for="password">Password:</label>
            <input type="password" class="form-control" id="password" name="pass" required>
        </div>


        <div class="form-group">
            <label for="address">Contact Address:</label>
            <textarea class="form-control" id="address" name="Address" rows="5" placeholder="Mention permanent address" title="Enter your permanent address" required></textarea>
        </div>
        
        <div class="form-group">
            <label for="mobileno">Contact Number:</label>
            <input type="text" class="form-control" id="mobileno" name="mobileno" placeholder="Mobile no" title="Enter your mobile number" required>
        </div>
        
      

        <button type="submit" class="btn btn-outline-light btn-md">Register</button>
      </form>
    </div>

  </body>
</html>
