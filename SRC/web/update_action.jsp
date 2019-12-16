
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
    {
        String distributor_id=request.getParameter("distributor_id");
        String username=request.getParameter("username");
        String mail=request.getParameter("mail");
        String mobile=request.getParameter("mobile");
        String address=request.getParameter("address");
        Connection con=new DB().Connect();
        PreparedStatement ps=con.prepareStatement("update distributor_register set mail='"+mail+"',mobile='"+mobile+"',address='"+address+"' where distributor_id='"+distributor_id+"' and username='"+username+"' ");
        ps.executeUpdate();
        System.out.println(ps);
        out.println("<script type=\"text/javascript\">"); 			
        out.println("alert(\" "+username+" Updated Successfully\")");
        out.println("</script>"); 
        RequestDispatcher rd=request.getRequestDispatcher("productlist1.jsp");
        rd.include(request, response);
    }
    catch(Exception e){
        System.out.println(e);
    }
    %>
</body>
</html>