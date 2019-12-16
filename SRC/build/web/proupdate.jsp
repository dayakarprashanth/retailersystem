<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@page import="db.DB"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Product update</title>
<meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link href="https://fonts.googleapis.com/css?family=Barlow+Semi+Condensed:100,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">
    <link rel="stylesheet" href="css/open-iconic-bootstrap.min.css">
    <link rel="stylesheet" href="css/animate.css">
    <link rel="stylesheet" href="css/owl.carousel.min.css">
    <link rel="stylesheet" href="css/owl.theme.default.min.css">
    <link rel="stylesheet" href="css/magnific-popup.css">
    <link rel="stylesheet" href="css/aos.css">
    <link rel="stylesheet" href="css/ionicons.min.css">
    <link rel="stylesheet" href="css/bootstrap-datepicker.css">
    <link rel="stylesheet" href="css/jquery.timepicker.css">    
    <link rel="stylesheet" href="css/flaticon.css">
    <link rel="stylesheet" href="css/icomoon.css">
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
  	<nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light" id="ftco-navbar" style="background-color:black;">
	    <div class="container" style="background-color:black; width: 3000px; margin-top: 20px;">
	      <a class="navbar-brand py-2 px-4" href="#">Health Club</a>
	      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav" aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
	        <span class="oi oi-menu"></span> Menu
	      </button>
	      <div class="collapse navbar-collapse" id="ftco-nav">
	     
	      </div>
		  </div>
	  </nav>
      <div style="margin-top: 200px;">
          <center>
              <style>
                  td,tr{
                      color:#EF3159;
                      font-weight: bold;                      
                  }                  
                  .ali{
                      width: 30%;
                      height: 70%
                  }
              </style>
<% 
		try
		{
			 String pid=request.getParameter("pid");
             String pdtype=request.getParameter("pdtype");
             String pdframe=request.getParameter("pdframe");
             String pdwidth=request.getParameter("pdwidth");
     		  String pdpanel=request.getParameter("pdpanel");
     		String pdhandling=request.getParameter("pdhandling");
     		String pdassembly=request.getParameter("pdassembly");
     		String pdufinish=request.getParameter("pdufinish");
     		String pdgtype=request.getParameter("pdgtype");
     		String pdgdesign=request.getParameter("pdgdesign");
     		String pdgcoating=request.getParameter("pdgcoating");
     		String pdgthick=request.getParameter("pdgthick");
     		String pdhandle=request.getParameter("pdhandle");
     		String pdhcolor=request.getParameter("pdhcolor");
     		String pdlock=request.getParameter("pdlock");
     		String pdfthickness=request.getParameter("pdfthickness");
     		String pdpredill=request.getParameter("pdpredill");
          
            Connection con=new DB().Connect();
            PreparedStatement ps=con.prepareStatement("update product set Door_frame='"+pdframe+"',Door_width='"+pdwidth+"',Door_panel='"+pdpanel+"',Door_handling='"+pdhandling+"',Door_assmebly='"+pdassembly+"',Door_unit_finish='"+pdufinish+"',Door_glass_type='"+pdgtype+"',Door_glass_design='"+pdgdesign+"',Door_glass_coating='"+pdgcoating+"',Door_glass_thickness='"+pdgthick+"',Door_handle='"+pdhandle+"',Door_handle_color='"+pdhcolor+"',Door_lock='"+pdlock+"',Door_frame_thickness='"+pdfthickness+"',predill='"+pdpredill+"' where Product_ID='"+pid+"' and Door_Type='"+pdtype+"' ");
            ps.executeUpdate();
            System.out.println(ps);
            out.println("<script type=\"text/javascript\">"); 			
            out.println("alert(\"Product Updated Successfully\")");
            out.println("</script>"); 
            RequestDispatcher rd=request.getRequestDispatcher("Edit_product.jsp");
            rd.include(request, response);
		}
        catch(Exception e){
            System.out.println(e);
        }

        %>

</body>
</html>