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
            width: 220px;
        }
        select{
            color:black;
            width: 220px;
            height: 30px;
            border-radius: 5px;
            font-size: 15px;
        }
        td{
            color:darkblue;
        }
    </style>
    <div id="maincontent">
     <center>
         <h2><b>Order Products</b></h2><br>
        <form action="form8.jsp">            
        <table class="ali">
            <%
                String c=request.getParameter("category");
                String m=request.getParameter("model");
                String t=request.getParameter("type");
                String f=request.getParameter("frame");
                String w=request.getParameter("width");
                String h=request.getParameter("height");
                String p=request.getParameter("panel");
                String ha=request.getParameter("handle");
                String a=request.getParameter("assembly");
                String fi=request.getParameter("finish");
                Connection con=new DB().Connect();
            %>
            <tr><td>Door Category</td><td><Input type="text" name="category" value="<%=c%>" readonly=""></td></tr>
            <tr><td>Door Model</td><td><Input type="text" name="model" value="<%=m%>" readonly=""></td></tr>
            <tr><td>Door Type</td><td><Input type="text" name="type" value="<%=t%>" readonly=""></td></tr>
            <tr><td>Door Frame</td><td><Input type="text" name="frame" value="<%=f%>" readonly=""></td></tr>
            <tr><td>Door Width</td><td><Input type="text" name="width" value="<%=w%>" readonly=""></td></tr>
            <tr><td>Door Height</td><td><Input type="text" name="height" value="<%=h%>" readonly=""></td></tr>
            <tr><td>Door Panel</td><td><Input type="text" name="panel" value="<%=p%>" readonly=""></td></tr>
            <tr><td>Door Handling</td><td><Input type="text" name="handle" value="<%=ha%>" readonly=""></td></tr>
            <tr><td>Door Assembly</td><td><Input type="text" name="assembly" value="<%=a%>" readonly=""></td></tr>
            <tr><td>Door Finish</td><td><Input type="text" name="finish" value="<%=fi%>" readonly=""></td></tr>
           <tr>
               <td>Door Glass Design</td>
               <td><select name="glass">
                       <option selected="" disabled="">Choose one</option>
                       <%
                            PreparedStatement p3=con.prepareStatement("select * from doorglassdesign ");
                            ResultSet r3=p3.executeQuery();
                            while(r3.next()){
                       %>
                       <option value="<%=r3.getString("door_glass_design_name")%>"><%=r3.getString("door_glass_design_name")%></option><%}%>
                   </select></td></tr>
           <tr> <td align="center" colspan="2"><input type="submit" value="Choose" /></td></tr>
            
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
