<%-- 
    Document   : manage_Activate
    Created on : 31 Oct, 2019, 3:44:55 PM
    Author     : ADMIN
--%>

<%@page import="db.DB"%>
<%@page import="java.sql.PreparedStatement"%>
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
	PreparedStatement ps=con.prepareStatement("update salemanager set status='Active' where salem_id='"+did+"' and salem_name='"+dname+"' ");
        ps.executeUpdate();
        System.out.println(ps);
	out.println("<script type=\"text/javascript\">"); 			
	out.println("alert(\"Activated Successfuly\")");		
	out.println("</script>");		
	RequestDispatcher rd=request.getRequestDispatcher("addsalemreg.jsp");		
	rd.include(request, response);
	%>
    </body>
</html>
