<%@page contentType="text/html" import="java.sql.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>



<html lang="en-us"><head>
  <meta charset="utf-8">
  <title>WeBlog</title>

  <!-- mobile responsive meta -->
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
  <meta name="description" content="This is meta description">
  <meta name="author" content="Themefisher">
  <meta name="generator" content="Hugo 0.74.3" />
  
  <!-- theme meta -->
  <meta name="theme-name" content="reader" />

  <!-- plugins -->
  <link rel="stylesheet" href="plugins/bootstrap/bootstrap.min.css">
  <link rel="stylesheet" href="plugins/themify-icons/themify-icons.css">
  <link rel="stylesheet" href="plugins/slick/slick.css">

  <!-- Main Stylesheet -->
  <link rel="stylesheet" href="css/style.css" media="screen">

  <!--Favicon-->
  <link rel="shortcut icon" href="images/favicon1.png" type="image/x-icon">
  <link rel="icon" href="images/favicon1.png" type="image/x-icon">

  <meta property="og:title" content="Reader | Hugo Personal Blog Template" />
  <meta property="og:description" content="This is meta description" />
  <meta property="og:type" content="website" />
  <meta property="og:url" content="" />
  <meta property="og:updated_time" content="2020-03-15T15:40:24+06:00" />
  <script src="jquery-3.6.4.min.js"></script>
  
</head>
<body>
  <!-- navigation -->
<header class="navigation fixed-top">
  <div class="container">
    <nav class="navbar navbar-expand-lg navbar-white">
      <a class="navbar-brand order-1" href="index.jsp">
        <img class="img-fluid" width="100px" src="images/logo.png"
          alt="">
      </a>
      <div class="collapse navbar-collapse text-center order-lg-2 order-3" id="navigation">
        <ul class="navbar-nav mx-auto">
          
         <li class="nav-item">
            <a class="nav-link" href="index.jsp">Home</a>
          </li>
          
           <li class="nav-item">
            <a class="nav-link" href="contact.html">About</a>
          </li>
         

          <li class="nav-item">
            <a class="nav-link" href="#subscribe">Contact</a>
          </li>

          <li class="nav-item dropdown">
            <a class="nav-link" href="#" role="button" data-toggle="dropdown" aria-haspopup="true"
              aria-expanded="false">Categories <i class="ti-angle-down ml-1"></i>
            </a>
            <div class="dropdown-menu">
            <%
							try{
								Class.forName("com.mysql.jdbc.Driver");
								Connection cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/blog","root","");
								Statement st = cn.createStatement();
								ResultSet rs = st.executeQuery("select * from category order by sn desc");
								while(rs.next()){
									%>
                     <a class="dropdown-item" href="index-grid.jsp?id=<%=rs.getString("code")%>"><%=rs.getString("category")%></a>
	 <%
								}
								cn.close();
							}
							catch(Exception er){
								out.println(er.getMessage());
							}
						%> 

              
              
            </div>
          </li>

          <li class="nav-item">
            <a class="nav-link" href="shop.html">Shop</a>
          </li>
        </ul>
      </div>

      <div class="order-2 order-lg-3 d-flex align-items-center">
       
        
        <!-- search -->
        <form class="search-bar">
          <input id="search-query" name="s" type="search" placeholder="Type &amp; Hit Enter...">
        </form>
        
        <button class="navbar-toggler border-0 order-1" type="button" data-toggle="collapse" data-target="#navigation">
          <i class="ti-menu"></i>
        </button>
      </div>

    </nav>
  </div>
</header>
<!-- /navigation -->

<!-- start of banner -->
<div class="banner text-center">
  <div class="container">
    <div class="row">
      <div class="col-lg-9 mx-auto">
        <h1 class="mb-5">What Would You <br> Like To Read Today?</h1>
        <ul class="list-inline widget-list-inline">
		<%
							try{
								Class.forName("com.mysql.jdbc.Driver");
								Connection cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/blog","root","");
								Statement st = cn.createStatement();
								ResultSet rs = st.executeQuery("select * from blog order by sn desc");
								while(rs.next()){
									%>
      <li class="list-inline-item"><a href="post-elements.jsp?id=<%=rs.getString("code")%>"><%=rs.getString("title")%></a></li>
	 <%
								}
								cn.close();
							}
							catch(Exception er){
								out.println(er.getMessage());
							}
						%> 
          
        </ul>
      </div>
    </div>
  </div>

  
  <svg class="banner-shape-1" width="39" height="40" viewBox="0 0 39 40" fill="none" xmlns="http://www.w3.org/2000/svg">
    <path d="M0.965848 20.6397L0.943848 38.3906L18.6947 38.4126L18.7167 20.6617L0.965848 20.6397Z" stroke="#040306"
      stroke-miterlimit="10" />
    <path class="path" d="M10.4966 11.1283L10.4746 28.8792L28.2255 28.9012L28.2475 11.1503L10.4966 11.1283Z" />
    <path d="M20.0078 1.62949L19.9858 19.3804L37.7367 19.4024L37.7587 1.65149L20.0078 1.62949Z" stroke="#040306"
      stroke-miterlimit="10" />
  </svg>
  
  <svg class="banner-shape-2" width="39" height="39" viewBox="0 0 39 39" fill="none" xmlns="http://www.w3.org/2000/svg">
    <g filter="url(#filter0_d)">
      <path class="path"
        d="M24.1587 21.5623C30.02 21.3764 34.6209 16.4742 34.435 10.6128C34.2491 4.75147 29.3468 0.1506 23.4855 0.336498C17.6241 0.522396 13.0233 5.42466 13.2092 11.286C13.3951 17.1474 18.2973 21.7482 24.1587 21.5623Z" />
      <path
        d="M5.64626 20.0297C11.1568 19.9267 15.7407 24.2062 16.0362 29.6855L24.631 29.4616L24.1476 10.8081L5.41797 11.296L5.64626 20.0297Z"
        stroke="#040306" stroke-miterlimit="10" />
    </g>
    <defs>
      <filter id="filter0_d" x="0.905273" y="0" width="37.8663" height="38.1979" filterUnits="userSpaceOnUse"
        color-interpolation-filters="sRGB">
        <feFlood flood-opacity="0" result="BackgroundImageFix" />
        <feColorMatrix in="SourceAlpha" type="matrix" values="0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 127 0" />
        <feOffset dy="4" />
        <feGaussianBlur stdDeviation="2" />
        <feColorMatrix type="matrix" values="0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.25 0" />
        <feBlend mode="normal" in2="BackgroundImageFix" result="effect1_dropShadow" />
        <feBlend mode="normal" in="SourceGraphic" in2="effect1_dropShadow" result="shape" />
      </filter>
    </defs>
  </svg>

  
  <svg class="banner-shape-3" width="39" height="40" viewBox="0 0 39 40" fill="none" xmlns="http://www.w3.org/2000/svg">
    <path d="M0.965848 20.6397L0.943848 38.3906L18.6947 38.4126L18.7167 20.6617L0.965848 20.6397Z" stroke="#040306"
      stroke-miterlimit="10" />
    <path class="path" d="M10.4966 11.1283L10.4746 28.8792L28.2255 28.9012L28.2475 11.1503L10.4966 11.1283Z" />
    <path d="M20.0078 1.62949L19.9858 19.3804L37.7367 19.4024L37.7587 1.65149L20.0078 1.62949Z" stroke="#040306"
      stroke-miterlimit="10" />
  </svg>

  
  <svg class="banner-border" height="240" viewBox="0 0 2202 240" fill="none" xmlns="http://www.w3.org/2000/svg">
    <path
      d="M1 123.043C67.2858 167.865 259.022 257.325 549.762 188.784C764.181 125.427 967.75 112.601 1200.42 169.707C1347.76 205.869 1901.91 374.562 2201 1"
      stroke-width="2" />
  </svg>
</div>
<!-- end of banner -->
<section class="section pb-0">
  <div class="container">
    <div class="row">
      <div class="col-lg-4 mb-5">
        <h2 class="h5 section-title">Editors Pick</h2>
		 <%
							try{
								Class.forName("com.mysql.jdbc.Driver");
								Connection cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/blog","root","");
								Statement st = cn.createStatement();
								ResultSet rs = st.executeQuery("select * from blog  where sn=8");
								while(rs.next()){
									%>
        <article class="card">
          <div class="post-slider slider-sm">
            <img src="upload/<%=rs.getString("code")%>.jpg" class="card-img-top" alt="post-thumb">
          </div>
          
          <div class="card-body">
            <h3 class="h4 mb-3"><a class="post-title" href=""><%=rs.getString("title")%></a></h3>
            <ul class="card-meta list-inline">
              <li class="list-inline-item">
                <a href="author-single.html" class="card-meta-author">
                  <img src="images/john-doe.jpg">
                  <span>Charls Xaviar</span>
                </a>
              </li>
              <li class="list-inline-item">
                <i class="ti-timer"></i>2 Min To Read
              </li>
              <li class="list-inline-item">
                <i class="ti-calendar"></i><%=rs.getString("dt")%>
              </li>
              <li class="list-inline-item">
                <ul class="card-meta-tag list-inline">
                  <li class="list-inline-item"><a href="tags.html">Color</a></li>
                  <li class="list-inline-item"><a href="tags.html">Recipe</a></li>
                  <li class="list-inline-item"><a href="tags.html">Fish</a></li>
                </ul>
              </li>
            </ul>
            <p><%=rs.getString("sdesc")%></p>
            <a href="post-elements.jsp?id=<%=rs.getString("code")%>" class="btn btn-outline-primary">Read More</a>
          </div>
        </article>
		<%
								}
								cn.close();
							}
							catch(Exception er){
								out.println(er.getMessage());
							}
						%> 
      </div>
      <div class="col-lg-4 mb-5">
        <h2 class="h5 section-title">Trending Post</h2>
         <%
							try{
								Class.forName("com.mysql.jdbc.Driver");
								Connection cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/blog","root","");
								Statement st = cn.createStatement();
								ResultSet rs = st.executeQuery("select * from blog order by count desc limit 3");
								while(rs.next()){
									%>
        <article class="card mb-4">
          <div class="card-body d-flex">
            <img class="card-img-sm" src="upload/<%=rs.getString("code")%>.jpg">
            <div class="ml-3">
              <h4><a href="post-elements.jsp?id=<%=rs.getString("code")%>" class="post-title"><%=rs.getString("title")%></a></h4>
              <ul class="card-meta list-inline mb-0">
                <li class="list-inline-item mb-0">
                  <i class="ti-calendar"></i><%=rs.getString("dt")%>
                </li>
                <li class="list-inline-item mb-0">
                  <i class="ti-timer"></i>2 Min To Read
                </li>
              </ul>
            </div>
          </div>
        </article>
        <%
								}
								cn.close();
							}
							catch(Exception er){
								out.println(er.getMessage());
							}
						%> 
       
        
        
      </div>
      
      <div class="col-lg-4 mb-5">
        <h2 class="h5 section-title">Popular Post</h2>
        <%
							try{
								Class.forName("com.mysql.jdbc.Driver");
								Connection cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/blog","root","");
								Statement st = cn.createStatement();
								ResultSet rs = st.executeQuery("select * from blog b join comment c on b.code=c.to_code where c.sn = (select max(sn) from comment)");
								while(rs.next()){
									%>
        <article class="card">
          <div class="post-slider slider-sm">
            <img src="upload/<%=rs.getString("code")%>.jpg" class="card-img-top" alt="post-thumb">
          </div>
          <div class="card-body">
              <h3 class="h4 mb-3"><a class="post-title" href=""><%=rs.getString("title")%></a></h3>
            <ul class="card-meta list-inline">
              <li class="list-inline-item">
                <a href="author-single.html" class="card-meta-author">
                  <img src="images/kate-stone.jpg" alt="Kate Stone">
                  <span>Kate Stone</span>
                </a>
              </li>
              <li class="list-inline-item">
                <i class="ti-timer"></i>2 Min To Read
              </li>
              <li class="list-inline-item">
                <i class="ti-calendar"></i><%=rs.getString("dt")%>
              </li>
              <li class="list-inline-item">
                <ul class="card-meta-tag list-inline">
                  <li class="list-inline-item"><a href="tags.html">City</a></li>
                  <li class="list-inline-item"><a href="tags.html">Food</a></li>
                  <li class="list-inline-item"><a href="tags.html">Taste</a></li>
                </ul>
              </li>
            </ul>
            <p><%=rs.getString("sdesc")%></p>
            <a href="post-elements.jsp?id=<%=rs.getString("code")%>" class="btn btn-outline-primary">Read More</a>
          </div>
        </article>
        <%
								}
								cn.close();
							}
							catch(Exception er){
								out.println(er.getMessage());
							}
						%> 
      </div>
      <div class="col-12">
        <div class="border-bottom border-default"></div>
      </div>
    </div>
  </div>
</section>









<section class="section-sm">
  <div class="container">
    <div class="row justify-content-center">
      <div class="col-lg-8  mb-5 mb-lg-0">
  <h2 class="h5 section-title">Recent Post</h2>
  
  <%
                        int start=0,pg=0;
						String nextpath="",prepath="";
							try{
								
								if(request.getParameter("pg")!=null){
									pg= Integer.parseInt(request.getParameter("pg").trim());
									if(pg<0){
										response.sendRedirect("index.jsp");
								    }
								}
								start=pg*2;
								Class.forName("com.mysql.jdbc.Driver");
								Connection cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/blog","root","");
								Statement st = cn.createStatement();
								ResultSet rs = st.executeQuery("select * from blog order by sn desc limit "+start+",2");
								nextpath="index.jsp?pg="+(pg+1);
								prepath="index.jsp?pg="+(pg-1);
								while(rs.next()){
									%>
									
									
  <article class="card mb-4">
  <div class="post-slider">
      <img src="upload/<%=rs.getString("code")%>.jpg" class="card-img-top" alt="">
      <img src="upload/<%=rs.getString("code")%>.jpg" class="card-img-top" alt="">
  </div>
  <div class="card-body">
      <h3 class="mb-3"><a class="post-title" > <%=rs.getString("title")%> </a></h3>
      <ul class="card-meta list-inline">
      <li class="list-inline-item">
          <a href="author-single.html" class="card-meta-author">
          <img src="images/john-doe.jpg" alt="John Doe">
          <span>John Doe</span>
          </a>
      </li>
      <li class="list-inline-item">
          <i class="ti-timer"></i><!--3 Min To Read-->
      </li>
      <li class="list-inline-item">
          <i class="ti-calendar"></i><%=rs.getString("dt")%>
      </li>
      <li class="list-inline-item">
          <ul class="card-meta-tag list-inline">
              
          <li class="list-inline-item"><a href="tags.html"></a></li>
          <li class="list-inline-item"><a href="tags.html">Elements</a></li>
            
          </ul>
      </li>
      </ul>
      <p> <%=rs.getString("sdesc")%></p>
      <a href="post-elements.jsp?id=<%=rs.getString("code")%>" class="btn btn-outline-primary">Read More</a>
  </div>
  </article>
  <%
								}
								cn.close();
							}
							catch(Exception er){
								out.println(er.getMessage());
							}
						%>

  <ul class="pagination justify-content-center">
    <li class="page-item page-item active ">
        <a href="<%=prepath%>" class="page-link"><<</a>
    </li>
    <li class="page-item">
        <a href="<%=nextpath%>" class="page-link">>></a>
    </li>
    
  </ul>
</div>
      <aside class="col-lg-4 sidebar-home">
	  
  <!-- Search -->
  <div class="widget">
    <h4 class="widget-title"><span>Search</span></h4>
    <form action="#!" class="widget-search">
      <input class="mb-3" id="search-query" name="s" type="search" placeholder="Type &amp; Hit Enter...">
      <i class="ti-search"></i>
      <button type="submit" class="btn btn-primary btn-block">Search</button>
    </form>
  </div>

  <!-- about me -->
  <div class="widget widget-about">
    <h4 class="widget-title">Hi, I am Alex!</h4>
    <img class="img-fluid" src="images/man.png" alt="Themefisher">
    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vel in in donec iaculis tempus odio nunc laoreet . Libero ullamcorper.</p>
    <ul class="list-inline social-icons mb-3">
      
      <li class="list-inline-item"><a href="#"><i class="ti-facebook"></i></a></li>
      
      <li class="list-inline-item"><a href="#"><i class="ti-twitter-alt"></i></a></li>
      
      <li class="list-inline-item"><a href="#"><i class="ti-linkedin"></i></a></li>
      
      <li class="list-inline-item"><a href="#"><i class="ti-github"></i></a></li>
      
      <li class="list-inline-item"><a href="#"><i class="ti-youtube"></i></a></li>
      
    </ul>
    <a href="about-me.html" class="btn btn-primary mb-2">About me</a>
  </div>
  
  <!-- Promotion -->
  <div class="promotion">
    <img src="images/promotion.jpg" class="img-fluid w-100">
    <div class="promotion-content">
      <h5 class="text-white mb-3">Create Stunning Website!!</h5>
      <p class="text-white mb-4">Lorem ipsum dolor sit amet, consectetur sociis. Etiam nunc amet id dignissim. Feugiat id tempor vel sit ornare turpis posuere.</p>
      <a href="https://themefisher.com/" class="btn btn-primary">Get Started</a>
    </div>
  </div>

  <!-- authors -->
  <div class="widget widget-author">
    <h4 class="widget-title">Authors</h4>
    <div class="media align-items-center">
      <div class="mr-3">
        <img class="widget-author-image" src="images/old-man.png">
      </div>
      <div class="media-body">
        <h5 class="mb-1"><a class="post-title" href="author-single.html">Charls Xaviar</a></h5>
        <span>Author &amp; developer of Bexer, Biztrox theme</span>
      </div>
    </div>
    <div class="media align-items-center">
      <div class="mr-3">
        <img class="widget-author-image" src="images/woman.png">
      </div>
      <div class="media-body">
        <h5 class="mb-1"><a class="post-title" href="author-single.html">Kate Stone</a></h5>
        <span>Author &amp; developer of Bexer, Biztrox theme</span>
      </div>
    </div>
    <div class="media align-items-center">
      <div class="mr-3">
        <img class="widget-author-image" src="images/man.png" alt="John Doe">
      </div>
      <div class="media-body">
        <h5 class="mb-1"><a class="post-title" href="author-single.html">John Doe</a></h5>
        <span>Author &amp; developer of Bexer, Biztrox theme</span>
      </div>
    </div>
  </div>
  <!-- Search -->
  
  <div class="widget" id="subscribe">
    <h4 class="widget-title"><span>Never Miss A News</span></h4>
    <form action="#!" method="post" name="mc-embedded-subscribe-form" target="_blank"
      class="widget-search">
      <input class="mb-3" id="search-query" name="s" type="search" placeholder="Your Email Address">
      <i class="ti-email"></i>
      <button type="submit" class="btn btn-primary btn-block" name="subscribe">Subscribe now</button>
      <div style="position: absolute; left: -5000px;" aria-hidden="true">
        <input type="text" name="b_463ee871f45d2d93748e77cad_a0a2c6d074" tabindex="-1">
      </div>
    </form>
  </div>

  <!-- categories -->
  <div class="widget widget-categories">
    <h4 class="widget-title"><span>Categories</span></h4>
    <ul class="list-unstyled widget-list">
	<%
							try{
								Class.forName("com.mysql.jdbc.Driver");
								Connection cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/blog","root","");
								Statement st = cn.createStatement();
								ResultSet rs = st.executeQuery("select * from category order by sn desc");
								while(rs.next()){
									%>
      <li><a href="tags.html" class="d-flex"> <%=rs.getString("category")%><small class="ml-auto">(4)</small></a></li>
	  
	  <%
								}
								cn.close();
							}
							catch(Exception er){
								out.println(er.getMessage());
							}
						%>
      
    </ul>
  </div><!-- tags -->
  <div class="widget">
    <h4 class="widget-title"><span>Tags</span></h4>
    <ul class="list-inline widget-list-inline widget-card">
	<%
							try{
								Class.forName("com.mysql.jdbc.Driver");
								Connection cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/blog","root","");
								Statement st = cn.createStatement();
								ResultSet rs = st.executeQuery("select * from blog order by sn desc");
								while(rs.next()){
									%>
      <li class="list-inline-item"><a href="tags.html"><%=rs.getString("title")%></a></li>
	 <%
								}
								cn.close();
							}
							catch(Exception er){
								out.println(er.getMessage());
							}
						%>  
      
    </ul>
  </div><!-- recent post -->
  <div class="widget">
    <h4 class="widget-title">Recent Post</h4>
    <%
                                                         
                                                        try{    
                      
                                                                Class.forName("com.mysql.jdbc.Driver");
								Connection cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/blog","root","");
								Statement st = cn.createStatement();
								ResultSet rs = st.executeQuery("select * from blog order by sn desc limit "+start+",3");
								while(rs.next()){
									%>
    <!-- post-item -->
    <article class="widget-card">
      <div class="d-flex">
        <img class="card-img-sm" src="upload/<%=rs.getString("code")%>.jpg">
        <div class="ml-3">
          <h5><a class="post-title" href="post/elements/"><%=rs.getString("title")%></a></h5>
          <ul class="card-meta list-inline mb-0">
            <li class="list-inline-item mb-0">
              <i class="ti-calendar"></i><%=rs.getString("dt")%>
            </li>
          </ul>
        </div>
      </div>
    </article>
    <%
								}
								cn.close();
							}
							catch(Exception er){
								out.println(er.getMessage());
							}
						%>  
    
    
    
  </div>

  <!-- Social -->
  <div class="widget">
    <h4 class="widget-title"><span>Social Links</span></h4>
    <ul class="list-inline widget-social">
      <li class="list-inline-item"><a href="#"><i class="ti-facebook"></i></a></li>
      <li class="list-inline-item"><a href="#"><i class="ti-twitter-alt"></i></a></li>
      <li class="list-inline-item"><a href="#"><i class="ti-linkedin"></i></a></li>
      <li class="list-inline-item"><a href="#"><i class="ti-github"></i></a></li>
      <li class="list-inline-item"><a href="#"><i class="ti-youtube"></i></a></li>
    </ul>
  </div>
</aside>
    </div>
  </div>
</section>

<footer class="footer">
  <svg class="footer-border" height="214" viewBox="0 0 2204 214" fill="none" xmlns="http://www.w3.org/2000/svg">
      <path d="M2203 213C2136.58 157.994 1942.77 -33.1996 1633.1 53.0486C1414.13 114.038 1200.92 188.208 967.765 118.127C820.12 73.7483 263.977 -143.754 0.999958 158.899"
      stroke-width="2" />
  </svg>
  
  <div class="instafeed text-center mb-5">
      <h2 class="h3 mb-4">INSTAGRAM POST</h2>
      
      <div class="instagram-slider">
        <div class="instagram-post"><img src="images/instagram/1.jpg"></div>
        <div class="instagram-post"><img src="images/instagram/2.jpg"></div>
        <div class="instagram-post"><img src="images/instagram/3.jpg"></div>
        <div class="instagram-post"><img src="images/instagram/4.jpg"></div>
        <div class="instagram-post"><img src="images/instagram/5.jpg"></div>
        <div class="instagram-post"><img src="images/instagram/6.jpg"></div>
        <div class="instagram-post"><img src="images/instagram/1.jpg"></div>
        <div class="instagram-post"><img src="images/instagram/2.jpg"></div>
        <div class="instagram-post"><img src="images/instagram/3.jpg"></div>
        <div class="instagram-post"><img src="images/instagram/4.jpg"></div>
      </div>
  </div>
  
  <div class="container">
      <div class="row align-items-center">
      <div class="col-md-5 text-center text-md-left mb-4">
          <ul class="list-inline footer-list mb-0">
            <li class="list-inline-item"><a href="privacy-policy.html">Privacy Policy</a></li>
            <li class="list-inline-item"><a href="terms-conditions.html">Terms Conditions</a></li>
          </ul>
      </div>
      <div class="col-md-2 text-center mb-4">
          <a href="index.html"><img class="img-fluid" width="100px" src="images/logo.png" alt="Reader | Hugo Personal Blog Template"></a>
      </div>
      <div class="col-md-5 text-md-right text-center mb-4">
          <ul class="list-inline footer-list mb-0">
          
          <li class="list-inline-item"><a href="#"><i class="ti-facebook"></i></a></li>
          
          <li class="list-inline-item"><a href="#"><i class="ti-twitter-alt"></i></a></li>
          
          <li class="list-inline-item"><a href="#"><i class="ti-linkedin"></i></a></li>
          
          <li class="list-inline-item"><a href="#"><i class="ti-github"></i></a></li>
          
          <li class="list-inline-item"><a href="#"><i class="ti-youtube"></i></a></li>
          
          </ul>
      </div>
      <div class="col-12">
          <div class="border-bottom border-default"></div>
      </div>
      </div>
  </div>
  </footer>


  <!-- JS Plugins -->
  <script src="plugins/jQuery/jquery.min.js"></script>

  <script src="plugins/bootstrap/bootstrap.min.js"></script>

  <script src="plugins/slick/slick.min.js"></script>

  <script src="plugins/instafeed/instafeed.min.js"></script>


  <!-- Main Script -->
  <script src="js/script.js"></script></body>
</html>
