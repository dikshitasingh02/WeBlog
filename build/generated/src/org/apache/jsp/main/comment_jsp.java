package org.apache.jsp.main;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;
import java.util.*;

public final class comment_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      response.setContentType("text/html;charset=UTF-8");
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
      out.write("\n");

                if(request.getParameter("comment").trim().length()>0 || request.getParameter("name").trim().length()>0 || request.getParameter("email").trim().length()>0 || request.getParameter("code").trim().length()>0){
		String comment = request.getParameter("comment").trim();
                String name = request.getParameter("name").trim();
                String email = request.getParameter("email").trim();
                String id = request.getParameter("id");
                String to_code = request.getParameter("code").trim();
                LinkedList l = new LinkedList();
                for(char ch='A' ; ch<='Z' ; ch++){
                    l.add(""+ch);
                }
                for(char ch='a' ; ch<='z' ; ch++){
                    l.add(""+ch);
                }
                for(int ch='0' ; ch<='9' ; ch++){
                    l.add(""+ch);
                }
                Collections.shuffle(l);
                String code = "";
                for(int i=0 ; i<6 ; i++){
                    code = code+l.get(i);
                }
                int sn = 0;
		String dt =""+new java.util.Date();
                try{
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/blog","root","");
                    Statement st = cn.createStatement();
                    ResultSet rs = st.executeQuery("select MAX(sn) from comment ");
                    if(rs.next()){
                        sn = rs.getInt(1);
                    }
                    sn++;
                    code = code+"_"+sn;					
                    PreparedStatement ps = cn.prepareStatement("insert into comment values(?,?,?,?,?,?,?)");
                    ps.setInt(1,sn);
                    ps.setString(2,code);
                    ps.setString(3,comment);
	            ps.setString(4,name);
		    ps.setString(5,email);
                    ps.setString(6,dt);
		    ps.setString(7,to_code);
                    if(ps.executeUpdate()>0){
                        out.println("success");
                    }
                    cn.close();
                }
                catch(Exception er){
                    out.println(er.getMessage());
                }
                }
	
    

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
