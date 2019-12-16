<%@page import="db.DB"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Distributor SignUp Page</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="signup/images/icons/favicon.ico"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="signup/vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="signup/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="signup/fonts/Linearicons-Free-v1.0.0/icon-font.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="signup/vendor/animate/animate.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="signup/vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="signup/vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="signup/vendor/select2/select2.min.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="signup/vendor/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="signup/css/util.css">
	<link rel="stylesheet" type="text/css" href="signup/css/main.css">
<!--===============================================================================================-->
</head>
<body>
	
	<div class="limiter">
		<div class="container-login100">
			<div class="wrap-login100 p-l-85 p-r-85 p-t-55 p-b-55">
				<form class="login100-form validate-form flex-sb flex-w" action="action1" enctype="multipart/form-data" method="post">
					<span class="login100-form-title p-b-32" style="color: #004085;">
                                            <b>Distributor SignUp</b>
					</span>
                                        <span class="txt1 p-b-11" style="color: #01a9ac;">
                                            <b>Distributor Id</b>
					</span>
                                     <%
                                            Connection con=new DB().Connect();
                                            PreparedStatement query=con.prepareStatement("select * from distributor_register");
                                            ResultSet rs=query.executeQuery();
                                            String id="";
                                            int i=0;
                                            while(rs.next())
                                            {
                                                i++;
                                                id="ID_"+(rs.getInt("id")+1);
                                            }
                                            if(i==0)
                                                id="ID_1";
                                        %>
					<div class="wrap-input100 validate-input m-b-36" data-validate = "Id is required">
						<input class="input100" type="text" value="<%=id%>" name="username" >
						<span class="focus-input100"></span>
					</div>
					<span class="txt1 p-b-11" style="color: #01a9ac;">
                                            <b>Username</b>
					</span>
					<div class="wrap-input100 validate-input m-b-36" data-validate = "Username is required">
						<input class="input100" type="text" name="username" >
						<span class="focus-input100"></span>
					</div>
					
					<span class="txt1 p-b-11" style="color: #01a9ac;">
                                            <b>Password</b>
					</span>
					<div class="wrap-input100 validate-input m-b-12" data-validate = "Password is required">
						<span class="btn-show-pass">
							<i class="fa fa-eye"></i>
						</span>
						<input class="input100" type="password" name="pass" >
						<span class="focus-input100"></span>
					</div>
                                        <span class="txt1 p-b-11" style="color: #01a9ac;">
                                            <b>Email</b>
					</span>
					<div class="wrap-input100 validate-input m-b-36" data-validate = "Email is required">
						<input class="input100" type="email" name="email" >
						<span class="focus-input100"></span>
					</div>
                                        <span class="txt1 p-b-11" style="color: #01a9ac;">
                                            <b>Mobile</b>
					</span>
					<div class="wrap-input100 validate-input m-b-36" data-validate = "Mobile Number is required">
                                            <input class="input100" type="text" name="mobile" pattern="[0-9]{10}" title="10-digits only" >
						<span class="focus-input100"></span>
					</div>
					<span class="txt1 p-b-11" style="color: #01a9ac;">
                                            <b>Shipping Address</b>
					</span>
					<div class="wrap-input100 validate-input m-b-36" data-validate = "Username is required">
                                            <textarea class="input100" type="text" name="address" ></textarea>
						<span class="focus-input100"></span>
					</div><span class="txt1 p-b-11" style="color: #01a9ac;">
                                            <b>Choose File</b>
					</span>
					<div class="wrap-input100 validate-input m-b-36" data-validate = "Profile Picture is required">
						<input class="input100" type="file" name="file" >
						<span class="focus-input100"></span>
					</div>

					<div class="container-login100-form-btn">
						<button class="login100-form-btn" style="background-color: skyblue;">
                                                    <b>Register</b>
						</button>
					</div>

				</form>
			</div>
		</div>
	</div>
	

	<div id="dropDownSelect1"></div>
	
<!--===============================================================================================-->
	<script src="signup/vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="signup/vendor/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
	<script src="signup/vendor/bootstrap/js/popper.js"></script>
	<script src="signup/vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="signup/vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
	<script src="signup/vendor/daterangepicker/moment.min.js"></script>
	<script src="signup/vendor/daterangepicker/daterangepicker.js"></script>
<!--===============================================================================================-->
	<script src="signup/vendor/countdowntime/countdowntime.js"></script>
<!--===============================================================================================-->
	<script src="signup/js/main.js"></script>

</body>
</html>