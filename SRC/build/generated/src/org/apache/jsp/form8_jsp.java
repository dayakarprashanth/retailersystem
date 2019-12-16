package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import db.DB;
import java.sql.*;

public final class form8_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"en\">\n");
      out.write("\n");
      out.write("<head>\n");
      out.write("    <title>Dealer DashBoard</title>\n");
      out.write("    <meta charset=\"utf-8\">\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0, user-scalable=0, minimal-ui\">\n");
      out.write("    <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\" />\n");
      out.write("    <meta name=\"description\" content=\"Free Datta Able Admin Template come up with latest Bootstrap 4 framework with basic components, form elements and lots of pre-made layout options\" />\n");
      out.write("    <meta name=\"keywords\" content=\"admin templates, bootstrap admin templates, bootstrap 4, dashboard, dashboard templets, sass admin templets, html admin templates, responsive, bootstrap admin templates free download,premium bootstrap admin templates, datta able, datta able bootstrap admin template, free admin theme, free dashboard template\"/>\n");
      out.write("    <meta name=\"author\" content=\"CodedThemes\"/>\n");
      out.write("\n");
      out.write("    <!-- Favicon icon -->\n");
      out.write("    <link rel=\"icon\" href=\"assets/images/favicon.ico\" type=\"image/x-icon\">\n");
      out.write("    <!-- fontawesome icon -->\n");
      out.write("    <link rel=\"stylesheet\" href=\"assets/fonts/fontawesome/css/fontawesome-all.min.css\">\n");
      out.write("    <!-- animation css -->\n");
      out.write("    <link rel=\"stylesheet\" href=\"assets/plugins/animation/css/animate.min.css\">\n");
      out.write("    <!-- vendor css -->\n");
      out.write("    <link rel=\"stylesheet\" href=\"assets/css/style.css\">\n");
      out.write("\n");
      out.write("</head>\n");

        String name=(String)session.getAttribute("dealername");
        String pic=(String)session.getAttribute("pic");
 
      out.write("\n");
      out.write("<body>\n");
      out.write("    <!-- [ Pre-loader ] start -->\n");
      out.write("    <div class=\"loader-bg\">\n");
      out.write("        <div class=\"loader-track\">\n");
      out.write("            <div class=\"loader-fill\"></div>\n");
      out.write("        </div>\n");
      out.write("    </div>\n");
      out.write("    <!-- [ Pre-loader ] End -->\n");
      out.write("    <!-- [ navigation menu ] start -->\n");
      out.write("    <nav class=\"pcoded-navbar\">\n");
      out.write("        <div class=\"navbar-wrapper\">\n");
      out.write("            <div class=\"navbar-brand header-logo\">\n");
      out.write("                <a href=\"sendoreq.jsp\" class=\"b-brand\">\n");
      out.write("                    <div class=\"b-bg\">\n");
      out.write("                        <i class=\"feather icon-trending-up\"></i>\n");
      out.write("                    </div>\n");
      out.write("                    <span class=\"b-title\">");
      out.print(name);
      out.write("</span>\n");
      out.write("                </a>\n");
      out.write("                <a class=\"mobile-menu\" id=\"mobile-collapse\" href=\"javascript:\"><span></span></a>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"navbar-content scroll-div\">\n");
      out.write("                <ul class=\"nav pcoded-inner-navbar\">\n");
      out.write("                    <li data-username=\"basic components Button Alert Badges breadcrumb Paggination progress Tooltip popovers Carousel Cards Collapse Tabs pills Modal Grid System Typography Extra Shadows Embeds\" class=\"nav-item pcoded-hasmenu\">\n");
      out.write("                        <a href=\"javascript:\" class=\"nav-link \"><span class=\"pcoded-micon\"><i class=\"feather icon-box\"></i></span><span class=\"pcoded-mtext\">Menus</span></a>\n");
      out.write("                        <ul class=\"pcoded-submenu\">\n");
      out.write("                            <li class=\"\"><a href=\"vieproduct.jsp\" class=\"\">View and Send Order Requests</a></li>\n");
      out.write("                             <li class=\"\"><a href=\"Order_Confirm.jsp\" class=\"\">Receive confirmed Order Requests</a></li>\n");
      out.write("                         </ul>\n");
      out.write("                    </li>\n");
      out.write("                 </ul>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("    </nav>\n");
      out.write("    <!-- [ navigation menu ] end -->\n");
      out.write("    \n");
      out.write("    <!-- [ Header ] start -->\n");
      out.write("    <header class=\"navbar pcoded-header navbar-expand-lg navbar-light\">\n");
      out.write("        <div class=\"m-header\">\n");
      out.write("            <a class=\"mobile-menu\" id=\"mobile-collapse1\" href=\"javascript:\"><span></span></a>\n");
      out.write("            <a href=\"index.jsp\" class=\"b-brand\">\n");
      out.write("                   <div class=\"b-bg\">\n");
      out.write("                       <i class=\"feather icon-trending-up\"></i>\n");
      out.write("                   </div>\n");
      out.write("                   <span class=\"b-title\">Datta Able</span>\n");
      out.write("               </a>\n");
      out.write("        </div>\n");
      out.write("        <a class=\"mobile-menu\" id=\"mobile-header\" href=\"javascript:\">\n");
      out.write("            <i class=\"feather icon-more-horizontal\"></i>\n");
      out.write("        </a>\n");
      out.write("        <div class=\"collapse navbar-collapse\">\n");
      out.write("            <ul class=\"navbar-nav mr-auto\">\n");
      out.write("                <li><a href=\"javascript:\" class=\"full-screen\" onclick=\"javascript:toggleFullScreen()\"><i class=\"feather icon-maximize\"></i></a></li> \n");
      out.write("            </ul>\n");
      out.write("            <ul  class=\"navbar-nav ml-auto\">\n");
      out.write("                <li>\n");
      out.write("                    <div class=\"dropdown drp-user\">\n");
      out.write("                        <a href=\"javascript:\" class=\"dropdown-toggle\" data-toggle=\"dropdown\">\n");
      out.write("                            <i class=\"icon feather icon-settings\"></i>\n");
      out.write("                        </a>\n");
      out.write("                        <div class=\"dropdown-menu dropdown-menu-right profile-notification\">\n");
      out.write("                            <div class=\"pro-head\">\n");
      out.write("                                <img src=\"dataset/");
      out.print(pic);
      out.write("\" class=\"img-radius\" alt=\"User-Profile-Image\">\n");
      out.write("                                <span>");
      out.print(name);
      out.write("</span>\n");
      out.write("                                <a href=\"index.jsp\" class=\"dud-logout\" title=\"Logout\">\n");
      out.write("                                    <i class=\"feather icon-log-out\"></i>\n");
      out.write("                                </a>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </li>\n");
      out.write("            </ul>\n");
      out.write("        </div>\n");
      out.write("    </header>\n");
      out.write("    <!-- [ Header ] end -->\n");
      out.write("    <!-- [ Main Content ] start -->\n");
      out.write("   <style>\n");
      out.write("        #maincontent{\n");
      out.write("            margin-left: 20%;\n");
      out.write("            margin-top:7%;\n");
      out.write("        }\n");
      out.write("        h2{\n");
      out.write("            font-size: 25px;\n");
      out.write("            color: mediumvioletred;\n");
      out.write("        }\n");
      out.write("        table{\n");
      out.write("            width: 50%;\n");
      out.write("        }\n");
      out.write("        table,td,tr,th{\n");
      out.write("            text-align: center;\n");
      out.write("            padding:5px;\n");
      out.write("            font-weight: bold;\n");
      out.write("            font-size: 16px;\n");
      out.write("        }\n");
      out.write("        input{\n");
      out.write("            color:black;\n");
      out.write("            border-radius: 5px;\n");
      out.write("            width: 220px;\n");
      out.write("        }\n");
      out.write("        select{\n");
      out.write("            color:black;\n");
      out.write("            width: 220px;\n");
      out.write("            height: 30px;\n");
      out.write("            border-radius: 5px;\n");
      out.write("            font-size: 15px;\n");
      out.write("        }\n");
      out.write("        td{\n");
      out.write("            color:darkblue;\n");
      out.write("        }\n");
      out.write("    </style>\n");
      out.write("    <div id=\"maincontent\">\n");
      out.write("     <center>\n");
      out.write("         <h2><b>Order Products</b></h2><br>\n");
      out.write("        <form action=\"form9.jsp\">            \n");
      out.write("        <table class=\"ali\">\n");
      out.write("            ");

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
                Connection con=new DB().Connect();
                String gg;
                PreparedStatement p1=con.prepareStatement("select * from doorglassdesign where door_glass_design_name='"+g+"' ");
                ResultSet r1=p1.executeQuery();
                if(r1.next()){
                    gg=r1.getString("door_glass_design_group");
                }
            
      out.write("\n");
      out.write("            <tr><td>Door Category</td><td><Input type=\"text\" name=\"category\" value=\"");
      out.print(c);
      out.write("\" readonly=\"\"></td></tr>\n");
      out.write("            <tr><td>Door Model</td><td><Input type=\"text\" name=\"model\" value=\"");
      out.print(m);
      out.write("\" readonly=\"\"></td></tr>\n");
      out.write("            <tr><td>Door Type</td><td><Input type=\"text\" name=\"type\" value=\"");
      out.print(t);
      out.write("\" readonly=\"\"></td></tr>\n");
      out.write("            <tr><td>Door Frame</td><td><Input type=\"text\" name=\"frame\" value=\"");
      out.print(f);
      out.write("\" readonly=\"\"></td></tr>\n");
      out.write("            <tr><td>Door Width</td><td><Input type=\"text\" name=\"width\" value=\"");
      out.print(w);
      out.write("\" readonly=\"\"></td></tr>\n");
      out.write("            <tr><td>Door Height</td><td><Input type=\"text\" name=\"height\" value=\"");
      out.print(h);
      out.write("\" readonly=\"\"></td></tr>\n");
      out.write("            <tr><td>Door Panel</td><td><Input type=\"text\" name=\"panel\" value=\"");
      out.print(p);
      out.write("\" readonly=\"\"></td></tr>\n");
      out.write("            <tr><td>Door Handling</td><td><Input type=\"text\" name=\"handle\" value=\"");
      out.print(ha);
      out.write("\" readonly=\"\"></td></tr>\n");
      out.write("            <tr><td>Door Assembly</td><td><Input type=\"text\" name=\"assembly\" value=\"");
      out.print(a);
      out.write("\" readonly=\"\"></td></tr>\n");
      out.write("            <tr><td>Door Finish</td><td><Input type=\"text\" name=\"finish\" value=\"");
      out.print(fi);
      out.write("\" readonly=\"\"></td></tr>\n");
      out.write("            <tr><td>Door Glass Design</td><td><Input type=\"text\" name=\"glass\" value=\"");
      out.print(g);
      out.write("\" readonly=\"\"></td></tr>\n");
      out.write("           <tr>\n");
      out.write("               <td>Door Glass Type</td>\n");
      out.write("               <td><select name=\"glass1\">\n");
      out.write("                       <option selected=\"\" disabled=\"\">Choose one</option>\n");
      out.write("                       ");

                            PreparedStatement p3=con.prepareStatement("select * from doorglasstype where la");
                            ResultSet r3=p3.executeQuery();
                            while(r3.next()){
                       
      out.write("\n");
      out.write("                       <option value=\"");
      out.print(r3.getString("door_glass_type_name"));
      out.write('"');
      out.write('>');
      out.print(r3.getString("door_glass_type_name"));
      out.write("</option>");
}
      out.write("\n");
      out.write("                   </select></td></tr>\n");
      out.write("           <tr> <td align=\"center\" colspan=\"2\"><input type=\"submit\" value=\"Choose\" /></td></tr>\n");
      out.write("                \n");
      out.write("       </table></form>\n");
      out.write("     </center>\n");
      out.write("     </div>\n");
      out.write("    <!-- [ Main Content ] end -->\n");
      out.write("\n");
      out.write("    <!-- Required Js -->\n");
      out.write("<script src=\"assets/js/vendor-all.min.js\"></script>\n");
      out.write("\t<script src=\"assets/plugins/bootstrap/js/bootstrap.min.js\"></script>\n");
      out.write("    <script src=\"assets/js/pcoded.min.js\"></script>\n");
      out.write("\n");
      out.write("</body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
