<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@page import="db.DB"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%

      try
{          String sno=request.getParameter("id");  
           String name=request.getParameter("disname");
           Connection con=new DB().Connect();
           PreparedStatement ps=con.prepareStatement("update placeorder set status ='Forwaded',confrimed_by='"+name+"' Where id='"+sno+"' "); 
            
           ps.executeUpdate();
            System.out.println(ps);
           out.println("<script type=\"text/javascript\">"); 			
            out.println("alert(\"Order Confirmed Successfully\")");
            out.println("</script>"); 
            RequestDispatcher rd=request.getRequestDispatcher("order1.jsp");
            rd.include(request, response);
        }
        catch(Exception e){
            out.println("<script type=\"text/javascript\">"); 			
            out.println("alert(\"Please Try Again\")");
            out.println("</script>"); 
            RequestDispatcher rd=request.getRequestDispatcher("order1.jsp");
            rd.include(request, response);
        }
            %>
</body>
</html>