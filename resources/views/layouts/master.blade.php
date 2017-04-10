<!--
	Autthor:	Gavin Palmer
	Date   :	August 17th, 2016
	Company:	$[G-P's]$ Technologies Limited
	Project:	$[G-P's]$ Technologies E-comerce
-->
<!--
Au<!--
Author: W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE HTML>
<html>
<head>
<!--meta  tag-->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="New Shop Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<!--meta  tag-->
<!--css-->
<link href="<?php echo Config::get('constants.BASE_URL'); ?>css/All_Styles(Store).css" rel="stylesheet" type="text/css"/>
<link href="<?php echo Config::get('constants.BASE_URL'); ?>css/bootstrap.css" rel="stylesheet" type="text/css" media="all"/>
<link href="<?php echo Config::get('constants.BASE_URL'); ?>css/style.css" rel="stylesheet" type="text/css" media="all" />
<link href="<?php echo Config::get('constants.BASE_URL'); ?>css/font-awesome.css" rel="stylesheet">
<!--css-->
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<script src="<?php echo Config::get('constants.BASE_URL'); ?>vendors/jquery.min.js"></script>
<link href='//fonts.googleapis.com/css?family=Cagliostro' rel='stylesheet' type='text/css'>
<link href='//fonts.googleapis.com/css?family=Open+Sans:400,800italic,800,700italic,700,600italic,600,400italic,300italic,300' rel='stylesheet' type='text/css'>
<!--search jQuery-->
	<script src="<?php echo Config::get('constants.BASE_URL'); ?>vendors/main.js"></script>
<!--search jQuery-->
<script src="<?php echo Config::get('constants.BASE_URL'); ?>vendors/responsiveslides.min.js"></script>
 <script>
    $(function () {
      $("#slider").responsiveSlides({
      	auto: true,
      	nav: true,
      	speed: 500,
        namespace: "callbacks",
        pager: true,
      });
    });
 </script>
 <!--mycart-->
<script type="text/javascript" src="<?php echo Config::get('constants.BASE_URL'); ?>vendors/bootstrap-3.1.1.min.js"></script>
 <!-- cart -->
<!--script src="<?php echo Config::get('constants.BASE_URL'); ?>vendors/simpleCart.min.js"></script-->
<!-- cart -->
<!--start-rate-->
<script src="<?php echo Config::get('constants.BASE_URL'); ?>vendors/jstarbox.js"></script>
<link rel="stylesheet" href="<?php echo Config::get('constants.BASE_URL'); ?>css/jstarbox.css" type="text/css" media="screen" charset="utf-8" />
<script type="text/javascript">
jQuery(function() {
	jQuery('.starbox').each(function() {
		var starbox = jQuery(this);
			starbox.starbox({
			average: starbox.attr('data-start-value'),
			changeable: starbox.hasClass('unchangeable') ? false : starbox.hasClass('clickonce') ? 'once' : true,
			ghosting: starbox.hasClass('ghosting'),
			autoUpdateAverage: starbox.hasClass('autoupdate'),
			buttons: starbox.hasClass('smooth') ? false : starbox.attr('data-button-count') || 5,
			stars: starbox.attr('data-star-count') || 5
			}).bind('starbox-value-changed', function(event, value) {
			if(starbox.hasClass('random')) {
			var val = Math.random();
			starbox.next().text(' '+val);
			return val;
			} 
		})
	});
});
</script>
<!--//End-rate-->
<!-- Start flexslider  -->
  <script defer src="<?php echo Config::get('constants.BASE_URL'); ?>vendors/flexslider/js/jquery.flexslider.js"></script>
<link rel="stylesheet" href="<?php echo Config::get('constants.BASE_URL'); ?>vendors/flexslider/css/flexslider.css" type="text/css" media="screen" />
<script src="<?php echo Config::get('constants.BASE_URL'); ?>vendors/imagezoom.js"></script>
<script>
// Can also be used with $(document).ready()
$(window).load(function() {
  $('.flexslider').flexslider({
    animation: "slide",
    controlNav: "thumbnails"
  });
});
</script>
<!-- End flexslider -->
<link href="<?php echo Config::get('constants.BASE_URL'); ?>vendors/owl.carousel/css/owl.carousel.css" rel="stylesheet">
<script src="<?php echo Config::get('constants.BASE_URL'); ?>vendors/owl.carousel/js/owl.carousel.js"></script>
<script>
$(document).ready(function() {
	$("#owl-demo").owlCarousel({
		items : 1,
		lazyLoad : true,
		autoPlay : true,
		navigation : false,
		navigationText :  false,
		pagination : true,
	});
});
</script>
<!--Sweet alert-->
<link href="<?php echo Config::get('constants.BASE_URL'); ?>vendors/sweetalert/css/sweetalert.css" rel="stylesheet">
<script src="<?php echo Config::get('constants.BASE_URL'); ?>vendors/sweetalert/js/sweetalert.min.js"></script>
<!-- End sweet alert-->
<!-- Favicon
============================================ -->
<link rel="shortcut icon" type="image/x-icon" href="<?php echo Config::get('constants.BASE_URL').'/Images/logo_image.jpg' ?>">

<!-- =============== <?php echo Config::get('constants.App_name')?> =============== -->

<!-- JS Files
============================================ -->
<script src="<?php echo Config::get('constants.BASE_URL'); ?>js/All_Scripts(Store).js"></script>

<!-- Angular App
============================================ -->
<script src="<?php echo Config::get('constants.BASE_URL'); ?>vendors/angular/js/angular.js"></script>
<script src="<?php echo Config::get('constants.BASE_URL'); ?>vendors/angular/js/angular-ui-router.js"></script>
<script src="<?php echo Config::get('constants.BASE_URL'); ?>js/App.js"></script>
<!-- Angular Controllers
============================================ -->
<script src="<?php echo Config::get('constants.BASE_URL'); ?>js/controllers/homeController.js"></script>
<script src="<?php echo Config::get('constants.BASE_URL'); ?>js/controllers/headerController.js"></script>
<script src="<?php echo Config::get('constants.BASE_URL'); ?>js/controllers/footerController.js"></script>
<script src="<?php echo Config::get('constants.BASE_URL'); ?>js/controllers/productController.js"></script>
<!-- Angular Factories
============================================ -->
<script src="<?php echo Config::get('constants.BASE_URL'); ?>js/factories/eventsFactory.js"></script>
<!-- Angular Services
============================================ -->
<script src="<?php echo Config::get('constants.BASE_URL'); ?>js/services/categoryService.js"></script>
<script src="<?php echo Config::get('constants.BASE_URL'); ?>js/services/updatesService.js"></script>
<script src="<?php echo Config::get('constants.BASE_URL'); ?>js/services/productService.js"></script>
<script src="<?php echo Config::get('constants.BASE_URL'); ?>js/services/shoppingCartService.js"></script>
<!-- Angular Directives
============================================ -->
<script src="<?php echo Config::get('constants.BASE_URL'); ?>js/directives/OnErrorSrc.js"></script>
<title> @yield('title') </title>
</head>
<body ng-app="App">
	<!--div ui-view></div-->
	<div style="display:none">
	<!--?php
		include(Config::get('constants.BASE_URL').'google_adsense.php');
		include(Config::get('constants.BASE_URL').'analyticstracking.php');
	?-->
	</div>

	@include('includes.header')
	
	<!-- Add your site or application content here -->
	@yield('content')
	
	@include('includes.footer')
	
</body>
</html>