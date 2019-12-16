<%@page import="java.sql.*"%>
<%@page import="db.DB"%>
<%
	Connection con=new DB().Connect();
	String name=request.getParameter("name");
	String pass=request.getParameter("pass");
        PreparedStatement p=con.prepareStatement("select * from manufacturer where username='"+name+"' and password='"+pass+"' ");
        ResultSet r=p.executeQuery();
	if(r.next()){
		out.println("<script type=\"text/javascript\">"); 			
		out.println("alert(\"Welcome "+name+"\")");		
		out.println("</script>");		
		RequestDispatcher rd=request.getRequestDispatcher("Manufacturer_Home.jsp");		
		rd.include(request, response);
	}
	else{
		PreparedStatement ps=con.prepareStatement("select * from distributor_register where username='"+name+"' and password='"+pass+"' and status='Authorized' ");
                ResultSet rs=ps.executeQuery();
                System.out.println(ps);
                if(rs.next()){
        	String ddid=rs.getString("distributor_id");
                String pic=rs.getString("file");
                session.setAttribute("ddid", ddid);
                session.setAttribute("disname",name);
                session.setAttribute("pic",pic);
                System.out.print(ddid);
        	out.println("<script type=\"text/javascript\">"); 			
    		out.println("alert(\"Welcome "+name+"\")");		
    		out.println("</script>");		
    		RequestDispatcher rd=request.getRequestDispatcher("Distributor_Home.jsp");		
    		rd.include(request, response);
                }
                else{
       		PreparedStatement ps1=con.prepareStatement("select * from dealer_register where username='"+name+"' and password='"+pass+"' and Status='Active'");
                ResultSet rs1=ps1.executeQuery();
                System.out.println(ps1);
                if(rs1.next()){
            	String disname=rs1.getString("distributor_name");
            	String did=rs1.getString("dealer_id");
            	String type=rs1.getString("Type");
            	System.out.print(disname+" "+type+" "+did);
            	session.setAttribute("dealername",name);
            	session.setAttribute("disname",disname);
            	session.setAttribute("did",did);
            	session.setAttribute("type",type);
                session.setAttribute("pic", rs1.getString("file"));
            	out.println("<script type=\"text/javascript\">"); 			
                out.println("alert(\"Welcome "+name+"\")");		
                out.println("</script>");		
                RequestDispatcher rd=request.getRequestDispatcher("sendoreq.jsp");		
                rd.include(request, response);
                }
            	else{
		PreparedStatement ps2=con.prepareStatement("select * from salemanager where salem_name='"+name+"' and pass='"+pass+"'  and status='Active'");
                ResultSet rs2=ps2.executeQuery();
                System.out.println(ps2);
                session.setAttribute("salesmanagername",name);
                if(rs2.next()){
        	out.println("<script type=\"text/javascript\">"); 			
    		out.println("alert(\"Welcome "+name+"\")");		
    		out.println("</script>");		
    		RequestDispatcher rd=request.getRequestDispatcher("salemanager1.jsp");		
    		rd.include(request, response);
        }
        else{
	PreparedStatement ps3=con.prepareStatement("select * from saleperson where person_name='"+name+"' and pass='"+pass+"'  and status='Active'");
        ResultSet rs3=ps3.executeQuery();
        System.out.println(ps3);
    session.setAttribute("salepersonname",name);
        if(rs3.next()){
        	out.println("<script type=\"text/javascript\">"); 			
    		out.println("alert(\"Welcome "+name+"\")");		
    		out.println("</script>");		
    		RequestDispatcher rd=request.getRequestDispatcher("saleperson1.jsp");		
    		rd.include(request, response);
        }
        else {
                    out.println("<script type=\"text/javascript\">"); 			
                    out.println("alert(\"UnAuthorized Login.\")");		
                    out.println("</script>");		
                    RequestDispatcher rd=request.getRequestDispatcher("index.jsp");		
                    rd.include(request, response);
            }
        }
	}
        }
        }


%>