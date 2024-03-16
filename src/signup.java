/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import static java.lang.System.out;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author SATYANANDARAM_N
 */
public class signup extends HttpServlet {

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
            throws ServletException, IOException {
        
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
                        response.sendRedirect("index.html");
                  try ( PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
           // out.println("<title>Servlet db_add_books</title>");            
            out.println("</head>");
            out.println("<body>");
             out.println("<h5 style='color: green'><script  type='text/javascript'>window.location.href='index.html';\n" +
"    		alert('Wrong Email or Password Entered');\n" +
"                </script></h5>");
            
            //out.println("<h1>Servlet db_add_books at " + request.getContextPath() + "</h1>");
            //out.println(status);
            out.println("</body>");
            out.println("</html>");
        }
                       
                
                
                
                
                
                
                
                
                
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(signup.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(signup.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        
        response.setContentType("text/html;charset=UTF-8");
        /*try ( PrintWriter out = response.getWriter()) {
             TODO output your page here. You may use following sample code. 
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet LogIn</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet LogIn at " + request.getContextPath() + "</h1>");
          
                
            out.println("</body>");
            out.println("</html>");
        }*/
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