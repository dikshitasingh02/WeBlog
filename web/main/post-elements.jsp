<%@page contentType="text/html" import="java.sql.*" pageEncoding="UTF-8"%>
<%
   String id = request.getParameter("id");
   int count=0;
    try{
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/blog","root","");
                    Statement st = cn.createStatement();
                    ResultSet rs = st.executeQuery("select MAX(count) from blog where code='"+id+"'");
                    if(rs.next()){
                        count = rs.getInt(1);
                    }
                    count++;
                    
                    PreparedStatement ps = cn.prepareStatement("update blog set count='"+count+"' where code='"+id+"'");
                    if(ps.executeUpdate()>0){
                       // 
                    }
                    
                    cn.close();
                }
                catch(Exception er){
                    out.println(er.getMessage());
                }
%>
<!DOCTYPE html>



<html lang="en-us"><head>
  <meta charset="utf-8">
  <title>WeBlog</title>

  <!-- mobile responsive meta -->
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
  <meta name="description" content="This is meta description">
  <meta name="author" content="Themefisher">
  <meta name="generator" content="Hugo 0.74.3" />

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
  <script>
  
		</script>
</head>
<body>
  <!-- navigation -->
<header class="navigation fixed-top">
  <div class="container">
    <nav class="navbar navbar-expand-lg navbar-white">
      <a class="navbar-brand order-1" href="index.html">
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
<div class="py-4"></div>
<section class="section">
   <div class="container">
   <div class="row">
      <div class=" col-lg-8 mb-5 mb-lg-0">
	   <%
	                  
							try{
								Class.forName("com.mysql.jdbc.Driver");
								Connection cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/blog","root","");
								Statement st = cn.createStatement();
								ResultSet rs = st.executeQuery("select * from blog where code='"+id+"'");
								while(rs.next()){
									%>
         <article>
		 
            <div class="post-slider mb-4">
               <img src="upload/<%=rs.getString("code")%>.jpg" class="card-img" alt="post-thumb">
               <img src="upload/<%=rs.getString("code")%>.jpg" class="card-img" alt="post-thumb">
            </div>
            <h1 class="h2"><%=rs.getString("title")%></h1>
            <ul class="card-meta my-3 list-inline">
               <li class="list-inline-item">
                  <a href="author-single.html" class="card-meta-author">
                  <img src="images/john-doe.jpg" alt="John Doe">
                  <span>John Doe</span>
                  </a>
               </li>
               <li class="list-inline-item">
                  <i class="ti-timer"></i>3 Min To Read
               </li>
               <li class="list-inline-item">
                  <i class="ti-calendar"></i><%=rs.getString("dt")%>
               </li>
               <li class="list-inline-item">
                  <ul class="card-meta-tag list-inline">
                     <li class="list-inline-item"><a href="tags.html">Demo</a></li>
                     <li class="list-inline-item"><a href="tags.html">Elements</a></li>
                  </ul>
               </li>
            </ul>
            <div class="content">
               <h4 id="heading-example">Short Description</h4>
               <p><%=rs.getString("sdesc")%></p>
               
               
               <h4 id="paragraph">Description</h4>
               <p><%=rs.getString("desc")%></p>
               <hr>
              
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
         <div class="mt-5">
            <div class="mb-5 border-top mt-4 pt-5">
               <h3 class="mb-4">Comments</h3>
               <%
	                  
							try{
								Class.forName("com.mysql.jdbc.Driver");
								Connection cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/blog","root","");
								Statement st = cn.createStatement();
								ResultSet rs = st.executeQuery("select * from comment where to_code='"+id+"'");
								while(rs.next()){
									%>
               <div class="media d-block d-sm-flex mb-4 pb-4">
                  <a class="d-inline-block mr-2 mb-3 mb-md-0" href="#">
                  <img src="images/post/user-01.jpg" class="mr-3 rounded-circle" alt="">
                  </a>
                  <div class="media-body">
                     <a href="#!" class="h4 d-inline-block mb-3"><%=rs.getString("name")%></a>
                     <p><%=rs.getString("comment")%></p>
                     <span class="text-black-800 mr-3 font-weight-600"><%=rs.getString("dt")%></span>
                     <a class="text-primary font-weight-600" href="#!">Reply</a>
                  </div>
               </div>
               <%
								}
								cn.close();
							}
							catch(Exception er){
								out.println(er.getMessage());
							}
						%>
               
            </div>
            <div>
               <h3 class="mb-4">Leave a Reply</h3>
                <%
	                  
							try{
								Class.forName("com.mysql.jdbc.Driver");
								Connection cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/blog","root","");
								Statement st = cn.createStatement();
								ResultSet rs = st.executeQuery("select * from blog where code='"+id+"'");
								while(rs.next()){
									%>
               <form method="POSt" action="comment.jsp?id=<%=rs.getString("code")%>">
                   <%
								}
								cn.close();
							}
							catch(Exception er){
								out.println(er.getMessage());
							}
						%>
                  <div class="row">
                     <div class="form-group col-md-12">
                        <textarea class="form-control shadow-none" name="comment" id="comment"rows="7" required></textarea>
                     </div>
                     <div class="form-group col-md-4">
                        <input class="form-control shadow-none" type="text" id="name" name="name" placeholder="Name" required>
                     </div>
                     <div class="form-group col-md-4">
                        <input class="form-control shadow-none" type="email" id="email" name="email" placeholder="Email" required>
                     </div>
                     
                  </div>
                  <button class="btn btn-primary" type="submit">Comment Now</button>
               </form>
            </div>
         </div>
      </div>
      <aside class="col-lg-4 sidebar">
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
      <li><a href="tags.html" class="d-flex"><%=rs.getString("category")%><small class="ml-auto">(4)</small></a></li>
    
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
                                                         int start=0;
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