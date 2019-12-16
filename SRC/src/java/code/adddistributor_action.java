package code;
import db.DB;
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileItemFactory;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
public class adddistributor_action extends HttpServlet {
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, FileUploadException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {
            
            ServletContext sc=request.getSession().getServletContext();
            
            List<String> ms = new ArrayList<String>();
            String finalimage = "";
            boolean isMultipart = ServletFileUpload.isMultipartContent(
                    request);
            List<String> m = new ArrayList<String>();
            File savedFile;
            
            if (!isMultipart) {
                
                System.out.println("File Not Uploaded");
            }
            else {
                FileItemFactory factory = new DiskFileItemFactory();
                ServletFileUpload upload = new ServletFileUpload(factory);
                List items = null;
                
                items = upload.parseRequest(request);
                Iterator itr = items.iterator();
                while (itr.hasNext()) {
                    List<String> al = new ArrayList<String>();
                    
                    String sss = "";
                    FileItem item = (FileItem) itr.next();
                    String value = "";
                    String a[];
                    if (item.isFormField()) {
                        String name = item.getFieldName();
                        //System.out.println("name: "+name+'\n');
                        value = item.getString();
                        // System.out.println("value: "+value);
                        al.add(value);
                        for (int i = 0; i < al.size(); i++) {
                            sss += al.get(i);
                            System.out.println("is this image" + sss);
                            
                            
                        }
                        
                        a = sss.split("-");
                        for (int i = 0; i < a.length; i++) {
                            
                            String am = a[i];
                            System.out.println("aaaaaaaaaaaaaaaa" + a[i]);
                            m.add(a[i]);
                        }
                    } else {
                        
                        String itemName = item.getName();
                        
                        
                        String reg = "[.*]";
                        String replacingtext = "";
                        
                        Pattern pattern = Pattern.compile(reg);
                        Matcher matcher = pattern.matcher(itemName);
                        StringBuffer buffer = new StringBuffer();
                        
                        while (matcher.find())
                        {
                            matcher.appendReplacement(buffer, replacingtext);
                        }
                        int IndexOf = itemName.indexOf(".");
                        int Indexf = itemName.indexOf(".");
                        String domainName = itemName.substring(IndexOf);
                        
                        finalimage = buffer.toString() + domainName;
                        System.out.println("Final Image===" + finalimage);
                        ms.add(finalimage);
                        ms.get(0);
                        String  fn=ms.get(0);
                        System.out.println("trying to put all in store");
                        savedFile = new File(sc.getRealPath("dataset")+"\\"+finalimage);
                        
                        String a0=request.getParameter(value);
                        
                        try
                        {
                            item.write(savedFile);
                        } catch (Exception e) {
                            e.printStackTrace();
                        }
                        
                    }
                }
            }
            Connection con=new DB().Connect();
           PreparedStatement ps=con.prepareStatement("insert into distributor_register(distributor_id,username,password,mobile,mail,file,address)values('"+m.get(0)+"','"+m.get(1)+"','"+m.get(2)+"','"+m.get(3)+"','"+m.get(4)+"','"+ms.get(0)+"','"+m.get(5)+"')");
	            System.out.println(ps);  
                    ps.executeUpdate();
                 System.out.println(ps);
                 out.println("<script type=\"text/javascript\">"); 			
	                out.println("alert(\"Distributor Added Successfully..\")");
	                out.println("</script>"); 
	                RequestDispatcher rd=request.getRequestDispatcher("Manage_Distributors.jsp");
	                rd.include(request, response);
            
        
            
        } catch (SQLException ex) {
            out.println("<script>"
                        +"alert('Please Try Again.')"
                        +"</script>");
                RequestDispatcher rd=request.getRequestDispatcher("add_distributor.jsp");
                rd.include(request, response);
        }
    }
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (FileUploadException ex) {
            Logger.getLogger(adddistributor_action.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (FileUploadException ex) {
            Logger.getLogger(adddistributor_action.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
