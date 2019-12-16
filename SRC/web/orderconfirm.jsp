<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
            <%@page import="java.sql.*"%>
<%@page import="db.DB"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<style>   
                          	table{
                        		margin-left:50px;
                        		width:70%;
                        		margin-top:10%;
                        		align:Centre;
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
 						<table>
                           <tr>
	                           <th>Dealer_name</th>
	                           <th>Dealer_id</th>
	                           <th>Distributor_name</th>
	                           <th>Type</th>
	                           <th>quanlity</th>
	                           <th>date</th>
	                          <th>status</th>
	                          <th>Confirmed_By</th>
	                            <th>Action</th>
	                          </tr>
<%
Connection con=new DB().Connect();
PreparedStatement ps1=con.prepareStatement("SELECT * FROM orderreq WHERE TYPE='Direct' ");
ResultSet rs1=ps1.executeQuery();
System.out.print(ps1);
while(rs1.next())
{
%>
<tr>
								<td><%=rs1.getString("Dealer_name") %></td>
					         	<td><%=rs1.getString("Dealer_id") %></td>
					         	<td><%=rs1.getString("Distributor_name") %></td>
					         	<td><%=rs1.getString("Type") %></td>
					         	<td><%=rs1.getString("quanlity") %></td>
					         	<td><%=rs1.getString("date") %></td>
					         	<td><%=rs1.getString("status") %></td>
					         	<td><%=rs1.getString("Confirmed_By") %></td>
					         	<%
					         		String sta=rs1.getString("status");
					         		if(sta.equalsIgnoreCase("active")){
					         	
					         	%>
					         <td style="color:red;">Already Confirmed </td>
					         	 <% }
					         		else{
					         		%>
					         	<td><a href="ordercon.jsp?name=saleperson&&type=<%=rs1.getString("Type") %>&&disname=<%=rs1.getString("Distributor_name") %>&&dname=<%=rs1.getString("Dealer_name") %>&&did=<%=rs1.getString("Dealer_id") %>&&status=<%=rs1.getString("status") %><td>">Confirmed Order</a></td></tr>
					         	<%		
					         		}
					         		
} %>

					         	 
</table>
 <a href="Manufacturer_Home.jsp">Click to back</a>
</body>
</html>