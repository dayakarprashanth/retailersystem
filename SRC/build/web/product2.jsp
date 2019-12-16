<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="db.DB"%>
<%@page import="java.sql.Connection"%>
<title>Sales person Dashboard</title>
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
    String name=(String)session.getAttribute("salesmanagername");
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
                <a href="saleperson1.jsp" class="b-brand">
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
                             <li class=""><a href="productlist2.jsp" class=""> Add Distributors</a></li>                          
                             
                             <li class=""><a href="orderconfirm1.jsp" class="">View and Confirm Order Requests</a></li>
                             <li class=""><a href="#" class="">Set and Edit Order Notes</a></li>
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
    <style>
        #maincontent{
            margin-left: 20%;
            margin-top:3%;
        }
        h2{
            font-size: 25px;
            color: navy;
        }
        table,td,tr,th{
            border-collapse: collapse;
            border: 2px solid #0069d9;
            text-align: center;
            padding:5px;
            font-weight: bold;
        }
        th{
            color:darkred;
        }
        td{
            color:black;
        }
        button{
            float:right;
            background-color: lightblue;
            margin-right: 5%;
            height: 50px;
            width: 150px;
            border-radius: 15px;
            border-color: darkblue;
            font-weight: bold;
            font-family: cursive;
        }
    </style>
    <div id="maincontent">
     <center>
         <h2><b>View & Manage All Products</b></h2><br>
         <div style="overflow: scroll;width:90%; height: 500px;">
        <table>
            <tr>
                <th>Product_ ID</th>
                <th>Door Category</th>
                <th>Door Model</th>
                <th>Door Type</th>
                <th>Door frame</th>
                <th>Door width</th>
                <th>Door Height</th>
                <th>Panel ID</th>
                <th>Panel Group</th>
                <th>Door Assmebly Group</th>
                <th>Door finish Group</th>
                <th>Door glass design</th>
                <th>Door glass type id</th>
                <th>Door glass_coating</th>
                <th>Door glass_thickness</th>
                <th>Door handle id</th>
                <th>Door lock group</th>
                <th>Door color group</th>
                <th>predrill id</th>
                <th>Door Frame Thickness</th>
                <th style="color: red;">Action</th>
        </tr>
        <%
            Connection con=new DB().Connect();
            PreparedStatement ps1=con.prepareStatement("select * from product  ");
            ResultSet rs1=ps1.executeQuery();
            while(rs1.next()){
        %>
        <tr>
                <td><%=rs1.getString("productid") %></td>
                <td><%=rs1.getString("door_category_id") %></td>
                <td><%=rs1.getString("door_model_id") %></td>
                <td><%=rs1.getString("door_type_id") %></td>
                <td><%=rs1.getString("door_frame_id") %></td>
                <td><%=rs1.getString("door_width_group") %></td>
                <td><%=rs1.getString("door_height_group") %></td>
                <td><%=rs1.getString("panel_id") %></td>
                <td><%=rs1.getString("door_panel_group") %></td>
                <td><%=rs1.getString("door_assembly_group") %></td>
                <td><%=rs1.getString("door_finish_group") %></td>
                <td><%=rs1.getString("door_glass_design_group") %></td>
                <td><%=rs1.getString("door_glass_type_id") %></td>
                <td><%=rs1.getString("door_glass_coating_group") %></td>
                <td><%=rs1.getString("door_glass_thickness_id") %></td>
                <td><%=rs1.getString("door_handle_id") %></td>
                <td><%=rs1.getString("door_lock_group") %></td>
                <td><%=rs1.getString("door_color_group") %></td>
                <td><%=rs1.getString("predrill_id") %></td>
                <td><%=rs1.getString("door_frame_thickness_group") %></td>
                <td><a href="productdeleteaction.jsp?pid=<%=rs1.getString("productid") %>"><img src="images/edit.jpg" alt="edit" width=20,height=20></a></td> 
        </tr>
        <%} %>
        </table></div>
     </center>
     </div>
    <!-- [ Main Content ] end -->

    <!-- Required Js -->
<script src="assets/js/vendor-all.min.js"></script>
	<script src="assets/plugins/bootstrap/js/bootstrap.min.js"></script>
    <script src="assets/js/pcoded.min.js"></script>

</body>
</html>

