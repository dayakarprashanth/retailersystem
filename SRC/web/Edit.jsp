<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
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
table>
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
              
              String distributor_id=request.getParameter("did");
              String username=request.getParameter("dname");
              String mail=request.getParameter("mail");
              String mobile=request.getParameter("mobile");
      		  String address=request.getParameter("address");
             
                 
              %>
              <h2 style="color: #b21f2d; font-weight: bold; font-size: 30px; font-family: cambria;">Update Member Details</h2><br>
                <centre>  
              <form action="update.jsp">  
                      
               <table class="ali">
            
                  <tr><td>Member ID</td><td style="border-radius: 2px;"><input type="text" name="distributor_id" value="<%=distributor_id%>" readonly></td></tr>
                  <tr><td>Member Name</td><td style="border-radius: 2px;"><input type="text" name="username" value="<%=username%>" readonly></td></tr>
                  <tr><td>Mail</td><td style="border-radius: 2px;"><input type="email" name="mail" value="<%=mail%>" required></td></tr>
                  <tr><td>Mobile</td><td style="border-radius: 2px;"><input type="text" name="mobile" value="<%=mobile%>" required></td></tr>
                  <tr><td>Address</td><td style="border-radius: 2px;"><input type="text" name="address" value="<%=address%>" required></td></tr>
                  <tr><td align="center" colspan="2"><input type="submit" value="Update" /></td></tr>
             
              </table></form>
          </center>
      </div>
    

  <script src="js/jquery.min.js"></script>
  <script src="js/jquery-migrate-3.0.1.min.js"></script>
  <script src="js/popper.min.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <script src="js/jquery.easing.1.3.js"></script>
  <script src="js/jquery.waypoints.min.js"></script>
  <script src="js/jquery.stellar.min.js"></script>
  <script src="js/owl.carousel.min.js"></script>
  <script src="js/jquery.magnific-popup.min.js"></script>
  <script src="js/aos.js"></script>
  <script src="js/jquery.animateNumber.min.js"></script>
  <script src="js/bootstrap-datepicker.js"></script>
  <script src="js/jquery.timepicker.min.js"></script>
  <script src="js/scrollax.min.js"></script>
  <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
  <script src="js/google-map.js"></script>
  <script src="js/main.js"></script>
    
  </body>
</html>