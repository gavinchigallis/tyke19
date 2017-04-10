<!--header-->
<div class="header" ng-controller="headerController">
	<div class="header-top">
		<div class="container">
			 <div class="top-left">
				<a href="#"> Customer Care  <i class="glyphicon glyphicon-phone" aria-hidden="true"></i> +1876-384-3328</a>
			</div>
			<div class="top-right">
			<ul>
				<li><a href="<?php echo Config::get('constants.BASE_URL'); ?>checkout">Checkout</a></li>
				<li><a href="login.html">Login</a></li>
				<li><a href="registered.html"> Create Account </a></li>
			</ul>
			</div>
			<div class="clearfix"></div>
		</div>
	</div>
	<div class="heder-bottom">
		<div class="container">
			<div class="logo-nav">
				<div class="logo-nav-left">
					<h1><a href="index.html"><sup>The</sup>Tech Store <span>Shop anywhere</span></a></h1>
				</div>
				<div class="logo-nav-left1">
					<nav class="navbar navbar-default">
					<!-- Brand and toggle get grouped for better mobile display -->
					<div class="navbar-header nav_2">
						<button type="button" class="navbar-toggle collapsed navbar-toggle1" data-toggle="collapse" data-target="#bs-megadropdown-tabs">
							<span class="sr-only">Toggle navigation</span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
						</button>
					</div> 
					<div class="collapse navbar-collapse" id="bs-megadropdown-tabs">
						<ul class="nav navbar-nav">
							<li class="active"><a href="index.html" class="act">Home</a></li>	
							<!-- Mega Menu -->
							<li class="dropdown">
								<a href="#" class="dropdown-toggle" data-toggle="dropdown">Categories<b class="caret"></b></a>
								<ul class="dropdown-menu multi-column columns-3">
									<div class="row">
										<div class="col-sm-3  multi-gd-img">
											<ul class="multi-column-dropdown">
												<h6>Main</h6>
												<li ng-repeat="category in categories" ng-mouseover="set_subcategories(category.Subcategories)"><a href="products.html">{{category.name}}</a></li>
												<!--li><a href="products.html">Wallets</a></li>
												<li><a href="products.html">Shoes</a></li>
												<li><a href="products.html">Watches</a></li>
												<li><a href="products.html"> Underwear </a></li>
												<li><a href="products.html">Accessories</a></li-->
											</ul>
										</div>
										<div class="col-sm-3  multi-gd-img">
											<ul class="multi-column-dropdown">
												<h6>SubCategories</h6>
												<li ng-repeat="subcategory in subcategories"><a href="products.html">Sunglasses</a></li>
												<!--li><a href="products.html">Wallets,Bags</a></li>
												<li><a href="products.html">Footwear</a></li>
												<li><a href="products.html">Watches</a></li>
												<li><a href="products.html">Accessories</a></li>
												<li><a href="products.html">Jewellery</a></li-->
											</ul>
										</div>
										<div class="col-sm-3  multi-gd-img">
												<a href="products.html"><img src="<?php echo Config::get('constants.BASE_URL'); ?>images/woo.jpg" alt=" "/></a>
										</div> 
										<div class="col-sm-3  multi-gd-img">
												<a href="products.html"><img src="<?php echo Config::get('constants.BASE_URL'); ?>images/woo1.jpg" alt=" "/></a>
										</div>
										<div class="clearfix"></div>
									</div>
								</ul>
							</li>
							<!--
							<li class="dropdown">
								<a href="#" class="dropdown-toggle" data-toggle="dropdown">Men <b class="caret"></b></a>
								<ul class="dropdown-menu multi-column columns-3">
									<div class="row">
										<div class="col-sm-3  multi-gd-img">
											<ul class="multi-column-dropdown">
												<h6>Submenu1</h6>
												<li><a href="products.html">Clothing</a></li>
												<li><a href="products.html">Wallets</a></li>
												<li><a href="products.html">Shoes</a></li>
												<li><a href="products.html">Watches</a></li>
												<li><a href="products.html"> Underwear </a></li>
												<li><a href="products.html">Accessories</a></li>
											</ul>
										</div>
										<div class="col-sm-3  multi-gd-img">
											<ul class="multi-column-dropdown">
												<h6>Submenu2</h6>
												<li><a href="products.html">Sunglasses</a></li>
												<li><a href="products.html">Wallets,Bags</a></li>
												<li><a href="products.html">Footwear</a></li>
												<li><a href="products.html">Watches</a></li>
												<li><a href="products.html">Accessories</a></li>
												<li><a href="products.html">Jewellery</a></li>
											</ul>
										</div>
										<div class="col-sm-3  multi-gd-img">
												<a href="products1.html"><img src="images/woo3.jpg" alt=" "/></a>
										</div> 
										<div class="col-sm-3  multi-gd-img">
												<a href="products1.html"><img src="images/woo4.jpg" alt=" "/></a>
										</div>
										<div class="clearfix"></div>
									</div>
								</ul>
							</li>
							-->
							<!--li><a href="codes.html">Short Codes</a></li-->
							<li><a href="mail.html">Contact</a></li>
						</ul>
					</div>
					</nav>
				</div>
				<div class="logo-nav-right">
					<ul class="cd-header-buttons">
						<li><a class="cd-search-trigger" href="#cd-search"> <span></span></a></li>
					</ul> <!-- cd-header-buttons -->
					<div id="cd-search" class="cd-search">
						<form action="#" method="post">
							<input name="Search" type="search" placeholder="Search...">
						</form>
						<br/>
						<div>
							<div class="" style="width: 150px; height: 150px; display: inline-block; margin: 5px;">
								<div class="">
									<img  src="<?php echo Config::get('constants.BASE_URL'); ?>images/l1.jpg" class="" style="width: 150px; height: 150px;" alt="">
									<div class="" style="width: 100%; height: 20px; background-color: rgba(0, 0, 0, 0.2); color: #FFFFFF; font-weight: bold; position: relative; margin-bottom: 20px;">
										<h4>Men</h4>
									</div>
								</div>
							</div>
							<div class="" style="width: 150px; height: 150px; display: inline-block; margin: 5px;">
								<div class="">
									<img  src="<?php echo Config::get('constants.BASE_URL'); ?>images/i1.jpg" class="" style="width: 150px; height: 150px;" alt="">
									<div class="" style="width: 100%; height: 20px; background-color: rgba(0, 0, 0, 0.2); color: #FFFFFF; font-weight: bold; position: relative; margin-bottom: 20px;">
										<h4>Men</h4>
									</div>
								</div>
							</div>
							<div class="" style="width: 150px; height: 150px; display: inline-block; margin: 5px;">
								<div class="">
									<img  src="<?php echo Config::get('constants.BASE_URL'); ?>images/icons/no-image-placeholder-big.png" class="" style="width: 150px; height: 150px;" alt="">
									<div class="" style="width: 100%; height: 20px; background-color: rgba(0, 0, 0, 0.2); color: #FFFFFF; font-weight: bold; position: relative; margin-bottom: 20px;">
										<h4>Men</h4>
									</div>
								</div>
							</div>
						</div>
					</div>	
				</div>
				<div class="header-right2">
					<div class="cart box_1">
						<a href="checkout.html">
							<h3> <div class="total">
								<span class="simpleCart_total">${{shoppingCartService.Value}} USD</span> (<span id="simpleCart_quantity" class="simpleCart_quantity">{{shoppingCartService.Amount}} </span> items)</div>
								<img src="<?php echo Config::get('constants.BASE_URL'); ?>images/bag.png" alt="" />
							</h3>
						</a>
						<p><a href="javascript:;" class="simpleCart_empty">Empty Cart</a></p>
						<div class="clearfix"> </div>
					</div>	
				</div>
				<div class="clearfix"> </div>
			</div>
		</div>
	</div>
</div>
<!--header-->