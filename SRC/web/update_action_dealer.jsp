<%-- 
    Document   : update1
    Created on : 25 Oct, 2019, 11:44:08 AM
    Author     : ADMIN
--%>

<%@page import="java.sql.PreparedStatement"%>
<%@page import="db.DB"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
<% 
        try
        {
            String dealer_id=request.getParameter("dealer_id");
            String username=request.getParameter("username");
            String mail=request.getParameter("mail");
            String mobile=request.getParameter("mobile");
            String address=request.getParameter("address");
          
            Connection con=new DB().Connect();
            PreparedStatement ps=con.prepareStatement("update dealer_register set mail='"+mail+"',mobile='"+mobile+"',address='"+address+"' where dealer_id='"+dealer_id+"' and username='"+username+"' ");
            ps.executeUpdate();
            System.out.println(ps);
            out.println("<script type=\"text/javascript\">"); 			
            out.println("alert(\"Dealer Updated Successfully\")");
            out.println("</script>"); 
            RequestDispatcher rd=request.getRequestDispatcher("View_All_dealer.jsp");
            rd.include(request, response);
	}
        catch(Exception e){
            System.out.println(e);
        }

        %>
    </body>
</html>
