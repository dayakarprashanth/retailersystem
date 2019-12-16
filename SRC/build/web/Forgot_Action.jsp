<%@page import="code.mail"%>
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
	mail m=new mail(); 
	String email=request.getParameter("email");
	if(email.equals("rajprashu1931@gmail.com")){
	session.setAttribute("email",email);	
        String subject="Reset Password";
        String message="http://localhost:8080/New_folder/Reset_Password.jsp";
        m.sendFromGMail("otpmessenger", "qawsedrftg",email, subject,message);
        out.println("<script type=\"text/javascript\">"); 			
        out.println("alert(\"Please Check Your Mail..\")");
        out.println("</script>"); 
        RequestDispatcher rd=request.getRequestDispatcher("Reset_Password.jsp");
        rd.include(request, response);
	}
	
	else{
	PreparedStatement ps=con.prepareStatement("select * from distributor_register where mail='"+email+"' and status='Authorized' ");
        ResultSet rs=ps.executeQuery();
        System.out.println(ps);
        if(rs.next()){
        	String mail=rs.getString("mail");
                session.setAttribute("email",mail);
        	String subject="Reset Password";
            String message="http://localhost:8080/New_folder/Reset_Password.jsp" ;
            m.sendFromGMail("otpmessenger", "qawsedrftg",mail, subject,message);
            out.println("<script type=\"text/javascript\">"); 			
            out.println("alert(\"Please Check Your Mail..\")");
            out.println("</script>"); 
            RequestDispatcher rd=request.getRequestDispatcher("Reset_Password.jsp");
            rd.include(request, response);
        }
        else{
        	PreparedStatement ps1=con.prepareStatement("select * from  dealer_register where mail='"+email+"' and status='Authorized' ");
            ResultSet rs1=ps1.executeQuery();
            System.out.println(ps1);
            if(rs1.next()){
            	String mail=rs1.getString("mail");
            	String subject="Reset Password";
                session.setAttribute("email",mail);
                String message="http://localhost:8080/New_folder/Reset_Password.jsp" ;
                m.sendFromGMail("otpmessenger", "qawsedrftg",mail, subject,message);
                out.println("<script type=\"text/javascript\">"); 			
                out.println("alert(\"Please Check Your Mail..\")");
                out.println("</script>"); 
                RequestDispatcher rd=request.getRequestDispatcher("Reset_Password.jsp");
                rd.include(request, response);
            }
            else{
            	out.println("<script type=\"text/javascript\">"); 			
                out.println("alert(\"Please Enter Correct Mail ID..\")");
                out.println("</script>"); 
                RequestDispatcher rd=request.getRequestDispatcher("Forgot_Password.jsp");
                rd.include(request, response);
            }
        }
	}
	
	
%>
</body>
</html>