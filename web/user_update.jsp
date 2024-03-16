<%-- 
    Document   : update
    Created on : 08-Jan-2024, 7:12:38 pm
    Author     : student
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <%
     String email=request.getParameter("email");
     HttpSession s1=request.getSession();
     s1.setAttribute("email",email);
    
      %>
    <head>
      <style>
            .card{
                margin-left:50em;
            }
            .container{
                display:grid;
                place-items: left;
                height:10em;
                
                
            }
         
         </style>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <script src="https://kit.fontawesome.com/b8338f3995.js" crossorigin="anonymous"></script>
        <link rel="stylesheet" type="text/css" href="style1.css">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>
    </head>
   <body style="background-image:url(book.jpg);background-size:cover;height:2vh;">
       
     
	    <div class="card   text-center mt-5 align-items-center d-flex "  style="width:500px;background:#ffe6e6">
		
		<div class="card-body">
			<form action="user_update_two.jsp" method="post">
				<div class="input-group mb-3">
					<span class="input-group-text"><i class="fa-solid fa-user"></i></span>
					<input type="text" class="form-control" width="50px" name="usr" placeholder="username" id="user"   onkeyup="validatename()" size="20" ><br>
					
				</div>
				

				<div class="input-group  ">
					<span class="input-group-text"><i class="fa-solid fa-lock"></i></span>
					<input type="password" class="form-control" width="50px" name="pwd" placeholder="password" id="pass"   onkeyup="validatepwd()"><br>
				</div>
				
                                
                                <div class="input-group ">
                                     <select class="form-select" id="category" name="dropdown">
                                     
                                     <option value="Graduate">Graduate</option>
                                     <option value="Post-Graduate">Post-Graduate</option>
                                     <option value="Reasearch-scholar">Reasearch-scholar</option>
                                     <option value="Faculty">Faculty</option>
                                     </select>
                                     <label class="input-group-text" for="inputGroupSelect02">Category</label>
                                </div>
                                <span id="cat-error" class="form-text"></span><br>
                                
                                <div class="input-group ">
					<span class="input-group-text"><i class="fa-solid fa-mobile"></i></span>
					<input type="text" class="form-control" width="50px" name="mblno" placeholder="Mobile Number" id="mbl" 						  onkeyup="validatename()" size="20" ><br>
					
				</div>
                                <div class="mt-3">
                                    <label for="addr" class="form-label" style="text-align:left;"><b>Address:</b></label>
                                     <textarea class="form-control" id="address" name="address" rows="2"></textarea>
                                </div>  


				
                                <button class="btn btn-primary mt-2 mb-3" onclick=" return validateform()" name="signup">update</button>
				<span id="formerror" class="form-text"></span><br>
				
				
			</form>	
		     </div>
	     </div>
       
    </body>
</html>
