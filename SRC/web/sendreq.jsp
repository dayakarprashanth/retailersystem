<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Calendar"%>
<%@page import="db.DB"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <title>Dealer DashBoard</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimal-ui">
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="description" content="Free Datta Able Admin Template come up with latest Bootstrap 4 framework with basic components, form elements and lots of pre-made layout options" />
    <meta name="keywords" content="admin templates, bootstrap admin templates, bootstrap 4, dashboard, dashboard templets, sass admin templets, html admin templates, responsive, bootstrap admin templates free download,premium bootstrap admin templates, datta able, datta able bootstrap admin template, free admin theme, free dashboard template"/>
    <meta name="author" content="CodedThemes"/>

    <!-- Favicon icon -->
    <link rel="icon" href="assets/images/favicon.ico" type="image/x-icon">
    <!-- fontawesome icon -->
    <link rel="stylesheet" href="assets/fonts/fontawesome/css/fontawesome-all.min.css">
    <!-- animation css -->
    <link rel="stylesheet" href="assets/plugins/animation/css/animate.min.css">
    <!-- vendor css -->
    <link rel="stylesheet" href="assets/css/style.css">

</head>
<%
        String name=(String)session.getAttribute("dealername");
        String pic=(String)session.getAttribute("pic");
%>
<body>
    <!-- [ Pre-loader ] start -->
    <div class="loader-bg">
        <div class="loader-track">
            <div class="loader-fill"></div>
        </div>
    </div>
    <!-- [ Pre-loader ] End -->
    <!-- [ navigation menu ] start -->
    <nav class="pcoded-navbar">
        <div class="navbar-wrapper">
            <div class="navbar-brand header-logo">
                <a href="sendoreq.jsp" class="b-brand">
                    <div class="b-bg">
                        <i class="feather icon-trending-up"></i>
                    </div>
                    <span class="b-title"><%=name%></span>
                </a>
                <a class="mobile-menu" id="mobile-collapse" href="javascript:"><span></span></a>
            </div>
            <div class="navbar-content scroll-div">
                <ul class="nav pcoded-inner-navbar">
                    <li data-username="basic components Button Alert Badges breadcrumb Paggination progress Tooltip popovers Carousel Cards Collapse Tabs pills Modal Grid System Typography Extra Shadows Embeds" class="nav-item pcoded-hasmenu">
                        <a href="javascript:" class="nav-link "><span class="pcoded-micon"><i class="feather icon-box"></i></span><span class="pcoded-mtext">Menus</span></a>
                        <ul class="pcoded-submenu">
                            <li class=""><a href="vieproduct.jsp" class="">Place Orders</a></li>
                             <li class=""><a href="Order_Confirm.jsp" class="">Receive confirmed Order Requests</a></li>
                         </ul>
                    </li>
                 </ul>
            </div>
        </div>
    </nav>
    <!-- [ navigation menu ] end -->
    
    <!-- [ Header ] start -->
    <header class="navbar pcoded-header navbar-expand-lg navbar-light">
        <div class="m-header">
            <a class="mobile-menu" id="mobile-collapse1" href="javascript:"><span></span></a>
            <a href="index.jsp" class="b-brand">
                   <div class="b-bg">
                       <i class="feather icon-trending-up"></i>
                   </div>
                   <span class="b-title">Datta Able</span>
               </a>
        </div>
        <a class="mobile-menu" id="mobile-header" href="javascript:">
            <i class="feather icon-more-horizontal"></i>
        </a>
        <div class="collapse navbar-collapse">
            <ul class="navbar-nav mr-auto">
                <li><a href="javascript:" class="full-screen" onclick="javascript:toggleFullScreen()"><i class="feather icon-maximize"></i></a></li> 
            </ul>
            <ul  class="navbar-nav ml-auto">
                <li>
                    <div class="dropdown drp-user">
                        <a href="javascript:" class="dropdown-toggle" data-toggle="dropdown">
                            <i class="icon feather icon-settings"></i>
                        </a>
                        <div class="dropdown-menu dropdown-menu-right profile-notification">
                            <div class="pro-head">
                                <img src="dataset/<%=pic%>" class="img-radius" alt="User-Profile-Image">
                                <span><%=name%></span>
                                <a href="index.jsp" class="dud-logout" title="Logout">
                                    <i class="feather icon-log-out"></i>
                                </a>
                            </div>
                        </div>
                    </div>
                </li>
            </ul>
        </div>
    </header>
    <!-- [ Header ] end -->

    <!-- [ Header ] end -->
    <!-- [ Main Content ] start -->
    <style>
        #maincontent{
            margin-left: 20%;
            margin-top:7%;
        }
        h2{
            font-size: 25px;
            color: mediumvioletred;
        }
        table{
            width: 50%;
        }
        table,td,tr,th{
            text-align: center;
            padding:5px;
            font-weight: bold;
            font-size: 16px;
        }
        input{
            color:black;
            border-radius: 5px;
        }
        td{
            color:darkblue;
        }
    </style>
    <div id="maincontent">
     <center>
         <h2><b>Place Order(Send Request)</b></h2><br>
          <%
            Calendar cal = Calendar.getInstance();
            SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yy  HH:mm:ss");
            String date=sdf.format(cal.getTime());

            String dname=(String)session.getAttribute("dealername");
            String disname=(String)session.getAttribute("disname");
            String did=(String)session.getAttribute("did");
            String type=(String)session.getAttribute("type");
           System.out.print(dname+" "+disname+" "+did+" "+type);
         %>
        <form action="sendrequest"> 
         <table>
           	<tr><td><strong>Dealer_name:</strong></td><td>
                        <input type="text" name="dname"  style="border-radius: 2px;  color:black;" value="<%=dname%>" readonly=""></td></tr>
           	<tr><td><strong>Dealer_id: </strong></td><td>
                        <input type="text" name="did"  style="border-radius: 2px; color:black;" value="<%=did%>" readonly=""></td></tr>
           	<tr><td><strong>Distributor_name: </strong></td><td>
           	<input type="text" name="disname" style="border-radius: 2px; color:black;" value="<%=disname%>"></td></tr>
           	<tr><td><strong>Type: </strong></td>
           	<td><input type="text" name="type" value="<%=type%>"></td></tr>
                <tr><td><strong>Quantity: </strong></td>
                <td><input type="text" name="quantity" style="border-radius: 2px; color:black;" required></td></tr>
                <tr><td><strong>Date: </strong></td><td>
                <input type="text" name="date" style="border-radius: 2px; color:black;" value="<%=date%>"  required></td></tr>
          
            <tr><td align="center" colspan="2"><button type="submit">Order Now</button></td></tr>       
             </table>
     </center>
     </div>
    <!-- [ Main Content ] end -->

    <!-- Required Js -->
<script src="assets/js/vendor-all.min.js"></script>
	<script src="assets/plugins/bootstrap/js/bootstrap.min.js"></script>
    <script src="assets/js/pcoded.min.js"></script>

</body>
</html>
