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
           String dname=request.getParameter("dname");
           String type=request.getParameter("type");
           String did=request.getParameter("did");
           Connection con=new DB().Connect();
           PreparedStatement ps=con.prepareStatement("update placeorder set status ='Accepted',confrimed_by='Manufacturer' Where id='"+sno+"'  "); 
            System.out.println(ps);
            ps.executeUpdate();
            if(type.equalsIgnoreCase("direct")){
                PreparedStatement p=con.prepareStatement("select * from dealer_register where dealer_id='"+did+"' ");
                ResultSet r=p.executeQuery();
                System.out.println(p);
                if(r.next()){
                    String email=r.getString("mail");
                    System.out.println(email);
                    mail m=new mail(); 
                    String subject="Order Confirmation";
                    String message="Your Order Has Been Confirmed";
                    m.sendFromGMail("otpmessenger", "qawsedrftg",email, subject,message);
                    System.out.println(email);
                }
            out.println("<script type=\"text/javascript\">"); 			
            out.println("alert(\"confirmed Successfully\")");
            out.println("</script>"); 
            RequestDispatcher rd=request.getRequestDispatcher("viewconreq.jsp");
            rd.include(request, response);
           }
            else{
                PreparedStatement p=con.prepareStatement("select * from distributor_register where username='"+dname+"' ");
                ResultSet r=p.executeQuery();
                System.out.println(p);
                if(r.next()){
                    String email=r.getString("mail");
                    System.out.println(email);
                    mail m=new mail(); 
                    String subject="Order Confirmation";
                    String message="Your Order Has Been Confirmed";
                    m.sendFromGMail("otpmessenger", "qawsedrftg",email, subject,message);
                    System.out.println(email);
                }
               out.println("<script type=\"text/javascript\">"); 			
                out.println("alert(\"Order confirmed Successfully\")");
                out.println("</script>"); 
                RequestDispatcher rd=request.getRequestDispatcher("viewconreq.jsp");
                rd.include(request, response);
            }
        }
        catch(Exception e){
            out.println("<script type=\"text/javascript\">"); 			
            out.println("alert(\"Please Try Again\")");
            out.println("</script>"); 
            RequestDispatcher rd=request.getRequestDispatcher("viewconreq.jsp");
            rd.include(request, response);
        }
            %>
    </body>
</html>
