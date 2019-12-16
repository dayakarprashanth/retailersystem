<%@page import="java.sql.*"%>
<%
String Special=request.getParameter("count");
System.out.println("item name +++:"+Special);
 String buffer="<input type='hidden' name='itemcode'  onchange='showCity(this.value);'>";
 try{
 Class.forName("com.mysql.jdbc.Driver").newInstance();
 Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/inventory","root","root");
 Statement stmt = con.createStatement();
 ResultSet rs = stmt.executeQuery("select * from item_details where item_name='"+Special+"' group by item_name");
   if(rs.next()){
   buffer=buffer+"<input type='text' name='itemcode' value='"+rs.getString("item_id")+"'>";
   String s=rs.getString("item_id");
   session.setAttribute("itemcode", s);
   System.out.println(s);
   }
//System.out.println("Special+++:"+buffer);

 response.getWriter().println(buffer);
 }
 catch(Exception e){
     System.out.println(e);
 }

 %>