package org.apache.jsp.main;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class index_002dgrid_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<html lang=\"en-us\"><head>\n");
      out.write("  <meta charset=\"utf-8\">\n");
      out.write("  <title>WeBlog</title>\n");
      out.write("\n");
      out.write("  <!-- mobile responsive meta -->\n");
      out.write("  <meta name=\"viewport\" content=\"width=device-width, initial-scale=1, maximum-scale=1\">\n");
      out.write("  <meta name=\"description\" content=\"This is meta description\">\n");
      out.write("  <meta name=\"author\" content=\"Themefisher\">\n");
      out.write("  <meta name=\"generator\" content=\"Hugo 0.74.3\" />\n");
      out.write("\n");
      out.write("  <!-- plugins -->\n");
      out.write("  \n");
      out.write("  <link rel=\"stylesheet\" href=\"plugins/bootstrap/bootstrap.min.css\">\n");
      out.write("  <link rel=\"stylesheet\" href=\"plugins/themify-icons/themify-icons.css\">\n");
      out.write("  <link rel=\"stylesheet\" href=\"plugins/slick/slick.css\">\n");
      out.write("\n");
      out.write("  <!-- Main Stylesheet -->\n");
      out.write("  <link rel=\"stylesheet\" href=\"css/style.css\" media=\"screen\">\n");
      out.write("\n");
      out.write("  <!--Favicon-->\n");
      out.write("  <link rel=\"shortcut icon\" href=\"images/favicon1.png\" type=\"image/x-icon\">\n");
      out.write("  <link rel=\"icon\" href=\"images/favicon1.png\" type=\"image/x-icon\">\n");
      out.write("\n");
      out.write("  <meta property=\"og:title\" content=\"Reader | Hugo Personal Blog Template\" />\n");
      out.write("  <meta property=\"og:description\" content=\"This is meta description\" />\n");
      out.write("  <meta property=\"og:type\" content=\"website\" />\n");
      out.write("  <meta property=\"og:url\" content=\"\" />\n");
      out.write("  <meta property=\"og:updated_time\" content=\"2020-03-15T15:40:24+06:00\" />\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("  <!-- navigation -->\n");
      out.write("<header class=\"navigation fixed-top\">\n");
      out.write("  <div class=\"container\">\n");
      out.write("    <nav class=\"navbar navbar-expand-lg navbar-white\">\n");
      out.write("      <a class=\"navbar-brand order-1\" href=\"index.html\">\n");
      out.write("        <img class=\"img-fluid\" width=\"100px\" src=\"images/logo.png\"\n");
      out.write("          alt=\"\">\n");
      out.write("      </a>\n");
      out.write("      <div class=\"collapse navbar-collapse text-center order-lg-2 order-3\" id=\"navigation\">\n");
      out.write("        <ul class=\"navbar-nav mx-auto\">\n");
      out.write("          <li class=\"nav-item\">\n");
      out.write("            <a class=\"nav-link\" href=\"index.jsp\">Home</a>\n");
      out.write("          </li>\n");
      out.write("\t\t  \n");
      out.write("\t\t  <li class=\"nav-item\">\n");
      out.write("            <a class=\"nav-link\" href=\"contact.html\">About</a>\n");
      out.write("          </li>\n");
      out.write("\t\t  \n");
      out.write("          \n");
      out.write("\n");
      out.write("          <li class=\"nav-item\">\n");
      out.write("            <a class=\"nav-link\" href=\"#subscribe\">Contact</a>\n");
      out.write("          </li>\n");
      out.write("\n");
      out.write("          <li class=\"nav-item dropdown\">\n");
      out.write("            <a class=\"nav-link\" href=\"#\" role=\"button\" data-toggle=\"dropdown\" aria-haspopup=\"true\"\n");
      out.write("              aria-expanded=\"false\">\n");
      out.write("              Categories <i class=\"ti-angle-down ml-1\"></i>\n");
      out.write("            </a>\n");
      out.write("            <div class=\"dropdown-menu\">\n");
      out.write("            ");

							try{
								Class.forName("com.mysql.jdbc.Driver");
								Connection cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/blog","root","");
								Statement st = cn.createStatement();
								ResultSet rs = st.executeQuery("select * from category order by sn desc");
								while(rs.next()){
									
      out.write("\n");
      out.write("                     <a class=\"dropdown-item\" href=\"index-grid.jsp?id=");
      out.print(rs.getString("code"));
      out.write('"');
      out.write('>');
      out.print(rs.getString("category"));
      out.write("</a>\n");
      out.write("\t ");

								}
								cn.close();
							}
							catch(Exception er){
								out.println(er.getMessage());
							}
						
      out.write(" \n");
      out.write("\n");
      out.write("              \n");
      out.write("              \n");
      out.write("            </div>\n");
      out.write("          </li>\n");
      out.write("\n");
      out.write("          <li class=\"nav-item\">\n");
      out.write("            <a class=\"nav-link\" href=\"shop.html\">Shop</a>\n");
      out.write("          </li>\n");
      out.write("        </ul>\n");
      out.write("      </div>\n");
      out.write("\n");
      out.write("      <div class=\"order-2 order-lg-3 d-flex align-items-center\">\n");
      out.write("        \n");
      out.write("        \n");
      out.write("        <!-- search -->\n");
      out.write("        <form class=\"search-bar\">\n");
      out.write("          <input id=\"search-query\" name=\"s\" type=\"search\" placeholder=\"Type &amp; Hit Enter...\">\n");
      out.write("        </form>\n");
      out.write("        \n");
      out.write("        <button class=\"navbar-toggler border-0 order-1\" type=\"button\" data-toggle=\"collapse\" data-target=\"#navigation\">\n");
      out.write("          <i class=\"ti-menu\"></i>\n");
      out.write("        </button>\n");
      out.write("      </div>\n");
      out.write("\n");
      out.write("    </nav>\n");
      out.write("  </div>\n");
      out.write("</header>\n");
      out.write("<!-- /navigation -->\n");
      out.write("\n");
      out.write("<!-- start of banner -->\n");
      out.write("<div class=\"banner text-center\">\n");
      out.write("  <div class=\"container\">\n");
      out.write("    <div class=\"row\">\n");
      out.write("      <div class=\"col-lg-9 mx-auto\">\n");
      out.write("\t    ");

	                    String id = request.getParameter("id");
							try{
								Class.forName("com.mysql.jdbc.Driver");
								Connection cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/blog","root","");
								Statement st = cn.createStatement();
								ResultSet rs = st.executeQuery("select * from category where code='"+id+"'");
								while(rs.next()){
									
      out.write("\n");
      out.write("        <h1 class=\"mb-5\">");
      out.print(rs.getString("category"));
      out.write("</h1>\n");
      out.write("\t\t ");

								}
								cn.close();
							}
							catch(Exception er){
								out.println(er.getMessage());
							}
						
      out.write("\n");
      out.write("\t\t\n");
      out.write("        <ul class=\"list-inline widget-list-inline\">\n");
      out.write("\t\t  ");

							try{
								Class.forName("com.mysql.jdbc.Driver");
								Connection cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/blog","root","");
								Statement st = cn.createStatement();
								ResultSet rs = st.executeQuery("select * from blog where catcode='"+id+"'");
								while(rs.next()){
									
      out.write("\n");
      out.write("          <li class=\"list-inline-item\"><a href=\"tags.html\">");
      out.print(rs.getString("title"));
      out.write("</a></li>\n");
      out.write("           ");

								}
								cn.close();
							}
							catch(Exception er){
								out.println(er.getMessage());
							}
						
      out.write("  \n");
      out.write("        </ul>\n");
      out.write("      </div>\n");
      out.write("    </div>\n");
      out.write("  </div>\n");
      out.write("\n");
      out.write("  \n");
      out.write("  <svg class=\"banner-shape-1\" width=\"39\" height=\"40\" viewBox=\"0 0 39 40\" fill=\"none\" xmlns=\"http://www.w3.org/2000/svg\">\n");
      out.write("    <path d=\"M0.965848 20.6397L0.943848 38.3906L18.6947 38.4126L18.7167 20.6617L0.965848 20.6397Z\" stroke=\"#040306\"\n");
      out.write("      stroke-miterlimit=\"10\" />\n");
      out.write("    <path class=\"path\" d=\"M10.4966 11.1283L10.4746 28.8792L28.2255 28.9012L28.2475 11.1503L10.4966 11.1283Z\" />\n");
      out.write("    <path d=\"M20.0078 1.62949L19.9858 19.3804L37.7367 19.4024L37.7587 1.65149L20.0078 1.62949Z\" stroke=\"#040306\"\n");
      out.write("      stroke-miterlimit=\"10\" />\n");
      out.write("  </svg>\n");
      out.write("  \n");
      out.write("  <svg class=\"banner-shape-2\" width=\"39\" height=\"39\" viewBox=\"0 0 39 39\" fill=\"none\" xmlns=\"http://www.w3.org/2000/svg\">\n");
      out.write("    <g filter=\"url(#filter0_d)\">\n");
      out.write("      <path class=\"path\"\n");
      out.write("        d=\"M24.1587 21.5623C30.02 21.3764 34.6209 16.4742 34.435 10.6128C34.2491 4.75147 29.3468 0.1506 23.4855 0.336498C17.6241 0.522396 13.0233 5.42466 13.2092 11.286C13.3951 17.1474 18.2973 21.7482 24.1587 21.5623Z\" />\n");
      out.write("      <path\n");
      out.write("        d=\"M5.64626 20.0297C11.1568 19.9267 15.7407 24.2062 16.0362 29.6855L24.631 29.4616L24.1476 10.8081L5.41797 11.296L5.64626 20.0297Z\"\n");
      out.write("        stroke=\"#040306\" stroke-miterlimit=\"10\" />\n");
      out.write("    </g>\n");
      out.write("    <defs>\n");
      out.write("      <filter id=\"filter0_d\" x=\"0.905273\" y=\"0\" width=\"37.8663\" height=\"38.1979\" filterUnits=\"userSpaceOnUse\"\n");
      out.write("        color-interpolation-filters=\"sRGB\">\n");
      out.write("        <feFlood flood-opacity=\"0\" result=\"BackgroundImageFix\" />\n");
      out.write("        <feColorMatrix in=\"SourceAlpha\" type=\"matrix\" values=\"0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 127 0\" />\n");
      out.write("        <feOffset dy=\"4\" />\n");
      out.write("        <feGaussianBlur stdDeviation=\"2\" />\n");
      out.write("        <feColorMatrix type=\"matrix\" values=\"0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.25 0\" />\n");
      out.write("        <feBlend mode=\"normal\" in2=\"BackgroundImageFix\" result=\"effect1_dropShadow\" />\n");
      out.write("        <feBlend mode=\"normal\" in=\"SourceGraphic\" in2=\"effect1_dropShadow\" result=\"shape\" />\n");
      out.write("      </filter>\n");
      out.write("    </defs>\n");
      out.write("  </svg>\n");
      out.write("\n");
      out.write("  \n");
      out.write("  <svg class=\"banner-shape-3\" width=\"39\" height=\"40\" viewBox=\"0 0 39 40\" fill=\"none\" xmlns=\"http://www.w3.org/2000/svg\">\n");
      out.write("    <path d=\"M0.965848 20.6397L0.943848 38.3906L18.6947 38.4126L18.7167 20.6617L0.965848 20.6397Z\" stroke=\"#040306\"\n");
      out.write("      stroke-miterlimit=\"10\" />\n");
      out.write("    <path class=\"path\" d=\"M10.4966 11.1283L10.4746 28.8792L28.2255 28.9012L28.2475 11.1503L10.4966 11.1283Z\" />\n");
      out.write("    <path d=\"M20.0078 1.62949L19.9858 19.3804L37.7367 19.4024L37.7587 1.65149L20.0078 1.62949Z\" stroke=\"#040306\"\n");
      out.write("      stroke-miterlimit=\"10\" />\n");
      out.write("  </svg>\n");
      out.write("\n");
      out.write("  \n");
      out.write("  <svg class=\"banner-border\" height=\"240\" viewBox=\"0 0 2202 240\" fill=\"none\" xmlns=\"http://www.w3.org/2000/svg\">\n");
      out.write("    <path\n");
      out.write("      d=\"M1 123.043C67.2858 167.865 259.022 257.325 549.762 188.784C764.181 125.427 967.75 112.601 1200.42 169.707C1347.76 205.869 1901.91 374.562 2201 1\"\n");
      out.write("      stroke-width=\"2\" />\n");
      out.write("  </svg>\n");
      out.write("</div>\n");
      out.write("<!-- end of banner -->\n");
      out.write("<section class=\"section pb-0\">\n");
      out.write("  <div class=\"container\">\n");
      out.write("    <div class=\"row\">\n");
      out.write("      <div class=\"col-lg-4 mb-5\">\n");
      out.write("        <h2 class=\"h5 section-title\">Editors Pick</h2>\n");
      out.write("        <article class=\"card\">\n");
      out.write("          <div class=\"post-slider slider-sm\">\n");
      out.write("            <img src=\"images/post/post-1.jpg\" class=\"card-img-top\" alt=\"post-thumb\">\n");
      out.write("          </div>\n");
      out.write("          \n");
      out.write("          <div class=\"card-body\">\n");
      out.write("            <h3 class=\"h4 mb-3\"><a class=\"post-title\" href=\"post-details.html\">Use apples to give your bakes caramel and a moist texture</a></h3>\n");
      out.write("            <ul class=\"card-meta list-inline\">\n");
      out.write("              <li class=\"list-inline-item\">\n");
      out.write("                <a href=\"author-single.html\" class=\"card-meta-author\">\n");
      out.write("                  <img src=\"images/john-doe.jpg\">\n");
      out.write("                  <span>Charls Xaviar</span>\n");
      out.write("                </a>\n");
      out.write("              </li>\n");
      out.write("              <li class=\"list-inline-item\">\n");
      out.write("                <i class=\"ti-timer\"></i>2 Min To Read\n");
      out.write("              </li>\n");
      out.write("              <li class=\"list-inline-item\">\n");
      out.write("                <i class=\"ti-calendar\"></i>14 jan, 2020\n");
      out.write("              </li>\n");
      out.write("              <li class=\"list-inline-item\">\n");
      out.write("                <ul class=\"card-meta-tag list-inline\">\n");
      out.write("                  <li class=\"list-inline-item\"><a href=\"tags.html\">Color</a></li>\n");
      out.write("                  <li class=\"list-inline-item\"><a href=\"tags.html\">Recipe</a></li>\n");
      out.write("                  <li class=\"list-inline-item\"><a href=\"tags.html\">Fish</a></li>\n");
      out.write("                </ul>\n");
      out.write("              </li>\n");
      out.write("            </ul>\n");
      out.write("            <p>Itâs no secret that the digital industry is booming. From exciting startups to â¦</p>\n");
      out.write("            <a href=\"post-details.html\" class=\"btn btn-outline-primary\">Read More</a>\n");
      out.write("          </div>\n");
      out.write("        </article>\n");
      out.write("      </div>\n");
      out.write("      <div class=\"col-lg-4 mb-5\">\n");
      out.write("        <h2 class=\"h5 section-title\">Trending Post</h2>\n");
      out.write("        \n");
      out.write("        <article class=\"card mb-4\">\n");
      out.write("          <div class=\"card-body d-flex\">\n");
      out.write("            <img class=\"card-img-sm\" src=\"images/post/post-3.jpg\">\n");
      out.write("            <div class=\"ml-3\">\n");
      out.write("              <h4><a href=\"post-details.html\" class=\"post-title\">Advice From a Twenty Something</a></h4>\n");
      out.write("              <ul class=\"card-meta list-inline mb-0\">\n");
      out.write("                <li class=\"list-inline-item mb-0\">\n");
      out.write("                  <i class=\"ti-calendar\"></i>14 jan, 2020\n");
      out.write("                </li>\n");
      out.write("                <li class=\"list-inline-item mb-0\">\n");
      out.write("                  <i class=\"ti-timer\"></i>2 Min To Read\n");
      out.write("                </li>\n");
      out.write("              </ul>\n");
      out.write("            </div>\n");
      out.write("          </div>\n");
      out.write("        </article>\n");
      out.write("        \n");
      out.write("        <article class=\"card mb-4\">\n");
      out.write("          <div class=\"card-body d-flex\">\n");
      out.write("            <img class=\"card-img-sm\" src=\"images/post/post-2.jpg\">\n");
      out.write("            <div class=\"ml-3\">\n");
      out.write("              <h4><a href=\"post-details.html\" class=\"post-title\">The Design Files - Homes Minimalist</a></h4>\n");
      out.write("              <ul class=\"card-meta list-inline mb-0\">\n");
      out.write("                <li class=\"list-inline-item mb-0\">\n");
      out.write("                  <i class=\"ti-calendar\"></i>14 jan, 2020\n");
      out.write("                </li>\n");
      out.write("                <li class=\"list-inline-item mb-0\">\n");
      out.write("                  <i class=\"ti-timer\"></i>2 Min To Read\n");
      out.write("                </li>\n");
      out.write("              </ul>\n");
      out.write("            </div>\n");
      out.write("          </div>\n");
      out.write("        </article>\n");
      out.write("        \n");
      out.write("        <article class=\"card mb-4\">\n");
      out.write("          <div class=\"card-body d-flex\">\n");
      out.write("            <img class=\"card-img-sm\" src=\"images/post/post-4.jpg\">\n");
      out.write("            <div class=\"ml-3\">\n");
      out.write("              <h4><a href=\"post-details.html\" class=\"post-title\">The Skinny Confidential</a></h4>\n");
      out.write("              <ul class=\"card-meta list-inline mb-0\">\n");
      out.write("                <li class=\"list-inline-item mb-0\">\n");
      out.write("                  <i class=\"ti-calendar\"></i>14 jan, 2020\n");
      out.write("                </li>\n");
      out.write("                <li class=\"list-inline-item mb-0\">\n");
      out.write("                  <i class=\"ti-timer\"></i>2 Min To Read\n");
      out.write("                </li>\n");
      out.write("              </ul>\n");
      out.write("            </div>\n");
      out.write("          </div>\n");
      out.write("        </article>\n");
      out.write("      </div>\n");
      out.write("      \n");
      out.write("      <div class=\"col-lg-4 mb-5\">\n");
      out.write("        <h2 class=\"h5 section-title\">Popular Post</h2>\n");
      out.write("        \n");
      out.write("        <article class=\"card\">\n");
      out.write("          <div class=\"post-slider slider-sm\">\n");
      out.write("            <img src=\"images/post/post-5.jpg\" class=\"card-img-top\" alt=\"post-thumb\">\n");
      out.write("          </div>\n");
      out.write("          <div class=\"card-body\">\n");
      out.write("            <h3 class=\"h4 mb-3\"><a class=\"post-title\" href=\"post-details.html\">How To Make Cupcakes and Cashmere Recipe At Home</a></h3>\n");
      out.write("            <ul class=\"card-meta list-inline\">\n");
      out.write("              <li class=\"list-inline-item\">\n");
      out.write("                <a href=\"author-single.html\" class=\"card-meta-author\">\n");
      out.write("                  <img src=\"images/kate-stone.jpg\" alt=\"Kate Stone\">\n");
      out.write("                  <span>Kate Stone</span>\n");
      out.write("                </a>\n");
      out.write("              </li>\n");
      out.write("              <li class=\"list-inline-item\">\n");
      out.write("                <i class=\"ti-timer\"></i>2 Min To Read\n");
      out.write("              </li>\n");
      out.write("              <li class=\"list-inline-item\">\n");
      out.write("                <i class=\"ti-calendar\"></i>14 jan, 2020\n");
      out.write("              </li>\n");
      out.write("              <li class=\"list-inline-item\">\n");
      out.write("                <ul class=\"card-meta-tag list-inline\">\n");
      out.write("                  <li class=\"list-inline-item\"><a href=\"tags.html\">City</a></li>\n");
      out.write("                  <li class=\"list-inline-item\"><a href=\"tags.html\">Food</a></li>\n");
      out.write("                  <li class=\"list-inline-item\"><a href=\"tags.html\">Taste</a></li>\n");
      out.write("                </ul>\n");
      out.write("              </li>\n");
      out.write("            </ul>\n");
      out.write("            <p>Itâs no secret that the digital industry is booming. From exciting startups to â¦</p>\n");
      out.write("            <a href=\"post-details.html\" class=\"btn btn-outline-primary\">Read More</a>\n");
      out.write("          </div>\n");
      out.write("        </article>\n");
      out.write("      </div>\n");
      out.write("      <div class=\"col-12\">\n");
      out.write("        <div class=\"border-bottom border-default\"></div>\n");
      out.write("      </div>\n");
      out.write("    </div>\n");
      out.write("  </div>\n");
      out.write("</section>\n");
      out.write("\n");
      out.write("<section class=\"section-sm\">\n");
      out.write("  <div class=\"container\">\n");
      out.write("    <div class=\"row justify-content-center\">\n");
      out.write("      <div class=\"col-8 mb-5 mb-lg-0\">\n");
      out.write("        <h2 class=\"h5 section-title\">Recent Post</h2>\n");
      out.write("        <div class=\"row\">\n");
      out.write("\t\t\n");
      out.write("\t\t");

                        
							try{
								
								
								
								Class.forName("com.mysql.jdbc.Driver");
								Connection cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/blog","root","");
								Statement st = cn.createStatement();
								ResultSet rs = st.executeQuery("select * from blog where catcode='"+id+"'");
								
								while(rs.next()){
									
      out.write("\n");
      out.write("          <div class=\"col-lg-6 col-sm-6\">\n");
      out.write("            <article class=\"card mb-4\">\n");
      out.write("              <div class=\"post-slider slider-sm\">\n");
      out.write("                <img src=\"upload/");
      out.print(rs.getString("code"));
      out.write(".jpg\" class=\"card-img-top\" alt=\"post-thumb\">\n");
      out.write("                <img src=\"upload/");
      out.print(rs.getString("code"));
      out.write(".jpg\" class=\"card-img-top\" alt=\"post-thumb\">\n");
      out.write("              </div>\n");
      out.write("              <div class=\"card-body\">\n");
      out.write("                <h3 class=\"h4 mb-3\"><a class=\"post-title\" href=\"post/elements/\">");
      out.print(rs.getString("title"));
      out.write("</a></h3>\n");
      out.write("                <ul class=\"card-meta list-inline\">\n");
      out.write("                  <li class=\"list-inline-item\">\n");
      out.write("                    <a href=\"author-single.html\" class=\"card-meta-author\">\n");
      out.write("                      <img src=\"images/john-doe.jpg\" alt=\"John Doe\">\n");
      out.write("                      <span>John Doe</span>\n");
      out.write("                    </a>\n");
      out.write("                  </li>\n");
      out.write("                  <li class=\"list-inline-item\">\n");
      out.write("                    <i class=\"ti-timer\"></i>3 Min To Read\n");
      out.write("                  </li>\n");
      out.write("                  <li class=\"list-inline-item\">\n");
      out.write("                    <i class=\"ti-calendar\"></i>");
      out.print(rs.getString("dt"));
      out.write("\n");
      out.write("                  </li>\n");
      out.write("                  <li class=\"list-inline-item\">\n");
      out.write("                    <ul class=\"card-meta-tag list-inline\">\n");
      out.write("                      <li class=\"list-inline-item\"><a href=\"tags.html\">Demo</a></li>\n");
      out.write("                      <li class=\"list-inline-item\"><a href=\"tags.html\">Elements</a></li>\n");
      out.write("                    </ul>\n");
      out.write("                  </li>\n");
      out.write("                </ul>\n");
      out.write("                <p>");
      out.print(rs.getString("sdesc"));
      out.write("</p>\n");
      out.write("                <a href=\"post/elements/\" class=\"btn btn-outline-primary\">Read More</a>\n");
      out.write("              </div>\n");
      out.write("            </article>\n");
      out.write("          </div>\n");
      out.write("           ");

								}
								cn.close();
							}
							catch(Exception er){
								out.println(er.getMessage());
							}
						
      out.write("\n");
      out.write("\t\t  \n");
      out.write("\t\t  \n");
      out.write("\t\t  \n");
      out.write("\t\t\n");
      out.write("          \n");
      out.write("        </div>\n");
      out.write("      </div>\n");
      out.write("\t \n");
      out.write("  <aside class=\"col-lg-4 sidebar-home\">\n");
      out.write("      \n");
      out.write("  <!-- Search -->\n");
      out.write("  <div class=\"widget\">\n");
      out.write("    <h4 class=\"widget-title\"><span>Search</span></h4>\n");
      out.write("    <form action=\"#!\" class=\"widget-search\">\n");
      out.write("      <input class=\"mb-3\" id=\"search-query\" name=\"s\" type=\"search\" placeholder=\"Type &amp; Hit Enter...\">\n");
      out.write("      <i class=\"ti-search\"></i>\n");
      out.write("      <button type=\"submit\" class=\"btn btn-primary btn-block\">Search</button>\n");
      out.write("    </form>\n");
      out.write("  </div>\n");
      out.write("\n");
      out.write("  <!-- about me -->\n");
      out.write("  <div class=\"widget widget-about\">\n");
      out.write("    <h4 class=\"widget-title\">Hi, I am Alex!</h4>\n");
      out.write("    <img class=\"img-fluid\" src=\"images/man.png\" alt=\"Themefisher\">\n");
      out.write("    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vel in in donec iaculis tempus odio nunc laoreet . Libero ullamcorper.</p>\n");
      out.write("    <ul class=\"list-inline social-icons mb-3\">\n");
      out.write("      \n");
      out.write("      <li class=\"list-inline-item\"><a href=\"#\"><i class=\"ti-facebook\"></i></a></li>\n");
      out.write("      \n");
      out.write("      <li class=\"list-inline-item\"><a href=\"#\"><i class=\"ti-twitter-alt\"></i></a></li>\n");
      out.write("      \n");
      out.write("      <li class=\"list-inline-item\"><a href=\"#\"><i class=\"ti-linkedin\"></i></a></li>\n");
      out.write("      \n");
      out.write("      <li class=\"list-inline-item\"><a href=\"#\"><i class=\"ti-github\"></i></a></li>\n");
      out.write("      \n");
      out.write("      <li class=\"list-inline-item\"><a href=\"#\"><i class=\"ti-youtube\"></i></a></li>\n");
      out.write("      \n");
      out.write("    </ul>\n");
      out.write("    <a href=\"about-me.html\" class=\"btn btn-primary mb-2\">About me</a>\n");
      out.write("  </div>\n");
      out.write("  \n");
      out.write("  <!-- Promotion -->\n");
      out.write("  <div class=\"promotion\">\n");
      out.write("    <img src=\"images/promotion.jpg\" class=\"img-fluid w-100\">\n");
      out.write("    <div class=\"promotion-content\">\n");
      out.write("      <h5 class=\"text-white mb-3\">Create Stunning Website!!</h5>\n");
      out.write("      <p class=\"text-white mb-4\">Lorem ipsum dolor sit amet, consectetur sociis. Etiam nunc amet id dignissim. Feugiat id tempor vel sit ornare turpis posuere.</p>\n");
      out.write("      <a href=\"https://themefisher.com/\" class=\"btn btn-primary\">Get Started</a>\n");
      out.write("    </div>\n");
      out.write("  </div>\n");
      out.write("\n");
      out.write("  <!-- authors -->\n");
      out.write("  <div class=\"widget widget-author\">\n");
      out.write("    <h4 class=\"widget-title\">Authors</h4>\n");
      out.write("    <div class=\"media align-items-center\">\n");
      out.write("      <div class=\"mr-3\">\n");
      out.write("        <img class=\"widget-author-image\" src=\"images/old-man.png\">\n");
      out.write("      </div>\n");
      out.write("      <div class=\"media-body\">\n");
      out.write("        <h5 class=\"mb-1\"><a class=\"post-title\" href=\"author-single.html\">Charls Xaviar</a></h5>\n");
      out.write("        <span>Author &amp; developer of Bexer, Biztrox theme</span>\n");
      out.write("      </div>\n");
      out.write("    </div>\n");
      out.write("    <div class=\"media align-items-center\">\n");
      out.write("      <div class=\"mr-3\">\n");
      out.write("        <img class=\"widget-author-image\" src=\"images/woman.png\">\n");
      out.write("      </div>\n");
      out.write("      <div class=\"media-body\">\n");
      out.write("        <h5 class=\"mb-1\"><a class=\"post-title\" href=\"author-single.html\">Kate Stone</a></h5>\n");
      out.write("        <span>Author &amp; developer of Bexer, Biztrox theme</span>\n");
      out.write("      </div>\n");
      out.write("    </div>\n");
      out.write("    <div class=\"media align-items-center\">\n");
      out.write("      <div class=\"mr-3\">\n");
      out.write("        <img class=\"widget-author-image\" src=\"images/man.png\" alt=\"John Doe\">\n");
      out.write("      </div>\n");
      out.write("      <div class=\"media-body\">\n");
      out.write("        <h5 class=\"mb-1\"><a class=\"post-title\" href=\"author-single.html\">John Doe</a></h5>\n");
      out.write("        <span>Author &amp; developer of Bexer, Biztrox theme</span>\n");
      out.write("      </div>\n");
      out.write("    </div>\n");
      out.write("  </div>\n");
      out.write("  <!-- Search -->\n");
      out.write("  \n");
      out.write("  <div class=\"widget\" id=\"subscribe\">\n");
      out.write("    <h4 class=\"widget-title\"><span>Never Miss A News</span></h4>\n");
      out.write("    <form action=\"#!\" method=\"post\" name=\"mc-embedded-subscribe-form\" target=\"_blank\"\n");
      out.write("      class=\"widget-search\">\n");
      out.write("      <input class=\"mb-3\" id=\"search-query\" name=\"s\" type=\"search\" placeholder=\"Your Email Address\">\n");
      out.write("      <i class=\"ti-email\"></i>\n");
      out.write("      <button type=\"submit\" class=\"btn btn-primary btn-block\" name=\"subscribe\">Subscribe now</button>\n");
      out.write("      <div style=\"position: absolute; left: -5000px;\" aria-hidden=\"true\">\n");
      out.write("        <input type=\"text\" name=\"b_463ee871f45d2d93748e77cad_a0a2c6d074\" tabindex=\"-1\">\n");
      out.write("      </div>\n");
      out.write("    </form>\n");
      out.write("  </div>\n");
      out.write("\n");
      out.write("  <!-- categories -->\n");
      out.write("  <div class=\"widget widget-categories\">\n");
      out.write("    <h4 class=\"widget-title\"><span>Categories</span></h4>\n");
      out.write("    <ul class=\"list-unstyled widget-list\">\n");
      out.write("\t\n");
      out.write("      ");

							try{
								Class.forName("com.mysql.jdbc.Driver");
								Connection cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/blog","root","");
								Statement st = cn.createStatement();
								ResultSet rs = st.executeQuery("select * from category order by sn desc");
								while(rs.next()){
									
      out.write("\n");
      out.write("      <li><a href=\"tags.html\" class=\"d-flex\"> ");
      out.print(rs.getString("category"));
      out.write("<small class=\"ml-auto\">(4)</small></a></li>\n");
      out.write("\t  \n");
      out.write("\t  ");

								}
								cn.close();
							}
							catch(Exception er){
								out.println(er.getMessage());
							}
						
      out.write("\n");
      out.write("      \n");
      out.write("    </ul>\n");
      out.write("  </div><!-- tags -->\n");
      out.write("  <div class=\"widget\">\n");
      out.write("    <h4 class=\"widget-title\"><span>Tags</span></h4>\n");
      out.write("    <ul class=\"list-inline widget-list-inline widget-card\">\n");
      out.write("      \n");
      out.write("\t  ");

							try{
								Class.forName("com.mysql.jdbc.Driver");
								Connection cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/blog","root","");
								Statement st = cn.createStatement();
								ResultSet rs = st.executeQuery("select * from blog order by sn desc");
								while(rs.next()){
									
      out.write("\n");
      out.write("      <li class=\"list-inline-item\"><a href=\"tags.html\">");
      out.print(rs.getString("title"));
      out.write("</a></li>\n");
      out.write("\t ");

								}
								cn.close();
							}
							catch(Exception er){
								out.println(er.getMessage());
							}
						
      out.write("\n");
      out.write("\t  \n");
      out.write("    </ul>\n");
      out.write("  </div><!-- recent post -->\n");
      out.write("  <div class=\"widget\">\n");
      out.write("    <h4 class=\"widget-title\">Recent Post</h4>\n");
      out.write("     ");

                                                         int start=0; 
                                                        try{    
                      
                                                                Class.forName("com.mysql.jdbc.Driver");
								Connection cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/blog","root","");
								Statement st = cn.createStatement();
								ResultSet rs = st.executeQuery("select * from blog order by sn desc limit "+start+",3");
								while(rs.next()){
									
      out.write("\n");
      out.write("    <!-- post-item -->\n");
      out.write("    <article class=\"widget-card\">\n");
      out.write("      <div class=\"d-flex\">\n");
      out.write("        <img class=\"card-img-sm\" src=\"upload/");
      out.print(rs.getString("code"));
      out.write(".jpg\">\n");
      out.write("        <div class=\"ml-3\">\n");
      out.write("          <h5><a class=\"post-title\" href=\"post/elements/\">");
      out.print(rs.getString("title"));
      out.write("</a></h5>\n");
      out.write("          <ul class=\"card-meta list-inline mb-0\">\n");
      out.write("            <li class=\"list-inline-item mb-0\">\n");
      out.write("              <i class=\"ti-calendar\"></i>");
      out.print(rs.getString("dt"));
      out.write("\n");
      out.write("            </li>\n");
      out.write("          </ul>\n");
      out.write("        </div>\n");
      out.write("      </div>\n");
      out.write("    </article>\n");
      out.write("    ");

								}
								cn.close();
							}
							catch(Exception er){
								out.println(er.getMessage());
							}
						
      out.write("  \n");
      out.write("    \n");
      out.write("    \n");
      out.write("    \n");
      out.write("  </div>\n");
      out.write("\n");
      out.write("  <!-- Social -->\n");
      out.write("  <div class=\"widget\">\n");
      out.write("    <h4 class=\"widget-title\"><span>Social Links</span></h4>\n");
      out.write("    <ul class=\"list-inline widget-social\">\n");
      out.write("      <li class=\"list-inline-item\"><a href=\"#\"><i class=\"ti-facebook\"></i></a></li>\n");
      out.write("      <li class=\"list-inline-item\"><a href=\"#\"><i class=\"ti-twitter-alt\"></i></a></li>\n");
      out.write("      <li class=\"list-inline-item\"><a href=\"#\"><i class=\"ti-linkedin\"></i></a></li>\n");
      out.write("      <li class=\"list-inline-item\"><a href=\"#\"><i class=\"ti-github\"></i></a></li>\n");
      out.write("      <li class=\"list-inline-item\"><a href=\"#\"><i class=\"ti-youtube\"></i></a></li>\n");
      out.write("    </ul>\n");
      out.write("  </div>\n");
      out.write("</aside>\n");
      out.write("    </div>\n");
      out.write("  </div>\n");
      out.write("</section>\n");
      out.write("\n");
      out.write("<footer class=\"footer\">\n");
      out.write("  <svg class=\"footer-border\" height=\"214\" viewBox=\"0 0 2204 214\" fill=\"none\" xmlns=\"http://www.w3.org/2000/svg\">\n");
      out.write("      <path d=\"M2203 213C2136.58 157.994 1942.77 -33.1996 1633.1 53.0486C1414.13 114.038 1200.92 188.208 967.765 118.127C820.12 73.7483 263.977 -143.754 0.999958 158.899\"\n");
      out.write("      stroke-width=\"2\" />\n");
      out.write("  </svg>\n");
      out.write("  \n");
      out.write("  <div class=\"instafeed text-center mb-5\">\n");
      out.write("      <h2 class=\"h3 mb-4\">INSTAGRAM POST</h2>\n");
      out.write("      \n");
      out.write("      <div class=\"instagram-slider\">\n");
      out.write("        <div class=\"instagram-post\"><img src=\"images/instagram/1.jpg\"></div>\n");
      out.write("        <div class=\"instagram-post\"><img src=\"images/instagram/2.jpg\"></div>\n");
      out.write("        <div class=\"instagram-post\"><img src=\"images/instagram/3.jpg\"></div>\n");
      out.write("        <div class=\"instagram-post\"><img src=\"images/instagram/4.jpg\"></div>\n");
      out.write("        <div class=\"instagram-post\"><img src=\"images/instagram/5.jpg\"></div>\n");
      out.write("        <div class=\"instagram-post\"><img src=\"images/instagram/6.jpg\"></div>\n");
      out.write("        <div class=\"instagram-post\"><img src=\"images/instagram/1.jpg\"></div>\n");
      out.write("        <div class=\"instagram-post\"><img src=\"images/instagram/2.jpg\"></div>\n");
      out.write("        <div class=\"instagram-post\"><img src=\"images/instagram/3.jpg\"></div>\n");
      out.write("        <div class=\"instagram-post\"><img src=\"images/instagram/4.jpg\"></div>\n");
      out.write("      </div>\n");
      out.write("  </div>\n");
      out.write("  \n");
      out.write("  <div class=\"container\">\n");
      out.write("      <div class=\"row align-items-center\">\n");
      out.write("      <div class=\"col-md-5 text-center text-md-left mb-4\">\n");
      out.write("          <ul class=\"list-inline footer-list mb-0\">\n");
      out.write("            <li class=\"list-inline-item\"><a href=\"privacy-policy.html\">Privacy Policy</a></li>\n");
      out.write("            <li class=\"list-inline-item\"><a href=\"terms-conditions.html\">Terms Conditions</a></li>\n");
      out.write("          </ul>\n");
      out.write("      </div>\n");
      out.write("      <div class=\"col-md-2 text-center mb-4\">\n");
      out.write("          <a href=\"index.html\"><img class=\"img-fluid\" width=\"100px\" src=\"images/logo.png\" alt=\"Reader | Hugo Personal Blog Template\"></a>\n");
      out.write("      </div>\n");
      out.write("      <div class=\"col-md-5 text-md-right text-center mb-4\">\n");
      out.write("          <ul class=\"list-inline footer-list mb-0\">\n");
      out.write("          \n");
      out.write("          <li class=\"list-inline-item\"><a href=\"#\"><i class=\"ti-facebook\"></i></a></li>\n");
      out.write("          \n");
      out.write("          <li class=\"list-inline-item\"><a href=\"#\"><i class=\"ti-twitter-alt\"></i></a></li>\n");
      out.write("          \n");
      out.write("          <li class=\"list-inline-item\"><a href=\"#\"><i class=\"ti-linkedin\"></i></a></li>\n");
      out.write("          \n");
      out.write("          <li class=\"list-inline-item\"><a href=\"#\"><i class=\"ti-github\"></i></a></li>\n");
      out.write("          \n");
      out.write("          <li class=\"list-inline-item\"><a href=\"#\"><i class=\"ti-youtube\"></i></a></li>\n");
      out.write("          \n");
      out.write("          </ul>\n");
      out.write("      </div>\n");
      out.write("      <div class=\"col-12\">\n");
      out.write("          <div class=\"border-bottom border-default\"></div>\n");
      out.write("      </div>\n");
      out.write("      </div>\n");
      out.write("  </div>\n");
      out.write("  </footer>\n");
      out.write("\n");
      out.write("\n");
      out.write("  <!-- JS Plugins -->\n");
      out.write("  <script src=\"plugins/jQuery/jquery.min.js\"></script>\n");
      out.write("\n");
      out.write("  <script src=\"plugins/bootstrap/bootstrap.min.js\"></script>\n");
      out.write("\n");
      out.write("  <script src=\"plugins/slick/slick.min.js\"></script>\n");
      out.write("\n");
      out.write("  <script src=\"plugins/instafeed/instafeed.min.js\"></script>\n");
      out.write("\n");
      out.write("\n");
      out.write("  <!-- Main Script -->\n");
      out.write("  <script src=\"js/script.js\"></script></body>\n");
      out.write("</html>");
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
