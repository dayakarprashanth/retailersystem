<%-- 
    Document   : updatee
    Created on : 30 Oct, 2019, 1:46:42 PM
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

            String person_id=request.getParameter("person_id");
            String username=request.getParameter("username");
            String mail=request.getParameter("mail");
            String mobile=request.getParameter("mobile");
            String address=request.getParameter("address");
            System.out.print(person_id);
            System.out.print(username);
            System.out.print(mail);
            System.out.println(mobile);
            System.out.print(address);
            
            Connection con=new DB().Connect();
            PreparedStatement ps=con.prepareStatement("update saleperson set mail='"+mail+"',phone='"+mobile+"',address='"+address+"' where person_id='"+person_id+"' and person_name='"+username+"' ");
            ps.executeUpdate();
            System.out.println(ps);
            out.println("<script type=\"text/javascript\">"); 			
            out.println("alert(\"sales Person Updated Successfully\")");
            out.println("</script>"); 
            RequestDispatcher rd=request.getRequestDispatcher("addsaleper.jsp");
            rd.include(request, response);
		}
        catch(Exception e){
            System.out.println(e);
        }

        %>
    </body>
</html>
