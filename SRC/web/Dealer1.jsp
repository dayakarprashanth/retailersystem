<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="java.sql.*,java.util.*"%>

<%
String username=request.getParameter("username");
String mobile=request.getParameter("mobile");
String mail=request.getParameter("mail");
String password=request.getParameter("password");

try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/retailer_system", "root", "root");
PreparedStatement st=conn.prepareStatement("insert into dealer_register(username,mobile,mail,password)values('"+username+"','"+mobile+"','"+mail+"','"+password+"')");;

int i=st.executeUpdate();
if(i>0)
{
	out.println("success"+i);
	
}
else
{
	out.println("error");
}

}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>