<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>
<%@page import="db.DB"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
	Connection con=new DB().Connect();
	String did=request.getParameter("dealer_id");
	String dname=request.getParameter("username");
	PreparedStatement ps=con.prepareStatement("Update dealer_register set status='Authorized' where dealer_id='"+did+"' and username='"+dname+"' ");
    ps.executeUpdate();
    System.out.println(ps);
	out.println("<script type=\"text/javascript\">"); 			
	out.println("alert(\"Activated Successfuly\")");		
	out.println("</script>");		
	RequestDispatcher rd=request.getRequestDispatcher("View_All_dealer.jsp");		
	rd.include(request, response);
	%>
</body>
</html>