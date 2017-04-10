<!--
	Autthor:	GAvin Palmer
	Date:		April, 2016
	Company:	$[G-P's]$ Technologies Limited
	
	Modeled from: http://bootexperts.com/html/intensy-preview/intensy/index.html#
-->
<!DOCTYPE html>
<html class="js flexbox canvas canvastext webgl no-touch geolocation postmessage websqldatabase indexeddb hashchange history draganddrop websockets rgba hsla multiplebgs backgroundsize borderimage borderradius boxshadow textshadow opacity cssanimations csscolumns cssgradients cssreflections csstransforms csstransforms3d csstransitions fontface generatedcontent video audio localstorage sessionstorage webworkers applicationcache svg inlinesvg smil svgclippaths" lang="">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta http-equiv="x-ua-compatible" content="ie=edge">
	<meta name="description" content="">
		
		<!-- Mobile specific metas
		============================================ -->		
        <meta name="viewport" content="width=device-width, initial-scale=1">
		
		<!-- Fonts
		============================================ -->		
		<link href="css/css.css" rel="stylesheet" type="text/css">
		<link href="css/css_1.css" rel="stylesheet" type="text/css">

		<!-- Favicon
		============================================ -->
		<link rel="shortcut icon" type="image/x-icon" href="http://www.gp-tech-co.com/Images/logo_image.jpg">

		<!-- CSS  -->
		
		<!-- Bootstrap CSS
		============================================ -->
        <link rel="css/bootstrap.min.css">
		
		<!-- font-awesome CSS
		============================================ -->
        <link rel="stylesheet" href="css/font-awesome.min.css">
		
		<!-- owl.carousel CSS
		============================================ -->
        <link rel="stylesheet" href="css/owl.carousel.css">
		
		<!-- animate CSS
		============================================ -->
        <link rel="stylesheet" href="css/animate.css">
		
		<!-- fancybox CSS
		============================================ -->
        <link rel="stylesheet" href="css/jquery.fancybox.css">			
		
		<!-- meanmenu CSS
		============================================ -->		
        <link rel="stylesheet" href="css/meanmenu.min.css">
		
		<!-- RS slider CSS
		============================================ -->
		<link rel="stylesheet" type="text/css" href="css/settings.css" media="screen">	
		
		<!-- normalize CSS
		============================================ -->		
        <link rel="stylesheet" href="css/normalize.css">
		
		<!-- main CSS
		============================================ -->		
        <link rel="stylesheet" href="css/main.css">
		
		<!-- style CSS
		============================================ -->			
        <link rel="stylesheet" href="css/style.css">
		
		<!-- responsive CSS
		============================================ -->			
        <link rel="stylesheet" href="css/responsive.css">
		
		<!-- style_footer CSS
		============================================ -->			
        <link rel="stylesheet" href="css/style_footer.css">
		
		<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,700' rel='stylesheet' type='text/css'>

		<link rel="stylesheet" href="css/reset_contact.css"> <!-- CSS reset -->
		<link rel="stylesheet" href="css/style_contact.css"> <!-- Resource style -->
		<script src="js/modernizr.js"></script> <!-- Modernizr -->
		
		
		<!-- modernizr js
		============================================ -->		
        <script src="js/modernizr-2.8.3.min.js"></script>
    <style type="text/css">.fancybox-margin{margin-right:17px;}</style>
	<title>$[G-P's]$ Technologies Limited</title>
</head>
<body>
        <!--[if lt IE 8]>
            <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
        <![endif]-->

        <!-- Add your site or application content here -->
    
	<?php
		include 'header.php';
	?>

	<div class="page" style="">
		<form class="cd-form floating-labels">
		<fieldset>
			<legend>Contact information</legend>

			<div class="error-message">
				<p>Quotation request</p>
			</div>

			<div class="icon">
				<label class="cd-label" for="cd-name">Name</label>
				<input class="user" type="text" name="cd-name" id="cd-name" required>
		    </div> 

		    <div class="icon">
		    	<label class="cd-label" for="cd-company">Company</label>
				<input class="company" type="text" name="cd-company" id="cd-company">
		    </div> 

		    <div class="icon">
		    	<label class="cd-label" for="cd-email">Email</label>
				<input class="email error" type="email" name="cd-email" id="cd-email" required>
		    </div>
		</fieldset>

		<fieldset>
			<legend></legend>

			<!--div>
				<h4>Budget</h4>

				<p class="cd-select icon">
					<select class="budget">
						<option value="0">Select Budget</option>
						<option value="1">&lt; $5000</option>
						<option value="2">$5000 - $10000</option>
						<option value="3">&gt; $10000</option>
					</select>
				</p>
			</div--> 

			<!--div>
				<h4>Project type</h4>

				<ul class="cd-form-list">
					<li>
						<input type="radio" name="radio-button" id="cd-radio-1" checked>
						<label for="cd-radio-1">Choice 1</label>
					</li>
						
					<li>
						<input type="radio" name="radio-button" id="cd-radio-2">
						<label for="cd-radio-2">Choice 2</label>
					</li>

					<li>
						<input type="radio" name="radio-button" id="cd-radio-3">
						<label for="cd-radio-3">Choice 3</label>
					</li>
				</ul>
			</div-->

			<!--div>
				<h4>Features</h4>

				<ul class="cd-form-list">
					<li>
						<input type="checkbox" id="cd-checkbox-1">
						<label for="cd-checkbox-1">Option 1</label>
					</li>

					<li>
						<input type="checkbox" id="cd-checkbox-2">
						<label for="cd-checkbox-2">Option 2</label>
					</li>

					<li>
						<input type="checkbox" id="cd-checkbox-3">
						<label for="cd-checkbox-3">Option 3</label>
					</li>
				</ul>
			</div-->

			<div class="icon">
				<label class="cd-label" for="cd-textarea">Project description</label>
      			<textarea class="message" name="cd-textarea" id="cd-textarea" required></textarea>
			</div>

			<div>
		      	<input type="submit" value="Send Message">
		    </div>
		</fieldset>
	</form>
	</div>
	<?php
		include 'footer.php';
	?>
	
		<!-- JS -->
		<script src="js/jquery-2.1.1.js"></script>
		
		<script src="js/main_contact.js"></script> <!-- Resource jQuery -->
		
		<!-- jquery js -->
        <script src="js/jquery-1.11.2.min.js"></script>
		
		<!-- bootstrap js -->
        <script src="js/bootstrap.min.js"></script>
		
		<!-- owl.carousel.min js -->
        <script src="js/owl.carousel.min.js"></script>
		
		<!-- meanmenu js -->
        <script src="js/jquery.meanmenu.js"></script>
		
		<!-- jquery.countdown js -->
        <script src="js/jquery.countdown.min.js"></script>
		
		<!-- parallax js -->
        <script src="js/parallax.js"></script>	

		<!-- jquery.collapse js -->
        <script src="js/jquery.collapse.js"></script>
		
		<!-- jquery.easing js -->
        <script src="js/jquery.easing.1.3.min.js"></script>	
		
		<!-- jquery.scrollUp js -->
        <script src="js/jquery.scrollUp.min.js"></script>	
		
		<!-- knob circle js -->
        <script src="js/jquery.knob.js"></script>	
		
		<!-- jquery.appear js -->
		<script src="js/jquery.appear.js"></script>	
		
		<!-- jquery.mixitup js -->
		<script src="js/jquery.mixitup.min.js"></script>

		<!-- fancybox js -->
		<script src="js/jquery.fancybox.pack.js"></script>			

		<!-- jquery.counterup js -->
        <script src="js/jquery.counterup.min.js"></script>
        <script src="js/waypoints.min.js"></script>	

		<!-- rs-plugin js -->
		<script type="text/javascript" src="js/jquery.themepunch.tools.min.js"></script>   
		<script type="text/javascript" src="js/jquery.themepunch.revolution.min.js"></script>
		<script src="js/rs.home.js"></script>		
		
		<!-- wow js -->
        <script src="js/wow.js"></script>		
		<script>
			new WOW().init();
		</script>
		
		<!-- plugins js -->
        <script src="js/plugins.js"></script>
		
		<!-- main js -->
        <script src="js/main.js"></script><a id="scrollUp" href="http://bootexperts.com/html/intensy-preview/intensy/index.html#top" style="position: fixed; z-index: 2147483647; display: none;"><i class="fa fa-angle-double-up"></i></a>

    

<style type="text/css">.typewrite > .wrap { border-right: 0}</style></body></html>