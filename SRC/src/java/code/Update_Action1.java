/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package code;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author ADMIN
 */
public class Update_Action1 extends HttpServlet {

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
  
    String a,b,c,d,e;
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
        	a=request.getParameter("username");
		b=request.getParameter("mobile");
		c=request.getParameter("mail");
		d=request.getParameter("password");
		e=request.getParameter("address");
		
		
		try 
		{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost/retailer_system","root","root");
			PreparedStatement query=con.prepareStatement("insert into distributor_register(username,mobile,mail,password,address)values('"+a+"','"+b+"','"+c+"','"+d+"','"+e+"')");
			query.executeUpdate();
			
			System.out.println("Success");
			
			PrintWriter out = response.getWriter();
			out.println("<script type=\"text/javascript\">"); 			
			out.println("alert(\"Succesfully Updated\")");

			out.println("</script>");
			
			RequestDispatcher rd=request.getRequestDispatcher("Edit_Profile.jsp");
			rd.include(request,response);

			
				
		}
		 	
		catch (ClassNotFoundException w) 
		{			
			w.printStackTrace();
		}
		catch (SQLException w) 
		{			
			w.printStackTrace();
		}

	}
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
