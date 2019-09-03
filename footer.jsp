<br><br><br><br>
</div></div>



	<div class="footer-agileits-w3layouts">
	<p class="agileinfo"> <br><font size="+1" color="">&copy; All Rights Reserved | Design by </font>
</a></p>
</div>








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
 