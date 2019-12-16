<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.* "%>
<%
String did=request.getParameter("id");
try
{
    Class.forName("com.mysql.jdbc.Driver");
    Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/retailer_system", "root", "root");
    Statement st=conn.createStatement();
    int i=st.executeUpdate("update distributor_register set status='In-Active' WHERE id='"+did+"' ");
    out.println("<script type=\"text/javascript\">"); 			
    out.println("alert(\"Distributor In-Activated\")");		
    out.println("</script>");		
    RequestDispatcher rd=request.getRequestDispatcher("productlist1.jsp");		
    rd.include(request, response);
}
catch(Exception e)
{
    System.out.print(e);
    e.printStackTrace();
}
%>