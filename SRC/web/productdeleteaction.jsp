<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@page import="java.sql.*"%>
<%@page import="db.DB"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>product delete</title>
</head>
<body>
<%
	Connection con=new DB().Connect();
	String pid=request.getParameter("pid");
	PreparedStatement ps=con.prepareStatement("delete from product where productid='"+pid+"' ");
    ps.executeUpdate();
    System.out.println(ps);
	out.println("<script type=\"text/javascript\">"); 			
	out.println("alert(\"Product Deleted Successfuly From Product List\")");		
	out.println("</script>");		
	RequestDispatcher rd=request.getRequestDispatcher("product2.jsp");		
	rd.include(request, response);
	%>
</body>
</html> 