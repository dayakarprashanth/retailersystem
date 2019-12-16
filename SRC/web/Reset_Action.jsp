<%@page import="db.DB"%>
<%@page import="java.sql.*"%>
<%
    String email=request.getParameter("email");
    String pass=request.getParameter("pass");
    String cpass=request.getParameter("cpass");
    Connection con=new DB().Connect();
    if(pass.equals(cpass)){
        PreparedStatement p=con.prepareStatement("update manufacturer set password='"+pass+"' where username='manufacturer' ");
        p.executeUpdate();
        out.println("<script type=\"text/javascript\">"); 			
        out.println("alert(\"Password Updated...\")");
        out.println("</script>"); 
        RequestDispatcher rd=request.getRequestDispatcher("index.jsp");
        rd.include(request, response);
    }
    else{
	PreparedStatement ps=con.prepareStatement("select * from distributor_register where mail='"+email+"' ");
        ResultSet rs=ps.executeQuery();
        System.out.println(ps);
        if(rs.next()){
        PreparedStatement p=con.prepareStatement("update distributor_register set password='"+pass+"' where mail='"+email+"' ");
        p.executeUpdate();
        out.println("<script type=\"text/javascript\">"); 			
        out.println("alert(\"Password Updated...\")");
        out.println("</script>"); 
        RequestDispatcher rd=request.getRequestDispatcher("index.jsp");
        rd.include(request, response);
        }
        else{
            PreparedStatement ps1=con.prepareStatement("select * from  dealer_register where mail='"+email+"' ");
            ResultSet rs1=ps1.executeQuery();
            System.out.println(ps1);
            if(rs1.next()){
            	 PreparedStatement p=con.prepareStatement("update dealer_register set password='"+pass+"' where mail='"+email+"' ");
                 p.executeUpdate();
                out.println("<script type=\"text/javascript\">"); 			
                out.println("alert(\"Password Updated...\")");
                out.println("</script>"); 
                RequestDispatcher rd=request.getRequestDispatcher("index.jsp");
                rd.include(request, response);
            }
            else{
            	out.println("<script type=\"text/javascript\">"); 			
                out.println("alert(\"Please Enter Correct Credentials..\")");
                out.println("</script>"); 
                RequestDispatcher rd=request.getRequestDispatcher("Reset_Password.jsp");
                rd.include(request, response);
            }
        }
    }

%>