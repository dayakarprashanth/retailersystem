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
public class sendrequest_manufacturer extends HttpServlet {
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try { 
             
           String dname=request.getParameter("dname");
           String did=request.getParameter("did");
           String disname=request.getParameter("disname");
           String type=request.getParameter("type");
           String quantity=request.getParameter("quantity");
           String date=request.getParameter("date");
        System.out.print(date);
           Connection con=new DB().Connect();
           PreparedStatement ps=con.prepareStatement("insert into orderreq(Dealer_name,Dealer_id,Distributor_name,Type,Quanlity,Date) values"
           		+ "('"+dname+"','"+did+"','"+disname+"','"+type+"','"+quantity+"','"+date+"')");
            System.out.println(ps);
            
           ps.executeUpdate();
           out.println("<script type=\"text/javascript\">"); 			
            out.println("alert(\"Item Ordered Successfully..Please wait for Confirmation..\")");
            out.println("</script>"); 
            RequestDispatcher rd=request.getRequestDispatcher("vieproduct1.jsp");
            rd.include(request, response);
        }
        catch(Exception e){
            out.println("<script type=\"text/javascript\">"); 			
            out.println("alert(\"Please Try Again\")");
            out.println("</script>"); 
            RequestDispatcher rd=request.getRequestDispatcher("vieproduct1.jsp");
            rd.include(request, response);
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
