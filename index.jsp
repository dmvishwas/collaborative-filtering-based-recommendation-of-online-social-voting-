<!--
	Author: W3layouts
	Author URL: http://w3layouts.com
	License: Creative Commons Attribution 3.0 Unported
	License URL: http://creativecommons.org/licenses/by/3.0/
-->
<%@ page import="CT.*"%>

<!DOCTYPE html>
<html lang="zxx">
<head>
<title>Voting RS</title>
<!-- Meta tag Keywords -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
function hideURLbar(){ window.scrollTo(0,1); } </script>
<!--// Meta tag Keywords -->
<!-- css files -->
<link rel="stylesheet" href="css/bootstrap.css"> <!-- Bootstrap-Core-CSS -->
<link rel="stylesheet" href="css/style.css" type="text/css" media="all" /> <!-- Style-CSS --> 
<link rel="stylesheet" href="css/font-awesome.css"> <!-- Font-Awesome-Icons-CSS -->
<link rel="stylesheet" href="css/owl.carousel.css" type="text/css" media="all"/> <!-- Owl-Carousel-CSS -->
<link rel="stylesheet" href="css/easy-responsive-tabs.css"><!-- tabs-css -->
<link rel="stylesheet" href="css/monthly.css">	<!-- Calender-CSS -->
<link href="css/popuo-box.css" rel="stylesheet" type="text/css" media="all" /> <!-- pop-up-box -->

<!-- //css files -->
</head>
<body> 
<!-- main-content -->
<div class="w3l-main">
	<h1 class="w3l-title">Collaborative Filtering-Based Recommendation of Online Social Voting</h1>
	<!-- header -->
	<!-- navigation -->
	<div class="navigation">
		<div class=" nav1">
			<span class="menu"><i class="fa fa-bars" aria-hidden="true"></i></span>			     	
				<ul>
					<!-- <li class="notch1"> </li>
					<li class="hover-border"><a href="#">Watching to new movie</a></li>
					<li><a href="#" >Listening to music</a></li>	
					<li>	<a href="#" >Play new game</a></li>
					<li class="hover-border1"><a href="#" >Learn how to make a design</a></li>			 -->				
				</ul>
				
		</div>
		<div class="top-nav">
			<nav class="navbar navbar-default">
				<div class="navbar-header navbar-left">
					<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
						<span class="sr-only">Toggle navigation</span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</button>
				</div>
				<!-- Collect the nav links, forms, and other content for toggling -->
				<div class="collapse navbar-collapse navbar-right" id="bs-example-navbar-collapse-1">
					<nav class="cl-effect-13" id="cl-effect-13">
						<ul class="nav navbar-nav">
							<li><a href="index.jsp">Home</a></li>
							<!-- <li class="dropdown">
								<a href="#" class="dropdown-toggle" data-toggle="dropdown">Drop Down<b class="caret"></b></a>
								<ul class="dropdown-menu agile_short_dropdown">
									<li><a href="#">Icons</a></li>
									<li><a href="#">Typography</a></li>
								</ul>
							</li> -->
						</ul>
					</nav>
				</div>
			</nav>
		</div>
		<!--//navbar-collapse-->
		<!-- social-icons -->
		<div class="social-icons-men">
			<div class="social-icons">
				<ul>	
					<li><a href="#" class="facebook"><i class="fa fa-facebook"></i></a></li>
					<li><a href="#" class="twitter"><i class="fa fa-twitter"></i></a></li>
					<li><a href="#" class="instagram"><i class="fa fa-instagram"></i></a></li>
				</ul>
			</div>
		</div>
		<!-- //social-icons -->
		<!-- search -->
	
		<!-- //search -->
		<div class="clearfix"> </div>
	</div>
	<!-- //navigation -->
	<!-- //header -->
	<!-- sec-section -->
	<div class="w3_agile_main_left">
		<div class="col-md-4 w3layouts-second">
			<div class="w3l_main_grid1_w3ls_grid">
				<h3>User Sign In</h3>
				<div class="w3_agile_main_left_grid_w3_agileits">
					<form action="ulogin.jsp" method="post">
						<div class="agileits_w3layouts_user">
							<i class="fa fa-user" aria-hidden="true"></i>
							<input type="email" name="email" placeholder="Email" required="">
						</div>
						<div class="agileits_w3layouts_user">
							<i class="fa fa-key" aria-hidden="true"></i>
							<input type="password" name="pwd" placeholder="Password" required="">
						</div>
						<input type="submit" value="Sign In">
					</form>
				</div>
			</div>
			<div class="w3l_main_grid1_w3ls_grid">
				<h3>Admin Sign In</h3>
				<div class="w3_agile_main_left_grid_w3_agileits">
					<form action="alogin.jsp" method="post">
						<div class="agileits_w3layouts_user">
							<i class="fa fa-user" aria-hidden="true"></i>
							<input type="text" name="uid" placeholder="User Name" required="">
						</div>
						<div class="agileits_w3layouts_user">
							<i class="fa fa-key" aria-hidden="true"></i>
							<input type="password" name="pwd" placeholder="Password" required="">
						</div>
						<input type="submit" value="Sign In">
					</form>
				</div>
			</div>
			<%
			String[] res=Details.main2();
			%>
		<div class="col-md- stats">
			
			<div class="col-md-4 stats-grid slideanim">
				<i class="fa fa-users" aria-hidden="true"></i>
				<div class='numscroller numscroller-big-bottom' data-slno='1' data-min='0' data-max='<%=res[0]%>' data-delay='3' data-increment="1" ><%=res[0]%></div>
			<h4 class="stats-info">Users</h4>
			</div>
			
			<div class="col-md-4  stats-grid slideanim">
				<i class="fa fa-thumbs-o-up" aria-hidden="true"></i>
				<div class='numscroller numscroller-big-bottom' data-slno='1' data-min='0' data-max='<%=res[1]%>' data-delay='3' data-increment="1" ><%=res[1]%></div>
				<h4 class="stats-info">Likes</h4>
			</div>
			<div class="col-md-4  stats-grid slideanim">
				<i class="fa fa-thumbs-o-down" aria-hidden="true"></i>
				<div class='numscroller numscroller-big-bottom' data-slno='1' data-min='0' data-max='<%=res[2]%>' data-delay='3' data-increment="1"><%=res[2]%></div>
				<h4 class="stats-info">DisLikes</h4>
			</div>
			
			<div class="clearfix"></div>
		</div>
		
		
		</div>
		<div class="col-md-8 banner-top">
			<div class="slider">
				<div class="callbacks_container">
					<ul class="rslides callbacks callbacks1" id="slider4">
						<li>
							<div class="w3layouts-banner-top">
									<div class="agileits-banner-info">
									<h3><br></h3>
										<div class="w3-button">
											<a href="#" class="link-w3l1" data-toggle="modal">Voting Recommendation System</a>
										</div>
									</div>	
							</div>
						</li>
						<li>
							<div class="w3layouts-banner-top w3layouts-banner-top1">
									<div class="agileits-banner-info">
										<!-- <h3>Easy To Use</h3>
										<p>Aliquam urna in maximus,Donec posuere cursus nibh.</p>
										 -->
									<h3><br></h3>
	 									
										 <div class="w3-button">
											<a href="#" class="link-w3l1" data-toggle="modal">Metapath-based NN Models</a>
										</div>
									</div>	
							</div>
						</li>
						<li>
							<div class="w3layouts-banner-top w3layouts-banner-top2">
									<div class="agileits-banner-info">
										
									<h3><br></h3>
								
										<div class="w3-button">
											<a href="" class="link-w3l1" data-toggle="modal">Online social Votings</a>
										</div>
									</div>	
							</div>
						</li>
					</ul>
				</div>
		
				<div class="clearfix"> </div>
			</div>
			<div class="clearfix"> </div>
		

<br>
				<div class="col-md-14 banner-top">
		
				<div class="w3l_main_grid1_w3ls_grid">
				<h3>User Sign Up</h3>
				<div class="w3_agile_main_left_grid_w3_agileits">
					<form action="signup1.jsp" method="post">
						<div class="agileits_w3layouts_user">
							<i class="fa fa-user" aria-hidden="true"></i>
							<input type="text" name="name" placeholder="Name" required="">
						</div>
						<div class="agileits_w3layouts_user">
							<i class="fa fa-key" aria-hidden="true"></i>
							<input type="password" name="pwd" placeholder="Password" required="">
						</div>
						<div class="agileits_w3layouts_user">
							<i class="fa fa-mobile" aria-hidden="true"></i>
							<input type="text" name="tele" placeholder="Mobile Number" required="">
						</div>
						<div class="agileits_w3layouts_user">
							<i class="fa fa-envelope-o" aria-hidden="true"></i>
							<input type="email" name="email" placeholder="Email" required="">
						</div>
						<div class="check">
							<label class="checkbox"><input type="checkbox" name="checkbox" checked=""><i> </i>i agree to the <span>terms of services</span></label>
						</div>
						<input type="submit" value="Sign Up">
						</form>
				</div>
			</div>	
			
			<!-- modal -->
			<div class="modal fade" id="readmore" tabindex="-1" role="dialog" aria-hidden="true">
				<div class="modal-dialog modal-lg">
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
							<h4 class="modal-title">Classic Ui Kit</h4>
						</div>
						<div class="modal-body">
							<div class="col-md-6">
								<p>Lorem ipsum dolor sit amet, as ac molestie mi. Nam tincidunt pretium dolor, eu placerat elit. Duis nec luctus dolor. Ut a diam metus. Aenean fringilla purus enim, non pharetra eros blandit in. Suspendisse tellus quam, vestibulum vel urna vitae, sagittis consectetur dui. </p>
							</div>
							<div class="col-md-6">
								<img class="img-responsive team-agile" src="images/model.jpg" alt="">
							</div>
							<div class="clearfix"></div>	
						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
						</div>
					</div><!-- //modal-content -->
				</div><!-- //modal-dialog -->
			</div><!-- //modal -->
			<!-- climate-icons -->
		
					</div>
	</div>
	<div class="clearfix"></div>
	<!-- //sec-section -->
	
	<!-- fourth-section -->
	<div class="w3l-fourth">
		
	</div>
	<!-- //fourth-section -->
	<!-- fifth-section -->
	<!-- Prices -->
	
	<div class="col-md-4 top-grids-3">
		<div class="w3l-calendar-left w3-agile-width">
			<div class="calendar-heading">
								
			</div>
			<div class="monthly" id="mycalendar"></div>
		</div>
	</div>
	<div class="clearfix"></div> 
	<!-- //calendar -->
	<!-- //seventh-section -->

	<!-- 9th-section -->
	
	<div class="col-md-14 w3l-accordion-mk">
		<div class="acrdn-top">
			<h4>Nearest-Neighbor (NN)</h4>
		</div>
		<!-- Accordion -->
		<div class="ac-container agileits w3layouts">
			<div>
				<input id="ac-4" name="accordion-1" type="checkbox" />
				<label for="ac-4" class="grid1"><i></i>U-G-U-V metapath</label>
				<article class="ac-small agileits w3layouts">
					<ul>
						<li><a href="#">Count of Pi Voting Latent Feature of v (target user) of group’s of user u (vote initiator)</a></li>
						<li><a href="#">For a target user u, UGUV searches for all the groups
that u has joined</a></li>
						<li><a href="#">For each joined group g, search for all the users
that belong to group g.</a></li>
						<li><a href="#">Users in group g report their relevant votings.</a></li>
						<li><a href="#">Combine the reports of all groups.</a></li>
					</ul>
				</article>
			</div>
			<div>
				<input id="ac-5" name="accordion-1" type="checkbox" />
				<label for="ac-5" class="grid2"><i></i>UUV(m-hop) metapath:</label>
				<article class="ac-small agileits w3layouts">
					<ul>
						<li><a href="#">each target user u do</a></li>
						<li><a href="#">Find all followees v’s within m-hops by BFS;</a></li>
						<li><a href="#">Put all those v’s in a set</a></li>
						<li><a href="#">User v reports its relevant votings and put them in
a set Iv</a></li>
						<li><a href="#">Set weight parameter ws(u, v) according to the
depth of user v in the BFS tree rooted at user u</a></li>
					</ul>
				</article>
			</div>
			<div>
				<input id="ac-6" name="accordion-1" type="checkbox" />
				<label for="ac-6" class="grid3"><i></i>UVUV Metapath</label>
				<article class="ac-small agileits w3layouts">
					<ul>
						<li><a href="#">Find all votings j ’s that user u has participated;</a></li>
						<li><a href="#">Put all those voting j ’s into a set Iu;</a></li>
						<li><a href="#">for each voting j -> Iu do</a></li>
						<li><a href="#">Find all users v’s who ever participated in voting j
and put them in a set</a></li>
						<li><a href="#">Find all votings i ’s that user v has participated
and put them in a set Iv ;</a></li>
					</ul>
				</article>
			</div>
			<div>
				
			<div>
				<input id="ac-1" name="accordion-1" type="checkbox" />
				<label for="ac-1" class="grid5"><i></i>UNN</label>
				<article class="ac-small agileits w3layouts">
					<ul>
						<li><a href="#">Users nearest to the source user u are identified and denoted
as Nu .</a></li>
						<li><a href="#">The relevant votings of these nearest users are scored
and ranked to form the top-k recommendation list.</a></li>
						<li><a href="#">Nu is the set of NNs of user u in the user latent feature
space</a></li>
						<li><a href="#">NNs of user u are weighted according to their
similarity sim(u, v) with user u,</a></li>
					</ul>
				</article>
			</div>
		</div>
		<!-- //Accordion -->
	</div>
	<div class="clearfix"></div>
	<!-- //9th-section -->
</div>



<div class="col-md-14 w3l_main_grid1_w3ls_grid w3l-news-mok">
		<h3></h3>
		<div class="w3_agile_main_left_grid_w3_agileits">
	<center><p class="">
<br><font size="+1" color="">&copy; All Rights Reserved | Design by </font>
</a></p>
</center>		
<div class="wthree_social_icons">
					<ul>
						<li><a href="#" class="w3_agile_facebook"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
						<li><a href="#" class="agile_twitter"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
						<li><a href="#" class="w3_agile_dribble"><i class="fa fa-dribbble" aria-hidden="true"></i></a></li>
						<li><a href="#" class="w3_agile_vimeo"><i class="fa fa-vimeo" aria-hidden="true"></i></a></li>
					</ul>
				</div>
		</div>
	</div>
<!-- //main-content -->
<!-- copyright -->

<!-- //copyright -->

<!-- js-scripts -->		
<!-- js -->
<script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>
<!-- //js -->
<!-- smooth scrolling -->
<script src="js/SmoothScroll.min.js"></script>
<!-- //smooth scrolling -->
<!-- menu-script -->
<script>
	$("span.menu").click(function(){
		$(".nav1 ul").slideToggle(500, function(){
		});
	});
</script>
<!-- //menu-script -->
<!--skycons-icons-->
<script src="js/skycons.js"></script>
<!--//skycons-icons-->
<!--banner Slider starts Here-->
<script src="js/responsiveslides.min.js"></script>
<script>
	// You can also use "$(window).load(function() {"
	$(function () {
	  // Slideshow 4
	  $("#slider4").responsiveSlides({
		auto: true,
		pager:true,
		nav:true,
		speed: 500,
		namespace: "callbacks",
		before: function () {
		  $('.events').append("<li>before event fired.</li>");
		},
		after: function () {
		  $('.events').append("<li>after event fired.</li>");
		}
	  });

	});
</script>
<!--banner Slider ends Here-->
<!--weather-->
<script>
	var icons = new Skycons({"color": "#E8BA0A"}),
		  list  = [
			"partly-cloudy-night"
		  ],
		  i;

	  for(i = list.length; i--; )
		icons.set(list[i], list[i]);
	  icons.play();
</script>
<script>
	 var icons = new Skycons({"color": "#999"}),
		  list  = [
			"clear-day","fog","wind","partly-cloudy-day","snow"
		  ],
		  i;

	  for(i = list.length; i--; )
		icons.set(list[i], list[i]);
	  icons.play();
</script>
<!--//weather-->
<!-- video pg plugin -->  
<script src="js/jquery.vide.min.js"></script>
<!-- //video pg plugin -->  
<!-- //bars -->
<script src="js/bars.js"></script>	
<!-- bars -->
<!-- Owl-Carousel-JavaScript -->
<script src="js/owl.carousel.js"></script>
<script>
	$(document).ready(function() {
		$("#owl-demo").owlCarousel ({
			items : 4,
			lazyLoad : true,
			autoPlay : true,
			pagination : true,
		});
	});
</script>
<!-- //Owl-Carousel-JavaScript --> 
<!-- responsive-tabs -->
	<script src="js/easy-responsive-tabs.js"></script>
	<script>
		$(document).ready(function () {
		$('#verticalTab').easyResponsiveTabs({
		type: 'vertical',
		width: 'auto',
		fit: true
		});
		});
	</script>
<!-- //responsive-tabs -->
<!-- Popup-js -->
<script src="js/jquery.magnific-popup.js" type="text/javascript"></script>
<script>
	$(document).ready(function() {
	$('.popup-with-zoom-anim').magnificPopup({
		type: 'inline',
		fixedContentPos: false,
		fixedBgPos: true,
		overflowY: 'auto',
		closeBtnInside: true,
		preloader: false,
		midClick: true,
		removalDelay: 300,
		mainClass: 'my-mfp-zoom-in'
	});
																	
	});
</script>
<!-- //Popup-js -->
<!-- stats -->
<script type="text/javascript" src="js/numscroller-1.0.js"></script>
<!-- //stats -->
<!-- calendar -->
<script type="text/javascript" src="js/monthly.js"></script>
<!-- //calendar -->	
<!-- Counter required files -->
<link rel='stylesheet' href='css/dscountdown.css' type='text/css' media='all' />
<script type="text/javascript" src="js/dscountdown.min.js"></script>
<script>
	jQuery(document).ready(function($){						
		$('.demo2').dsCountDown({
			endDate: new Date("December 24, 2020 23:59:00"),
			theme: 'black'
			});								
	});
</script>
<!-- //Counter required files -->
<!-- Necessary-JavaScript-File-For-Bootstrap --> 	
<script type="text/javascript" src="js/bootstrap.js"></script>
<!-- //Necessary-JavaScript-File-For-Bootstrap -->
 
<!-- //js-scripts -->
	
</body>
</html>


<%
    String message=request.getParameter("id");
    if(message!=null && message.equalsIgnoreCase("succ")){
    out.println("<script type=text/javascript>alert('Registration Successfully Completed')</script>");
	}
 %>

 

 <%
                                                       message=request.getParameter("m");
                                                       
													   
													   if(message!=null && message.equalsIgnoreCase("fail"))
                                                       {
                                                                  out.println("<script type=text/javascript>alert('Login Fail !!  '); </script>");
                                                       }

			    %>
