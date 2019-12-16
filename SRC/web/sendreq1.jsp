<%-- 
    Document   : sendreq1
    Created on : 25 Oct, 2019, 12:28:37 PM
    Author     : ADMIN
--%>

<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Calendar"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <style>   
                          	table{
                        		margin-left:50px;
                        		width:50%;
                        		margin-top:10%;
                        		align: center;
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
                        
<h2>Send Order Request</h2>
<form action="sendrequest1">
		 <%
                  Calendar cal = Calendar.getInstance();
	          SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yy  HH:mm:ss");
	          String date=sdf.format(cal.getTime());
                  String did=(String)session.getAttribute("ddid");
                  String disname=(String)session.getAttribute("disname");
                System.out.print(did);
                System.out.print(disname);
		  
         %>
         <table>
           	<tr><td><strong>Distributor_name:</strong></td><td>
           	<input type="text" name="dname"  style="border-radius: 2px;  color:black;" value="<%=disname%>"></td></tr>
           	<tr><td><strong>Distributor_id: </strong></td><td>
           	<input type="text" name="did"  style="border-radius: 2px; color:black;" value="<%=did%>"></td></tr>
                <tr><td><strong>Quantity: </strong></td>
                <td><input type="text" name="quantity" style="border-radius: 2px; color:black;" required></td></tr>
                <tr><td><strong>Date and time: </strong></td><td>
                <input type="text" name="date" style="border-radius: 2px; color:black;" value="<%=date%>"  required></td></tr>
          
           
            <tr><td align="center" colspan="2"><button type="submit">Purchase</button></td></tr>       
             </table>
            <a href="vieproduct1.jsp">Click to back</a>
             </form>     
    </body>
</html>
