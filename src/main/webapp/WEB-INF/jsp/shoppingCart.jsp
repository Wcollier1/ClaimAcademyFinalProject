<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!DOCTYPE html>
<html>
<head>
<title>Euphoric Ambiance</title>
<!--/tags -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Elite Shoppy Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
		function hideURLbar(){ window.scrollTo(0,1); } </script>
<!--//tags -->

<script
	src="//ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<script
	src="//netdna.bootstrapcdn.com/bootstrap/3.1.1/js/bootstrap.min.js"></script>
	
	
<link href="resources/sources/eu/css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<link href="resources/sources/eu/css/style.css" rel="stylesheet" type="text/css" media="all" />
<link href="resources/sources/eu/css/font-awesome.css" rel="stylesheet"> 
<link href="resources/sources/eu/css/easy-responsive-tabs.css" rel='stylesheet' type='text/css'/>
<!-- //for bootstrap working -->
<link href="//fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800" rel="stylesheet">
<link href='//fonts.googleapis.com/css?family=Lato:400,100,100italic,300,300italic,400italic,700,900,900italic,700italic' rel='stylesheet' type='text/css'>

</head>
<body>
<!-- header -->
<div class="header" id="home">
	<div class="container">
		<ul>
				<c:choose>
					<c:when test="${empty loginUser}">
						<li><a href="login"><i class="fa fa-unlock-alt"
								aria-hidden="true"></i> Sign In </a></li>
					</c:when>
					<c:otherwise>
						<li><a href="logout"><i class="fa fa-unlock-alt"
								aria-hidden="true"></i> Log out </a></li>
					</c:otherwise>

				</c:choose>
				<li><a href="signup"><i class="fa fa-pencil-square-o"
						aria-hidden="true"></i> Sign Up </a></li>
				<li><i class="fa fa-phone" aria-hidden="true"></i> Call :
					314-330-8029</li>
				<li><a href="checkout"><i class="fa fa-pencil-square-o"
						aria-hidden="true"></i> Next </a></li>
			</ul>
	</div>
</div>
<!-- //header -->
<!-- header-bot -->
<div class="header-bot">
	<div class="header-bot_inner_wthreeinfo_header_mid">
		<div class="col-md-4 header-middle">
			<form action="#" method="post">
					<input type="search" name="search" placeholder="Search here..." required="">
					<input type="submit" value=" ">
				<div class="clearfix"></div>
			</form>
		</div>
		<!-- header-bot -->
			<div class="col-md-4 logo_agile">
				<h1><a href="index"><span>E</span>uphoric Ambiance <i aria-hidden="true"></i></a></h1>
			</div>
        <!-- header-bot -->
		<div class="col-md-4 agileits-social top_content">
						<ul class="social-nav model-3d-0 footer-social w3_agile_social">
						                                   <li class="share">Share On : </li>
															<li><a href="#" class="facebook">
																  <div class="front"><i class="fa fa-facebook" aria-hidden="true"></i></div>
																  <div class="back"><i class="fa fa-facebook" aria-hidden="true"></i></div></a></li>
															<li><a href="#" class="twitter"> 
																  <div class="front"><i class="fa fa-twitter" aria-hidden="true"></i></div>
																  <div class="back"><i class="fa fa-twitter" aria-hidden="true"></i></div></a></li>
															<li><a href="#" class="instagram">
																  <div class="front"><i class="fa fa-instagram" aria-hidden="true"></i></div>
																  <div class="back"><i class="fa fa-instagram" aria-hidden="true"></i></div></a></li>
															<li><a href="#" class="pinterest">
																  <div class="front"><i class="fa fa-linkedin" aria-hidden="true"></i></div>
																  <div class="back"><i class="fa fa-linkedin" aria-hidden="true"></i></div></a></li>
														</ul>



		</div>
		<div class="clearfix"></div>
	</div>
</div>
<!-- //header-bot -->
<!-- banner -->
<div class="ban-top">
	<div class="container">
		<div class="top_nav_left">
			<nav class="navbar navbar-default">
			  <div class="container-fluid">
				<!-- Brand and toggle get grouped for better mobile display -->
				<div class="navbar-header">
				  <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
					<span class="sr-only">Toggle navigation</span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				  </button>
				</div>
				<!-- Collect the nav links, forms, and other content for toggling -->
				<div class="collapse navbar-collapse menu--shylock" id="bs-example-navbar-collapse-1">
				  <ul class="nav navbar-nav menu__list">
					<li class="active menu__item menu__item--current"><a class="menu__link" href="index">Home <span class="sr-only">(current)</span></a></li>
					
					
					<li class=" menu__item"><a class="menu__link" href="about.html">About</a></li>
					
					
					<li class="dropdown menu__item">
						<a href="#" class="dropdown-toggle menu__link" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Mens Fragrances <span class="caret"></span></a>
						
						
							<ul class="dropdown-menu multi-column columns-3">
								<div class="agile_inner_drop_nav_info">
								
									
									<c:forEach items="${maleProducts1}" var="maleProducts1">
												<div class="col-sm-3 multi-gd-img">
													<ul class="multi-column-dropdown">
														<li><a
															href="menAnnuci?productID=${maleProducts1.productId}"><c:out
																	value="${maleProducts1.productName}"></c:out></a></li>

													</ul>
												</div>
											</c:forEach>

											<c:forEach items="${maleProducts2}" var="maleProducts2">
												<div class="col-sm-3 multi-gd-img">
													<ul class="multi-column-dropdown">
														<li><a
															href="menAnnuci?productID=${maleProducts2.productId}"><c:out
																	value="${maleProducts2.productName}"></c:out></a></li>

													</ul>
												</div>
											</c:forEach>

											<c:forEach items="${maleProducts3}" var="maleProducts3">
												<div class="col-sm-3 multi-gd-img">
													<ul class="multi-column-dropdown">
														<li><a
															href="menAnnuci?productID=${maleProducts3.productId}"><c:out
																	value="${maleProducts3.productName}"></c:out></a></li>

													</ul>
												</div>
											</c:forEach>

											<c:forEach items="${maleProducts4}" var="maleProducts4">
												<div class="col-sm-3 multi-gd-img">
													<ul class="multi-column-dropdown">
														<li><a
															href="menAnnuci?productID=${maleProducts4.productId}"><c:out
																	value="${maleProducts4.productName}"></c:out></a></li>

													</ul>
												</div>
											</c:forEach>
											<li><a href="menViewMore">View More</a></li>
									<div class="clearfix"></div>
								</div>
							</ul>
					</li>
					<li class="dropdown menu__item">
						<a href="#" class="dropdown-toggle menu__link" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Womens Fragrances <span class="caret"></span></a>
						
						
							<ul class="dropdown-menu multi-column columns-3">
								<div class="agile_inner_drop_nav_info">
								
								
									<c:forEach items="${femaleProducts1}" var="femaleProducts1">
												<div class="col-sm-3 multi-gd-img">
													<ul class="multi-column-dropdown">
														<li><a
															href="womenAmberWhite?productID=${femaleProducts1.productId}"><c:out
																	value="${femaleProducts1.productName}"></c:out></a></li>

													</ul>
												</div>
											</c:forEach>

											<c:forEach items="${femaleProducts2}" var="femaleProducts2">
												<div class="col-sm-3 multi-gd-img">
													<ul class="multi-column-dropdown">
														<li><a
															href="womenAmberWhite?productID=${femaleProducts2.productId}"><c:out
																	value="${femaleProducts2.productName}"></c:out></a></li>

													</ul>
												</div>
											</c:forEach>

											<c:forEach items="${femaleProducts3}" var="femaleProducts3">
												<div class="col-sm-3 multi-gd-img">
													<ul class="multi-column-dropdown">
														<li><a
															href="womenAmberWhite?productID=${femaleProducts3.productId}"><c:out
																	value="${femaleProducts3.productName}"></c:out></a></li>

													</ul>
												</div>
											</c:forEach>

											<c:forEach items="${femaleProducts4}" var="femaleProducts4">
												<div class="col-sm-3 multi-gd-img">
													<ul class="multi-column-dropdown">
														<li><a
															href="womenAmberWhite?productID=${femaleProducts4.productId}"><c:out
																	value="${femaleProducts4.productName}"></c:out></a></li>

													</ul>
												</div>
											</c:forEach>
											<li><a href="womenViewMore">View More</a></li>
									
									<div class="clearfix"></div>
								</div>
							</ul>
					</li>
					
					<li class=" menu__item"><a class="menu__link" href="contactUs">Contact</a></li>
				  </ul>
				</div>
			  </div>
			</nav>	
		</div>
		<div class="top_nav_right">
			<div class="wthreecartaits wthreecartaits2 cart cart box_1"> 
						<form action="#" method="post" class="last"> 
						<input type="hidden" name="cmd" value="_cart">
						<input type="hidden" name="display" value="1">
						<button class="w3view-cart" type="submit" name="submit" value=""><i class="fa fa-cart-arrow-down" aria-hidden="true"></i></button>
					</form>  
  
						</div>
		</div>
		<div class="clearfix"></div>
	</div>
</div>

<table class="table table-bordered">

              <thead>
              
              
                <tr>
                  <th>Product</th>
                  <th>Name</th>
                  <th>Quantity</th>
                  <th>Price</th>
                  <th>Gender</th>
                  <th>Size</th>
                  <th>Number of Items(3)</th>
				</tr>
              </thead>
              
              
              <tbody>
              
              <c:forEach items="${productsCart}" var="productsCart">
                <tr>
                  <td> <img width="60" src="resources/sources/sc/themes/images/products/sCartPic.jpg" alt=""/></td>
                  <td><c:out value="${productsCart.productName}"></c:out></td>
				  <td>
					<div class="input-append"><input class="span1" style="max-width:34px" placeholder="1" id="appendedInputButtons" size="16" type="text"></div>
				  </td>
                  <td><c:out value="${productsCart.productPrice}"></c:out></td>
                  <td><c:out value="${productsCart.gender}"></c:out></td>
                  <td><c:out value="${productsCart.size}"></c:out></td> 
                  <td><a href="deleteItem?productId=${productsCart.productId}">Delete</a></td>
                </tr>
			</c:forEach>
             
				
                <tr>
                  <td colspan="6" style="text-align:right">Total Price:	</td>
                  <td> <strong><c:out value="${totPrice}"></c:out></strong></td>
                  
                </tr>
				
                
				</tbody>
				
            </table>
            
       
			

					


            
   
	<!-- //we-offer -->
	<!--/grids-->
	<div class="coupons">
		<div class="coupons-grids text-center">
			<div class="w3layouts_mail_grid">
				<div class="col-md-3 w3layouts_mail_grid_left">
					<div class="w3layouts_mail_grid_left1 hvr-radial-out">
						<i class="fa fa-truck" aria-hidden="true"></i>
					</div>
					<div class="w3layouts_mail_grid_left2">
						<h3>Serving since 1997</h3>

					</div>
				</div>
				<div class="col-md-3 w3layouts_mail_grid_left">
					<div class="w3layouts_mail_grid_left1 hvr-radial-out">
						<i class="fa fa-headphones" aria-hidden="true"></i>
					</div>
					<div class="w3layouts_mail_grid_left2">
						<h3>24/7 SUPPORT</h3>

					</div>
				</div>
				<div class="col-md-3 w3layouts_mail_grid_left">
					<div class="w3layouts_mail_grid_left1 hvr-radial-out">
						<i class="fa fa-shopping-bag" aria-hidden="true"></i>
					</div>
					<div class="w3layouts_mail_grid_left2">
						<h3>30 DAY MONEY BACK GUARANTEE</h3>

					</div>
				</div>
				<div class="col-md-3 w3layouts_mail_grid_left">
					<div class="w3layouts_mail_grid_left1 hvr-radial-out">
						<i class="fa fa-gift" aria-hidden="true"></i>
					</div>
					<div class="w3layouts_mail_grid_left2">
						<h3>FREE PROMO CODES</h3>

					</div>
				</div>
				<div class="clearfix"></div>
			</div>

		</div>
	</div>
	<!--grids-->
	<!-- footer -->
	<div class="footer">
		<div class="footer_agile_inner_info_w3l">
			<div class="col-md-3 footer-left">
				<h2>
					<a href="index"><span>E</span>uphoric Ambience </a>
				</h2>
				<p>Welcome to Euphoric Ambience, where your fragrance experience
					will be like no other. We provide nothing but the highest potent,
					nose stoppping, best quality fragrance body oils since 1997.</p>
				<ul class="social-nav model-3d-0 footer-social w3_agile_social two">
					<li><a href="#" class="facebook">
							<div class="front">
								<i class="fa fa-facebook" aria-hidden="true"></i>
							</div>
							<div class="back">
								<i class="fa fa-facebook" aria-hidden="true"></i>
							</div>
					</a></li>
					<li><a href="#" class="twitter">
							<div class="front">
								<i class="fa fa-twitter" aria-hidden="true"></i>
							</div>
							<div class="back">
								<i class="fa fa-twitter" aria-hidden="true"></i>
							</div>
					</a></li>
					<li><a href="#" class="instagram">
							<div class="front">
								<i class="fa fa-instagram" aria-hidden="true"></i>
							</div>
							<div class="back">
								<i class="fa fa-instagram" aria-hidden="true"></i>
							</div>
					</a></li>
					<li><a href="#" class="pinterest">
							<div class="front">
								<i class="fa fa-linkedin" aria-hidden="true"></i>
							</div>
							<div class="back">
								<i class="fa fa-linkedin" aria-hidden="true"></i>
							</div>
					</a></li>
				</ul>
			</div>
			<div class="col-md-9 footer-right">
				<div class="sign-grds">
					<div class="col-md-4 sign-gd">
						<h4>
							Main <span>Menu</span>
						</h4>
						<ul>
							<li><a href="index">Home</a></li>
							<li><a href="menViewMore">Mens Fragrance</a></li>
							<li><a href="womenViewMore">Womens Fragrance</a></li>
							<li><a href="about">About</a></li>
							<li><a href="contactUs">Contact Us</a></li>

						</ul>
					</div>

					<div class="col-md-5 sign-gd-two">
						<h4>
							Our <span>Information</span>
						</h4>
						<div class="w3-address">
							<div class="w3-address-grid">
								<div class="w3-address-left">
									<i class="fa fa-phone" aria-hidden="true"></i>
								</div>
								<div class="w3-address-right">
									<h6>Phone Number</h6>
									<p>+1 314-330-8029</p>
								</div>
								<div class="clearfix"></div>
							</div>
							<div class="w3-address-grid">
								<div class="w3-address-left">
									<i class="fa fa-envelope" aria-hidden="true"></i>
								</div>
								<div class="w3-address-right">
									<h6>Email Address</h6>
									<p>
										<a href="mailto:example@email.com">
											support@EuphoricAmbience.com</a>
									</p>
								</div>
								<div class="clearfix"></div>
							</div>
							<div class="w3-address-grid">
								<div class="w3-address-left">
									<i class="fa fa-map-marker" aria-hidden="true"></i>
								</div>
								<div class="w3-address-right">
									<h6>Location</h6>
									<p>St. Louis, MO 63304 USA.</p>
								</div>
								<div class="clearfix"></div>
							</div>
						</div>
					</div>
					<div class="col-md-3 sign-gd flickr-post">
						<h4>
							Our <span>Team</span>
						</h4>
						<ul>
							<li><a href="single.html"><img
									src="resources/images/t1.jpg" alt=" " class="img-responsive" /></a></li>
							<li><a href="single.html"><img
									src="resources/images/t2.jpg" alt=" " class="img-responsive" /></a></li>
							<li><a href="single.html"><img
									src="resources/images/t3.jpg" alt=" " class="img-responsive" /></a></li>
							<li><a href="single.html"><img
									src="resources/images/t4.jpg" alt=" " class="img-responsive" /></a></li>
							<li><a href="single.html"><img
									src="resources/images/t1.jpg" alt=" " class="img-responsive" /></a></li>
							<li><a href="single.html"><img
									src="resources/images/t2.jpg" alt=" " class="img-responsive" /></a></li>
							<li><a href="single.html"><img
									src="resources/images/t3.jpg" alt=" " class="img-responsive" /></a></li>
							<li><a href="single.html"><img
									src="resources/images/t2.jpg" alt=" " class="img-responsive" /></a></li>
							<li><a href="single.html"><img
									src="resources/images/t4.jpg" alt=" " class="img-responsive" /></a></li>
						</ul>
					</div>
					<div class="clearfix"></div>
				</div>
			</div>
			<div class="clearfix"></div>
			<div class="agile_newsletter_footer">
				<div class="col-sm-6 newsleft">
					<h3>SIGN UP FOR NEWSLETTER !</h3>
				</div>
				<div class="col-sm-6 newsright">
					<form action="#" method="post">
						<input type="email" placeholder="Enter your email..." name="email"
							required=""> <input type="submit" value="Submit">
					</form>
				</div>

				<div class="clearfix"></div>
			</div>
			<p class="copy-right">
				&copy 2017 Elite shoppy. All rights reserved | Design by <a
					href="http://w3layouts.com/">W3layouts</a>
			</p>
		</div>
	</div>
	<!-- //footer -->

	<!-- login -->
	<div class="modal fade" id="myModal4" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel">
		<div class="modal-dialog" role="document">
			<div class="modal-content modal-info">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body modal-spa">
					<div class="login-grids">
						<div class="login">
							<div class="login-bottom">
								<h3>Sign up for free</h3>
								<form>
									<div class="sign-up">
										<h4>Email :</h4>
										<input type="text" value="Type here"
											onfocus="this.value = '';"
											onblur="if (this.value == '') {this.value = 'Type here';}"
											required="">
									</div>
									<div class="sign-up">
										<h4>Password :</h4>
										<input type="password" value="Password"
											onfocus="this.value = '';"
											onblur="if (this.value == '') {this.value = 'Password';}"
											required="">

									</div>
									<div class="sign-up">
										<h4>Re-type Password :</h4>
										<input type="password" value="Password"
											onfocus="this.value = '';"
											onblur="if (this.value == '') {this.value = 'Password';}"
											required="">

									</div>
									<div class="sign-up">
										<input type="submit" value="REGISTER NOW">
									</div>

								</form>
							</div>
							<div class="login-right">
								<h3>Sign in with your account</h3>
								<form>
									<div class="sign-in">
										<h4>Email :</h4>
										<input type="text" value="Type here"
											onfocus="this.value = '';"
											onblur="if (this.value == '') {this.value = 'Type here';}"
											required="">
									</div>
									<div class="sign-in">
										<h4>Password :</h4>
										<input type="password" value="Password"
											onfocus="this.value = '';"
											onblur="if (this.value == '') {this.value = 'Password';}"
											required=""> <a href="#">Forgot password?</a>
									</div>
									<div class="single-bottom">
										<input type="checkbox" id="brand" value=""> <label
											for="brand"><span></span>Remember Me.</label>
									</div>
									<div class="sign-in">
										<input type="submit" value="SIGNIN">
									</div>
								</form>
							</div>
							<div class="clearfix"></div>
						</div>
						<p>
							By logging in you agree to our <a href="#">Terms and
								Conditions</a> and <a href="#">Privacy Policy</a>
						</p>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- //login -->
	<a href="#home" class="scroll" id="toTop" style="display: block;">
		<span id="toTopHover" style="opacity: 1;"> </span>
	</a>

	<!-- js -->
	<script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>
	<!-- //js -->
	<script src="js/modernizr.custom.js"></script>
	<!-- Custom-JavaScript-File-Links -->
	<!-- cart-js -->
	<script src="js/minicart.min.js"></script>
	<script>
		// Mini Cart
		paypal.minicart.render({
			action : '#'
		});

		if (~window.location.search.indexOf('reset=true')) {
			paypal.minicart.reset();
		}
	</script>

	<!-- //cart-js -->
	<!-- script for responsive tabs -->
	<script src="js/easy-responsive-tabs.js"></script>
	<script>
		$(document).ready(function() {
			$('#horizontalTab').easyResponsiveTabs({
				type : 'default', //Types: default, vertical, accordion           
				width : 'auto', //auto or any width like 600px
				fit : true, // 100% fit in a container
				closed : 'accordion', // Start closed if in accordion view
				activate : function(event) { // Callback function if tab is switched
					var $tab = $(this);
					var $info = $('#tabInfo');
					var $name = $('span', $info);
					$name.text($tab.text());
					$info.show();
				}
			});
			$('#verticalTab').easyResponsiveTabs({
				type : 'vertical',
				width : 'auto',
				fit : true
			});
		});
	</script>
	<!-- //script for responsive tabs -->
	<!-- stats -->
	<script src="js/jquery.waypoints.min.js"></script>
	<script src="js/jquery.countup.js"></script>
	<script>
		$('.counter').countUp();
	</script>
	<!-- //stats -->
	<!-- start-smoth-scrolling -->
	<script type="text/javascript" src="js/move-top.js"></script>
	<script type="text/javascript" src="js/jquery.easing.min.js"></script>
	<script type="text/javascript">
		jQuery(document).ready(function($) {
			$(".scroll").click(function(event) {
				event.preventDefault();
				$('html,body').animate({
					scrollTop : $(this.hash).offset().top
				}, 1000);
			});
		});
	</script>
	<!-- here stars scrolling icon -->
	<script type="text/javascript">
		$(document).ready(function() {
			/*
				var defaults = {
				containerID: 'toTop', // fading element id
				containerHoverID: 'toTopHover', // fading element hover id
				scrollSpeed: 1200,
				easingType: 'linear' 
				};
			 */

			$().UItoTop({
				easingType : 'easeOutQuart'
			});

		});
	</script>
	<!-- //here ends scrolling icon -->


	<!-- for bootstrap working -->
	<script type="text/javascript" src="js/bootstrap.js"></script>
</body>
</html>
            
            
            