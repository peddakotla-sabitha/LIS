/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
import java.sql.*;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author yugandar
 */
public class signin extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException 
    {
        response.setContentType("text/html;charset=UTF-8");
        String name = request.getParameter("usr");
        String email = request.getParameter("email");
        String password = request.getParameter("pwd");
        String rePassword = request.getParameter("cpwd");
        String selectedOption = request.getParameter("dropdown");
        String mobileNumber = request.getParameter("mblno");
        String address = request.getParameter("address");
        
        
        
        int status =0;
        
        try{
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/lis","root","Sabi@319");
            Statement st = conn.createStatement();
            //String query = "insert into user_info values('"+name+"','"+email+"','"+password+"','"+selectedOption+"','"+mobileNumber+"','"+address+"');";
             String query = "insert into users_info(Name,email,password,category,MobileNumber,Address) values('"+name+"','"+email+"','"+password+"','"+selectedOption+"','"+mobileNumber+"','"+address+"');";
            status = st.executeUpdate(query);
      
            if(status==1)
            {
                  HttpSession s1=request.getSession();
                    s1.setAttribute("vname",name );
                       
                response.sendRedirect("login.html");
            }
            
            if(status==0) 
            {
                  response.sendRedirect("index.html");
            }
        }
        catch(ClassNotFoundException | SQLException ex){
            Logger.getLogger(signin.class.getName()).log(Level.SEVERE, null, ex);
        }
        try ( PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet signin</title>");            
            out.println("</head>");
            out.println("<body>");
           // out.println("<h1>Servlet signin at " + request.getContextPath() + "</h1>");
           
           // out.println(status);
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
