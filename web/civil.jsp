<%-- 
    Document   : civil
    Created on : 22-Dec-2023, 7:49:36 pm
    Author     : student
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <%
        try{
        Class.forName("com.mysql.cj.jdbc.Driver");
        
        Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/lis","root","Sabi@319");
         Statement st=conn.createStatement();
         ResultSet result=st.executeQuery("select * from books_info where Branch='CIVIL'");
         %>
         <div class="topright">
             <a href="request.html" class="text-light text-decoration-none"><button class="btn btn-outline-light  mt-3 ms-5  mb-3 bg-info " align="right" >Request Book</button></a>
         </div>
         <%  
            while(result.next()){
              %>     
             
                  <%--<% out.println(result.getString("BookImg"));%>--%>
                <div class="third">
                    <div class="card width-20 ">
                        <div class="card-img-top d-flex align-items-center" style="background-color:white;">
                         <div>
                         <img class="img-fluid" src="vani_img/ci1.jpeg" alt="Card image cap">
                        </div>
                             <!--<h5 class="card-title"> </h5>-->
                            <p class="col" >
                    
                         
                            <div style="padding-left:4px ;padding-bottom: 10px;"><b> Name:</b>  <%out.println(result.getString("BookName"));%><br>             
                                
                               <b> ISBN:</b>  <%out.println( result.getString("ISBN"));%> <br>
                  
                               <b>  Author Name:</b> <%out.println(result.getString("AuthorName"));%><br>
                 
                              <b>Branch:</b><%out.println(result.getString("Branch"));%><br>
                  
                                <b> Rack No.:</b><%out.println(result.getString("RackNumber"));%><br>
                
                                <b>No.of copies:</b><%out.println(result.getString("Copies"));%><br>
                           
                    </p>
                           
                 </div>
                         <div class="card-body">
       
        <p class="card-text">
         </p>
    </div>
</div>
</div><br>
                    
            
                     
        <%}}catch(Exception e){
        
        }
    %>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <title>TODO supply a title</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>
        <style>
         .third{
         margin-top:100px;
         }
        
        .card{
         margin-left:60px;
         
         margin-right:100px;
        }
        topright {
  position: absolute;
  top: 8px;
  right: 50px;
  font-size: 18px;
}
    </style>
    </head>
    <body style="background-image:url(vani_img/library8.jpeg);background-size:cover;height:2vh;">
        
        <h1>Hello World!</h1>
    </body>
</html>
