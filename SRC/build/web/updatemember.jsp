package admin;
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
public class updatemember_action extends HttpServlet {
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try{
            String id=request.getParameter("id");
            String name=request.getParameter("name");
            String age=request.getParameter("age");
            String mail=request.getParameter("mail");
            String mobile=request.getParameter("mobile");
            String address=request.getParameter("address");
            Connection con=new DB().Connect();
            PreparedStatement ps=con.prepareStatement("update register set age='"+age+"',mail='"+mail+"',mobile='"+mobile+"',address='"+address+"' where id='"+id+"' and name='"+name+"' ");
            ps.executeUpdate();
            out.println("<script type=\"text/javascript\">"); 			
            out.println("alert(\"Member Updated Successfully\")");
            out.println("</script>"); 
            RequestDispatcher rd=request.getRequestDispatcher("AdminHome.jsp");
            rd.include(request, response);
        }
        catch(Exception e){
            System.out.println(e);
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
