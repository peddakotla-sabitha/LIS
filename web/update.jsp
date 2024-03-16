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
     String id=request.getParameter("id");
     HttpSession s1=request.getSession();
     s1.setAttribute("id",id );
    
      %>
    <head>
        <meta charset="UTF-8">
      <meta name="viewport" content="width=device-width, initial-scale=1.0">

      <!--=============== REMIXICONS ===============-->
      <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/remixicon/3.4.0/remixicon.css" crossorigin="">

      <!--=============== CSS ===============-->
      <link rel="stylesheet" href="assets/css/styles.css">
      <link rel="stylesheet" href="assets/css/formstyles.css">
      <!--...............bootstrap cdn...............................-->
			<script src="https://kit.fontawesome.com/c4254e24a8.js" crossorigin="anonymous">	
			</script>
			<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" 	rel="stylesheet"                                   integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
			<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-                          geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>


      <title>update</title>
    </head>
    <body>
      <div class="bg_container">
 <img src='assets/img/lis_logo2.png' width="200px" height="100px" align="right">
 <form action="update_two.jsp" method="post">
     <div class="card align-items-left rounded place fields_left" style="width:760px;color:brown;font-weight: bold;background-color:blanchedalmond;" >
       
        

         <div class="card-body ">
         
                <!--.........................................book title........................................................-->

            Book name<input class=" mb-2 ms-4 mt-3 field_decor " type="text" placeholder="title" name="name" id="name"onkeyup="validateName()">
            <span id="nameError" class="form-text"></span><br>
            <!--.........................................book id........................................................-->
            
            
                 <!--.........................................Author........................................................-->

          Author <input class="field_decor mb-2 ms-5 mt-3 " type="text" placeholder="john.." name="author" id="author" onkeyup="validateAuthor()">
            <span id="authorError" class="form-text"></span><br>
               
                 <!--.........................................Branch........................................................-->

           Branch<input class="field_decor mb-2  ms-5 mt-3 " type="text" placeholder="computers" name="branch" id="branch" onkeyup="validateBranch()">
            <span id="branchError" class="form-text"></span><br>
            
           Rack No.<input class="field_decor mb-2 ms-4 mt-3" type="text" placeholder="CSE-25" name="rack" id="rack" onkeyup="validateEmail()">
            <span id="numberError" class="form-text"></span><br>
            
            No. of copies<input class="field_decor mb-2 ms-2 mt-3" type="number" placeholder="available copies" name="copies" id="copies">
            <span  class="form-text"></span><br>
	
                   <!--.........................................SubmitButton........................................................-->
                   <a href="viewbooks"  ><button class="btn mt-3 mb-2 w-100 " style="background-color: brown;color: white;font-weight: bold" id="unique" onclick="return validateForm()">Update</button></a>
              <span id="submitError" class="form-text"></span>
                
                 <!--.........................................Sign in through google........................................................
                 <p>or sign in with:</p>
                                   <div class="d-flex justify-content-center text-center mt-2 pt-1 mb-3">
                                   
                                <button class="btn btn-success w-75"><a href="#!" class="text-white"><i class="fa-brands fa-google"></i></a> &nbsp;&nbsp; Google</button>
                                    </div> -->

          </div>
     </div>
  </form>
     
</div>  
        
                <!--.........................................validating userdetails........................................................-->
                        
<script src='form_validation.js'></script>

      <!-- Sidebar bg -->
      <img src="assets/img/sidebar-bg.jpg" alt="sidebar img" class="bg-image">
    </body>
</html>
