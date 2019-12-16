/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package code;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileItemFactory;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import db.DB;import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author ADMIN
 */
public class Item_add_action extends HttpServlet {

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
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
         try { 
             
           String Product_ID=request.getParameter("Product_ID");
           String Door_Type=request.getParameter("Door_Type");
           String Door_frame=request.getParameter("Door_frame");
           String Door_width=request.getParameter("Door_width");
           String Door_panel=request.getParameter("Door_panel");
           String Door_handling=request.getParameter("Door_handling");
           String Door_assmebly=request.getParameter("Door_assmebly");
           String Door_unit_finish=request.getParameter("Door_unit_finish");
           String Door_glass_type=request.getParameter("Door_glass_type");
           String Door_glass_design=request.getParameter("Door_glass_design");
           String Door_glass_coating=request.getParameter("Door_glass_coating");
           String Door_glass_thickness=request.getParameter("Door_glass_thickness");
           String Door_handle=request.getParameter("Door_handle");
           String Door_handle_color=request.getParameter("Door_handle_color");
           String Door_lock=request.getParameter("Door_lock");
           String Door_frame_thickness=request.getParameter("Door_frame_thickness");
           String predill=request.getParameter("predill");
           Connection con=new DB().Connect();
           PreparedStatement ps=con.prepareStatement("insert into product(Product_ID,Door_Type,Door_frame,Door_width,Door_panel,Door_handling,Door_assmebly,Door_unit_finish,Door_glass_type,Door_glass_design,Door_glass_coating,Door_glass_thickness,Door_handle,Door_handle_color,Door_lock,Door_frame_thickness,predill) values"
           		+ "('"+Product_ID+"','"+Door_Type+"','"+Door_frame+"','"+Door_width+"','"+Door_panel+"','"+Door_handling+"',"
           				+ "'"+Door_assmebly+"','"+Door_unit_finish+"','"+Door_glass_type+"','"+Door_glass_design+"','"+Door_glass_coating+"','"+Door_glass_thickness+"','"+Door_handle+"','"+Door_handle_color+"','"+Door_lock+"','"+Door_frame_thickness+"','"+predill+"')");
           ps.executeUpdate();
           System.out.println(ps);
           out.println("<script type=\"text/javascript\">"); 			
            out.println("alert(\"Item Added Successfully\")");
            out.println("</script>"); 
            RequestDispatcher rd=request.getRequestDispatcher("Manufacturer_Home.jsp");
            rd.include(request, response);
        }
        catch(Exception e){
            out.println("<script type=\"text/javascript\">"); 			
            out.println("alert(\"Please Try Again\")");
            out.println("</script>"); 
            RequestDispatcher rd=request.getRequestDispatcher("product.jsp");
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
