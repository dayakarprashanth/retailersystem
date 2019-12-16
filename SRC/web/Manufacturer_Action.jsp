<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>
<%
    String name=request.getParameter("name");
    String pass=request.getParameter("pass");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/retailer_system", "root", "root");
    PreparedStatement ps22=con.prepareStatement("select * from manufacturer where username='"+name+"' and password='"+pass+"' ");
    ResultSet rs = ps22.executeQuery();
    if(rs.next())
    {
    session.setAttribute("name",name);
    out.println("<script>"
            +"alert('Manufacturer Login to the Account')"
            +"</script>");
    RequestDispatcher rd=request.getRequestDispatcher("Manufacturer_Home.jsp");
    rd.include(request, response); 
    }
    else
    {
    out.println("<script>"
            +"alert('Invalid Username & Password')"
            +"</script>");
    RequestDispatcher rd=request.getRequestDispatcher("index.jsp");
    rd.include(request, response); 
    }
%>