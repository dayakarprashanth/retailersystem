<%-- 
    Document   : update2
    Created on : 30 Oct, 2019, 1:33:29 PM
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

            String salem_id=request.getParameter("salem_id");
            String username=request.getParameter("username");
            String mail=request.getParameter("mail");
            String mobile=request.getParameter("mobile");
            String address=request.getParameter("address");
          
            Connection con=new DB().Connect();
            PreparedStatement ps=con.prepareStatement("update salemanager set mail='"+mail+"',phone='"+mobile+"',address='"+address+"' where salem_id='"+salem_id+"' and salem_name='"+username+"' ");
            ps.executeUpdate();
            System.out.println(ps);
            out.println("<script type=\"text/javascript\">"); 			
            out.println("alert(\"Sales Manager Updated Successfully\")");
            out.println("</script>"); 
            RequestDispatcher rd=request.getRequestDispatcher("addsalemreg.jsp");
            rd.include(request, response);
		}
        catch(Exception e){
            System.out.println(e);
        }

        %>

    </body>
</html>
