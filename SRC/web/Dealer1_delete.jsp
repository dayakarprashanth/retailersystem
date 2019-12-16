<%-- 
    Document   : Dealer1_delete
    Created on : 25 Oct, 2019, 11:24:59 AM
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
	Connection con=new DB().Connect();
	String did=request.getParameter("did");
	String dname=request.getParameter("dname");
	PreparedStatement ps=con.prepareStatement("update dealer_register set Status='In-Active' where dealer_id='"+did+"' and username='"+dname+"' ");
    ps.executeUpdate();
    System.out.println(ps);
	out.println("<script type=\"text/javascript\">"); 			
	out.println("alert(\"Dealer InActivated..\")");		
	out.println("</script>");		
	RequestDispatcher rd=request.getRequestDispatcher("dadd1.jsp");		
	rd.include(request, response);
	%>
    </body>
</html>
