/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package code;

import db.DB;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
public class viewsaleperson extends HttpServlet {
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
         try (PrintWriter out = response.getWriter()) {
   try {              
           String sid=request.getParameter("sid");
           String sname=request.getParameter("sname");
           String pass=request.getParameter("pass");
           String mail=request.getParameter("mail");
           String address=request.getParameter("address");
           String phone=request.getParameter("phone");
            System.out.println(sid);
            System.out.println(sname); 
            System.out.println(pass);
            System.out.println(mail);
            System.out.println(address);
            System.out.println(phone);
           Connection con=new DB().Connect();
           PreparedStatement ps=con.prepareStatement("insert into saleperson(person_id,person_name,pass,mail,address,phone)values('"+sid+"','"+sname+"','"+pass+"','"+mail+"','"+address+"','"+phone+"')");
           ps.executeUpdate();           
           System.out.println(ps);
           
           out.println("<script type=\"text/javascript\">"); 			
            out.println("alert(\"Sales person Added Successfully\")");
            out.println("</script>"); 
            RequestDispatcher rd=request.getRequestDispatcher("addsaleper.jsp");
            rd.include(request, response);
        }
        catch(Exception e){
            out.println("<script type=\"text/javascript\">"); 			
            out.println("alert(\"Please Try Again\")");
            out.println("</script>"); 
            RequestDispatcher rd=request.getRequestDispatcher("addsaleperson.jsp");
            rd.include(request, response);
        }
   
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
