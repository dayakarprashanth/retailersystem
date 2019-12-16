<%-- 
    Document   : ordercon1
    Created on : 31 Oct, 2019, 3:16:24 PM
    Author     : ADMIN
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="code.mail"%>
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
           String sno=request.getParameter("id");
           String sname=request.getParameter("sname");
           String dname=request.getParameter("dname");
           String ss=sname+"/"+"SalesManager";
           Connection con=new DB().Connect();
           PreparedStatement ps=con.prepareStatement("update placeorder set status ='Accepted',confrimed_by='"+ss+"' Where id='"+sno+"'  "); 
            ps.executeUpdate();
            System.out.println(ps);
            PreparedStatement p=con.prepareStatement("select * from distributor_register where username='"+dname+"' ");
            ResultSet r=p.executeQuery();
            System.out.println(p);
            if(r.next()){
                String email=r.getString("mail");
                System.out.println(email);
                mail m=new mail(); 
                String subject="Encryption Password";
                String message="Your Order Has Been Confirmed";
                m.sendFromGMail("otpmessenger", "qawsedrftg",email, subject,message);
                System.out.println(email);
            }
           out.println("<script type=\"text/javascript\">"); 			
            out.println("alert(\"Order confirmed Successfully\")");
            out.println("</script>"); 
            RequestDispatcher rd=request.getRequestDispatcher("viewconreq1.jsp");
            rd.include(request, response);
        }
        catch(Exception e){
            out.println("<script type=\"text/javascript\">"); 			
            out.println("alert(\"Please Try Again\")");
            out.println("</script>"); 
            RequestDispatcher rd=request.getRequestDispatcher("viewconreq1.jsp");
            rd.include(request, response);
        }
            %>
    </body>
</html>
