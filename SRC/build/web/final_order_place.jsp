<%@page import="java.util.Random"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@page import="db.DB"%>
<%@page import="java.sql.*"%>
<%@page import="java.util.Date"%>
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
    String g=request.getParameter("glass");
    String g1=request.getParameter("glass1");
    String g2=request.getParameter("glass2");
    String g3=request.getParameter("glass3");
    String g4=request.getParameter("glass4");
    String g5=request.getParameter("glass5");
    String g6=request.getParameter("glass6");
    String g7=request.getParameter("glass7");
    String g8=request.getParameter("glass8");
    String dname=request.getParameter("dname");
    String name=(String)session.getAttribute("dealername");
    String did=(String)session.getAttribute("did");
    String type=(String)session.getAttribute("type");
     DateFormat df = new SimpleDateFormat("dd/MM/yy HH:mm:ss");
    Date dateobj = new Date();
    String dt=df.format(dateobj);
    System.out.println(df.format(dateobj));
    Random rnd=new Random();
    int n=100000+rnd.nextInt(900000);
    Connection con=new DB().Connect();
    PreparedStatement p2=con.prepareStatement("insert into placeorder(orderid,door_category,door_model,door_type,door_frame,door_width,door_height,door_panel,door_handling,door_assembly,door_finish,glass_design,glass_type,glass_coating,glass_thickness,glass_handleset,glass_lock,color,predrill,frame_thickness,dname,name,did,type,dte)values('"+n+"','"+c+"','"+m+"','"+t+"','"+f+"','"+w+"','"+h+"','"+p+"','"+ha+"','"+a+"','"+fi+"','"+g+"','"+g1+"','"+g2+"','"+g3+"','"+g4+"','"+g5+"','"+g6+"','"+g7+"','"+g8+"','"+dname+"','"+name+"','"+did+"','"+type+"','"+dt+"') ");
   System.out.println(p2);
    p2.executeUpdate();
    out.println("<script type=\"text/javascript\">"); 			
    out.println("alert(\"Order Placed.\")");		
    out.println("</script>");		
    RequestDispatcher rd=request.getRequestDispatcher("sendoreq.jsp");		
    rd.include(request, response);
%>