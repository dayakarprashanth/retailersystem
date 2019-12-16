<%@page import="db.DB"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <title>Manufacturer DashBoard</title>
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
                <a href="#" class="b-brand">
                    <div class="b-bg">
                        <i class="feather icon-trending-up"></i>
                    </div>
                    <span class="b-title">Manufacturer</span>
                </a>
                <a class="mobile-menu" id="mobile-collapse" href="javascript:"><span></span></a>
            </div>
            <div class="navbar-content scroll-div">
                <ul class="nav pcoded-inner-navbar">
                    <li data-username="dashboard Default Ecommerce CRM Analytics Crypto Project" class="nav-item active">
                        <a href="Manufacturer_Home.jsp">Home</a>
                        <a href="Manage_Distributors.jsp">Distributors</a>
                        <a href="View_All_dealer.jsp">Dealers</a>
                        <a href="addsalemreg.jsp">Sales Manager</a>
                        <a href="addsaleper.jsp">Sales Person</a>
                    </li>
                    <li class="nav-item pcoded-menu-caption">
                        <label>other</label>
                    </li>
                    <li data-username="basic components Button Alert Badges breadcrumb Paggination progress Tooltip popovers Carousel Cards Collapse Tabs pills Modal Grid System Typography Extra Shadows Embeds" class="nav-item pcoded-hasmenu">
                        <a href="javascript:" class="nav-link "><span class="pcoded-micon"><i class="feather icon-box"></i></span><span class="pcoded-mtext">Order details</span></a>
                        <ul class="pcoded-submenu">
                                                    
                                                      
                             <li class=""><a href="productlist.jsp" class="">View products</a></li>
                             <li class=""><a href="viewconreq.jsp" class="">View/ Confirm Requests</a></li>
                             <li class=""><a href="#" class="">Set/Edit Credit Limit</a></li> 
                             <li class=""><a href="#" class="">Set/Edit Sell Rates and Discount Rates </a></li> 
                             <li class=""><a href="#" class="">Check/Edit Lead Time</a></li> 
                             <li class=""><a href="#" class="">Generate report</a></li> 
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
                                <img src="images/admin.jpg" class="img-radius" alt="User-Profile-Image">
                                <span>Manufacturer</span>
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
         <h2><b>Update Product Item Information</b></h2><br>
        <%
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
        %>
       <form action="proupdate.jsp">          
        <table class="ali">
           <tr><td>Product_Id</td><td style="border-radius: 2px;"><input type="text" name="pid" value="<%=pid%>" readonly></td></tr>
           <tr><td>Door_Type</td><td style="border-radius: 2px;"><input type="text" name="pdtype" value="<%=pdtype%>" readonly></td></tr>
           <tr><td>Door_frame</td><td style="border-radius: 2px;"><input type="text" name="pdframe" value="<%=pdframe%>" required></td></tr>
           <tr><td>Door_width</td><td style="border-radius: 2px;"><input type="text" name="pdwidth" value="<%=pdwidth%>" required></td></tr>
           <tr><td>Door_panel</td><td style="border-radius: 2px;"><input type="text" name="pdpanel" value="<%=pdpanel%>" required></td></tr>
           <tr><td>Door_handling</td><td style="border-radius: 2px;"><input type="text" name="pdhandling" value="<%=pdhandling%>" required></td></tr>
           <tr><td>Door_assmebly</td><td style="border-radius: 2px;"><input type="text" name="pdassembly" value="<%=pdassembly%>" required></td></tr>
           <tr><td>Door_unit_finish</td><td style="border-radius: 2px;"><input type="text" name="pdufinish" value="<%=pdufinish%>" required></td></tr>
           <tr><td>Door_glass_type</td><td style="border-radius: 2px;"><input type="text" name="pdgtype" value="<%=pdgtype%>" required></td></tr>
           <tr><td>Door_glass_design</td><td style="border-radius: 2px;"><input type="text" name="pdgdesign" value="<%=pdgdesign%>" required></td></tr>
           <tr><td>Door_glass_coating</td><td style="border-radius: 2px;"><input type="text" name="pdgcoating" value="<%=pdgcoating%>" required></td></tr>
           <tr><td>Door_glass_thickness</td><td style="border-radius: 2px;"><input type="text" name="pdgthick" value="<%=pdgthick%>" required></td></tr>
           <tr><td>Door_handle</td><td style="border-radius: 2px;"><input type="text" name="pdhandle" value="<%=pdhandle%>" required></td></tr>
           <tr><td>Door_handle_color</td><td style="border-radius: 2px;"><input type="text" name="pdhcolor" value="<%=pdhcolor%>" required></td></tr>
           <tr><td>Door_lock</td><td style="border-radius: 2px;"><input type="text" name="pdlock" value="<%=pdlock%>" required></td></tr>
           <tr><td>Door_frame_thickness</td><td style="border-radius: 2px;"><input type="text" name="pdfthickness" value="<%=pdfthickness%>" required></td></tr>
           <tr><td>predill</td><td style="border-radius: 2px;"><input type="text" name="pdpredill" value="<%=pdpredill%>" required></td></tr>
           <tr><td align="center" colspan="2"><input type="submit" value="Update" /></td></tr>

       </table></form>
     </center>
     </div>
    <!-- [ Main Content ] end -->

    <!-- Required Js -->
<script src="assets/js/vendor-all.min.js"></script>
	<script src="assets/plugins/bootstrap/js/bootstrap.min.js"></script>
    <script src="assets/js/pcoded.min.js"></script>

</body>
</html>
