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
            color: navy;
        }
        table{
            width: 90%;
        }
        table,td,tr,th{
            border-collapse: collapse;
            border: 2px solid #0069d9;
            text-align: center;
            padding:5px;
            font-weight: bold;
        }
        th{
            color:darkblue;
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
         <form action="addsalem.jsp">
         <button>+New Sales Manager</button>
         </form>
         <br>
         <h2><b>View & Manage Sales Manager</b></h2><br>
        <table>
         <tr>
            <tr>
                <th>Sale Manager_ ID</th>
                <th>Sale Manager_Name</th>
                <th>Password</th>
                <th>Mail</th>
                <th>Address</th>
                <th>Phone</th>
                <th>Status</th>
                <th>Action</th>
        </tr>
         <%                
            Connection con=new DB().Connect();
            PreparedStatement ps1=con.prepareStatement("select * from salemanager");
            ResultSet rs1=ps1.executeQuery();
            System.out.print(ps1);
            while(rs1.next()){
        %>
               <tr><td><%=rs1.getString("salem_id") %></td>
                <td><%=rs1.getString("salem_name") %></td>
                <td><%=rs1.getString("pass") %></td>
                <td><%=rs1.getString("mail") %></td>
                <td><%=rs1.getString("address") %></td>
                <td><%=rs1.getString("phone") %></td>
            <%
               if(rs1.getString("status").equalsIgnoreCase("Active")){
            %>
            <td style="color:darkred; font-weight: bold;">Already <%=rs1.getString("status") %></td>
             <td><a href="manage_Activate.jsp?did=<%=rs1.getString("salem_id") %>&&dname=<%=rs1.getString("salem_name") %>"><img src="images/add.jpg" alt="Add" width=20,height=20></a>|<a href="Delete_smanager.jsp?did=<%=rs1.getString("salem_id") %>&&dname=<%=rs1.getString("salem_name") %>"><img src="images/delete.jpg" alt="delete" width=10,height=10></a> |  
             <a href="Edit_Profile2.jsp?did=<%=rs1.getString("salem_id")%>&&dname=<%=rs1.getString("salem_name")%>&&mail=<%=rs1.getString("mail")%>&&mobile=<%=rs1.getString("phone")%>&&address=<%=rs1.getString("address")%>"><img src="images/edit.jpg" alt="edit" width=20,height=20></a></td> 
            <%
               }
               else if(rs1.getString("status").equalsIgnoreCase("In-Active")){
            %>
                <td style="color:green; font-weight: bold;"><%=rs1.getString("status") %></td>
                 <td><a href="manage_Activate.jsp?did=<%=rs1.getString("salem_id") %>&&dname=<%=rs1.getString("salem_name") %>"><img src="images/add.jpg" alt="Add" width=20,height=20></a>|<a href="Delete_smanager.jsp?did=<%=rs1.getString("salem_id") %>&&dname=<%=rs1.getString("salem_name") %>"><img src="images/delete.jpg" alt="delete" width=10,height=10></a> |  
                <a href="Edit_Profile2.jsp?did=<%=rs1.getString("salem_id")%>&&dname=<%=rs1.getString("salem_name")%>&&mail=<%=rs1.getString("mail")%>&&mobile=<%=rs1.getString("phone")%>&&address=<%=rs1.getString("address")%>"><img src="images/edit.jpg" alt="edit" width=20,height=20></a></td> 
                <%
               }else{
            %>
                 <td style="color:green; font-weight: bold;"><%=rs1.getString("status") %></td>
                 <td><a href="manage_Activate.jsp?did=<%=rs1.getString("salem_id") %>&&dname=<%=rs1.getString("salem_name") %>"><img src="images/add.jpg" alt="Add" width=20,height=20></a>|<a href="Delete_smanager.jsp?did=<%=rs1.getString("salem_id") %>&&dname=<%=rs1.getString("salem_name") %>"><img src="images/delete.jpg" alt="delete" width=10,height=10></a> |  
                <a href="Edit_Profile2.jsp?did=<%=rs1.getString("salem_id")%>&&dname=<%=rs1.getString("salem_name")%>&&mail=<%=rs1.getString("mail")%>&&mobile=<%=rs1.getString("phone")%>&&address=<%=rs1.getString("address")%>"><img src="images/edit.jpg" alt="edit" width=20,height=20></a></td> 
                <%
               }
            %>
          </tr>
        <%} %>
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
