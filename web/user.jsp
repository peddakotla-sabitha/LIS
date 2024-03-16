<%-- 
    Document   : userr
    Created on : 27-Dec-2023, 11:21:37 am
    Author     : student
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <title>User page</title>
        <meta charset="UTF-8">
        <link rel="stylesheet" type="text/css" href="style1.css">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>
      
      
     
        <script src="https://kit.fontawesome.com/b8338f3995.js" crossorigin="anonymous"></script>
 <style>
     .topright {
  position: absolute;
  top: 8px;
  right: 50px;
  font-size: 18px;
     }
       
.one{
          
  padding-top: 100px;
  padding-left: 100px;
  padding-right: 250px;
  padding-bottom: 50px;
 
  }
  .second{
          
  padding-top: 100px;
  padding-left: 100px;
  padding-right: 100px;
  padding-bottom: 50px;
  color:black;
 
  }
  

.accordion {
  background-color: #eee;
  color: #444;
  cursor: pointer;
  padding: 18px;
  width: 100%;
  border: none;
  text-align: left;
  outline: none;
  font-size: 15px;
  transition: 0.4s;
  border-radius:10px;
  background-color: seashell!important;
  
  
}


.active, .accordion:hover {
  background-color: #ccc;
}

.panel {
  padding: 0 18px;
  background-color: white;
  max-height: 0;
  overflow: hidden;
  transition: max-height 0.2s ease-out;
  border-radius:10px;
  color:black;
}
.toprightt {
  position: absolute;
  top: 500px;
  right: 50px;
  font-size: 18px;
}
</style>
 </head>
 
    <body style="background-image:url(vani_img/library8.jpeg);background-size:cover;height:2vh;">
        
      
       
        
        <div class="one">
            <div class="me-5">
              <% HttpSession s1=request.getSession();
        String name=(String) s1.getAttribute("vname");
       int id=(int) s1.getAttribute("id");
        
            %>
            <h3 class="bg-warning text-outline-dark"><% out.println("Welcome "+name);%></h3>
             <div class="topright">
                 <mark>Your ID:<% out.println(id);%></mark>
         </div>
         
            <div class="toprightt">
             <a href="request.html" class=" text-decoration-none"><button class="btn btn-outline-light text-dark mt-3 ms-5 mb-3 bg-info" align="right" >Request Book</button></a>
         </div>
       
            </div>
            <div style="color:white;font-family:sans-serif">
                Accelerating research discovery to shape a better future
            </div>
            
           
            <p style="font-size:3em;color:aquamarine" class="mb-5">
                <b >Today's research, tomorrow's <br> innovation</b>
            </p>
            <form action="search" method="post">
            <div class="input-group">
		
		<input type="search" class="form-control fa-solid" width="0.2em" name="search" placeholder="search"   ><br>
                <span class="input-group-text"><i class="fa fa-search"></i></span>
            </div>
            </form>
        </div>
        
       
        
        
<div class="second">       
    <div style="font-size:30px;color:greenyellow"><b>Choose Your Category</b></div>
     <br>
    <button class="accordion mb-2" style="font-weight: bold;"> Post Graduate</button>
<div class="panel mb-1" style="background-color:blanchedalmond;">
    
    <a href="m_arts.jsp" style="text-decoration:none;color:crimson;">Master of Arts</a><br>
    <a href="m_science.jsp" style="text-decoration:none;color:crimson">Master of Science</a><br>
    <a href="business.jsp" style="text-decoration:none;color:crimson">Master of business administration</a> <br>
    
</div>

    <button class="accordion mb-2" style="font-weight: bold; color:brown">Student</button>
<div class="panel mb-1" style="background-color:blanchedalmond">
   
    <a href="cse.jsp" style="text-decoration:none;color:crimson">Computer Science and Information Technology</a><br>
    <a href="ece.jsp" style="text-decoration:none;color:crimson">Electronic and Communication Engineering</a><br>
    <a href="civil.jsp" style="text-decoration:none;color:crimson">Civil Engineering</a><br>
    <a href="mech.jsp" style="text-decoration:none;color:crimson">Mechanical Engineering</a><br>
 <!--   <a href="" style="text-decoration:none;color:black">Chemical Engineering</a><br>
    <a href=""#" style="text-decoration:none;color:black"> Metallurgical and materials Engineering</a><br>-->
  
</div>
    

    <button class="accordion mb-2" style="font-weight: bold;">Researchers</button>

 <div class="panel mb-1" style="background-color:blanchedalmond;">
<!-- <a href="" style="text-decoration:none;color:black">Cyber Security</a><br> -->
<a href="psychology.jsp" style="text-decoration:none;color:crimson;">Psychology<br></a>
<!-- <a href="" style="text-decoration:none;color:black"></a>Biotechonolgy<br> -->
<a href="agriculture.jsp" style="text-decoration:none;color:crimson">Agriculture<br></a>
  </div> 
 
    <button class="accordion mb-2" style="font-weight: bold;color:brown">Faculty</button>
<div class="panel mb-1" style="background-color:blanchedalmond;">
  
 <a href="cse.jsp" style="text-decoration:none;color:crimson">Computer Science and Information Technology</a><br>
    <a href="ece.jsp" style="text-decoration:none;color:crimson">Electronic and Communication Engineering</a><br>
    <a href="civil.jsp" style="text-decoration:none;color:crimson">Civil Engineering</a><br>
    <a href="mech.jsp" style="text-decoration:none ;color:crimson">Mechanical Engineering</a><br>
    <!-- <a href=""#" style="text-decoration:none;color:black">Chemical Engineering</a><br>
    <a href=""#" style="text-decoration:none ;color:black"> Metallurgical and materials Engineering</a><br> -->
 
</div>
</div>

<script>
var acc = document.getElementsByClassName("accordion");
var i;

for (i = 0; i < acc.length; i++) {
  acc[i].addEventListener("click", function() {
    this.classList.toggle("active");
    var panel = this.nextElementSibling;
    if (panel.style.maxHeight) {
      panel.style.maxHeight = null;
    } else {
      panel.style.maxHeight = panel.scrollHeight + "px";
    } 
  });
}
</script>
 <div class="container-fluid" >
        
<div class="row"   >
  <div class="col-2">
     <div class="card" >
	<img src="vani_img/se.jpeg" class="card-img-top" alt="not available" height="250">
     	<div class="card-body">
	   <h6 class="card-title">Software Engineering </h6>
          </div>
      </div>
   </div> 

  <div class="col-2" >
     <div class="card" >
	<img src="vani_img/ds.jpeg" class="card-img-top" alt="not available" height="250">
     	<div class="card-body">
	   <h6 class="card-title">Data Stuctures</h6>
           <br>
           
       </div>
      </div>
   </div>
  <div class="col-2"  >
     <div class="card" >
	<img src="vani_img/gate1.jpeg" class="card-img-top" alt="not available" height="250">
     	<div class="card-body">
	   <h6class="card-title">Gate 2023</h6>
           <br>
           <br>
	</div>
      </div>
   </div>
  <div class="col-2">
     <div class="card" >
	<img src="vani_img/ana.webp" class="card-img-top" alt="not available" height="250" >
     	<div class="card-body">
	   <h6 class="card-title"> Micro Electronics</h6>
	   <div class="card-text"><b> </b></div>
           <br>
           
	</div>
      </div>
   </div>
    <div class="col-2">
     <div class="card" >
	<img src="vani_img/ag3.jpeg" class="card-img-top" alt="not available" height="250" >
     	<div class="card-body">
	   <h6 class="card-title">Teasure of Agriculture </h6>
	   <div class="card-text"></div>
	</div>
      </div>
   </div>
    <div class="col-2">
     <div class="card" >
	<img src="vani_img/bt1.jpg" class="card-img-top" alt="not available" height="250" >
     	<div class="card-body">
	   <h6 class="card-title">Biotechnology </h6>
	   <div class="card-text"><br></div>
	</div>
      </div>
   </div>
   
</div>
      <br>
    <br>
    <br>
    <center> <button type="button" class="btn btn-outline-primary">Browse More</button></center>
    <hr style="color:white; height:30px">
    <p style="font-size:19"><b> Library Information System </b></p>   
     
            
    <
</body>
</html>
