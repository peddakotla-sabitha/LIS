<%-- 
    Document   : signup
    Created on : 09-Jan-2024, 12:45:39 pm
    Author     : student
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <%
        String email=request.getParameter("email");
            String pwd=request.getParameter("pass");
            DBConnect dbc=new DBConnect();
            Connection con=null;
            Statement st=null;
            String query=null;
            ResultSet rs=null;
          
        try {
                con=dbc.setConnection();
                st=con.createStatement();
                query="select * from users_info";
                 rs=st.executeQuery(query);
                
                int flag=0;
                String un = null;
                String pw = null;
                String name = null;
                int id=0;
                
                while(rs.next()){
                    un=rs.getString("email");
                    pw=rs.getString("password");
                     name=rs.getString("Name");
                     id=rs.getInt("Library_id");
                    //String name1=rs.getString("name");
                    if(un.equals(email)&&pw.equals(pwd)){
                        flag++;
                        break;
                    }
                }
              if(flag>0){
                    HttpSession s1=request.getSession();
                    s1.setAttribute("vname",name );
                    s1.setAttribute("id",id );
                    
                 
                    if(un.equals("admin@gmail.com") && pw.equals("admin@123"))
                               response.sendRedirect("admin.html");
                    else if(un.equals("clerk@gmail.com") && pw.equals("clerk@123"))
                                response.sendRedirect("clerk.html");
                    else 
                               response.sendRedirect("user.jsp");
               }
                    else
                
                        %>
                         
                        <%--response.sendRedirect("index.html");--%>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         <script  type='text/javascript'>window.location.href='login.html';
    		alert('wrong email id or password entered');
                </script>
    </body>
</html>
