<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.* "%>
<%
String username=request.getParameter("username");
try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/retailer_system", "root", "root");
Statement st=conn.createStatement();
int i=st.executeUpdate("Delete from dealer_register WHERE username='"+username+"' ");
out.println("Data Deleted Successfully!"+i);
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>