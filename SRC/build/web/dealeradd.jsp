<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<body>
<style>
                        	table{
                        		margin-left:50px;
                        		width:100%;
                        		margin-top:10%;
                        	}
                        	table,td,tr,th{
                        		border-collapse: collapse;
                        		border:2px solid SlateGray;
                        		padding:5px;
                        		text-align:center;
                        	}
                        	th{
                        		font-weight:bold;
                        		color:SteelBlue;
                        	}
                        	td{
                        		font-weight:bold;
                        		color:black;
                        	}
                        	h2{
                        		margin-left:20%;
                        		color: DarkTurquoise;
                        		font-weight:bold;
                        	}
                        	</style>
		<div class="wrapper">
			<div class="inner">
				<h3>Create Dealers</h3>
				<form action="dealeradds" enctype="multipart/form-data" method="post">
					
					<div class="form-holder">
						<span class="lnr lnr-user"></span>
						<input type="text" NAME="username" class="form-control" placeholder="Username">
					</div>
					<div class="form-holder">
						<span class="lnr lnr-phone-handset"></span>
						<input type="text" NAME="mobile" class="form-control" placeholder="Phone Number">
					</div>
					<div class="form-holder">
						<span class="lnr lnr-envelope"></span>
						<input type="text" NAME="mail" class="form-control" placeholder="Mail">
					</div>
					<div class="form-holder">
						<span class="lnr lnr-lock"></span>
						<input type="password"  NAME="password" class="form-control" placeholder="Password">
					</div>
					<div class="form-holder">
						<span class="lnr lnr-lock"></span>
						<input type="file" name="file" class="form-control" placeholder="Upload Picture">
					</div>
						<div class="form-holder">
						<span class="lnr lnr-lock"></span>
						<input type="Address" NAME="address" class="form-control" placeholder="Address">
					</div>
							
					<button>
						<span>Register</spna>
					</button>
					  
						
				
				
				</form>
					</div>
						</div>
				
	</body>
</body>
</html>