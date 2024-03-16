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
    HttpSession s1=request.getSession();
    String email=(String) s1.getAttribute("email");
     String name=request.getParameter("usr");
    
     String password=request.getParameter("pwd");
     String dropdown=request.getParameter("dropdown");
     String mobileno=request.getParameter("mblno");
      String address=request.getParameter("address");
        int status = 0;
        
         try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/lis","root","Sabi@319");
             Statement st = conn.createStatement();
             String query="update users_info set Name='"+name+"',password='"+password+"',category='"+dropdown+"',MobileNumber='"+mobileno+"',Address='"+address+"' where email='"+email+"'";
              status = st.executeUpdate(query);
            // PreparedStatement st=conn.prepareStatement(query);
            // st.setString(1, id);
             
          //  status=st.executeUpdate();
           if(status==1)
            {
                     response.sendRedirect("manage_users");


            }
         
       

    }catch(Exception e){
        
        }
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
    
    </body>
</html>

