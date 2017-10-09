<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html lang="en">

<head>


<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">


<title>Euphoric Ambience</title>

<link href="resources/sources/eu/css/bootstrap.css" rel="stylesheet"
	type="text/css" media="all" />
<link href="resources/sources/eu/css/style.css" rel="stylesheet"
	type="text/css" media="all" />
<link href="resources/sources/eu/css/font-awesome.css" rel="stylesheet">
<link href="resources/sources/eu/css/easy-responsive-tabs.css"
	rel='stylesheet' type='text/css' />
<style>
#map {
	height: 400px;
	width: 100%;
}
</style>
<!-- Bootstrap Core CSS -->
<link href="resources/admin/css/bootstrap.min.css" rel="stylesheet">

<!-- Custom CSS -->
<link href="resources/admin/css/sb-admin.css" rel="stylesheet">

<!-- Morris Charts CSS -->
<link href="resources/admin/css/plugins/morris.css" rel="stylesheet">

<!-- Custom Fonts -->
<link href="resources/admin/font-awesome/css/font-awesome.min.css"
	rel="stylesheet" type="text/css">

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body>

	<div id="map"></div>
	<script>
function initMap(){
var options = {
zoom:4,
center:{lat:38.6270,lng:-90.1994}
}

//Add a map
var map = new
google.maps.Map(document.getElementById('map'),options);
//Listen for click on map
google.maps.event.addListener(map, 'click', function(event){
  // Add marker
  addMarker({coords:event.latLng});
});

/*
// Add marker
var marker = new google.maps.Marker({
  position:{lat:42.4668,lng:-70.9495},
  map:map,
  icon:'https://developers.google.com/maps/documentation/javascript/examples/full/images/beachflag.png'
});

var infoWindow = new google.maps.InfoWindow({
  content:'<h1>Lynn MA</h1>'
});

marker.addListener('click', function(){
  infoWindow.open(map, marker);
});
*/

// Array of markers
var markers = [
  {
    coords:{lat:42.4668,lng:-70.9495},
    iconImage:'/Users/youngbull/Documents/Euphoric\ Ambience/pro/beachflag.jpg',
    content:'<h1>Lynn MA</h1>'
  },
  {
    coords:{lat:42.8584,lng:-70.9300},
    content:'<h1>Amesbury MA</h1>'
  },
  {
    coords:{lat:42.7762,lng:-71.0773}
  }
];

// Loop through markers
for(var i = 0;i < markers.length;i++){
  // Add marker
  addMarker(markers[i]);
}

// Add Marker Function
function addMarker(props){
  var marker = new google.maps.Marker({
    position:props.coords,
    map:map,
    //icon:props.iconImage
  });

  // Check for customicon
  if(props.iconImage){
    // Set icon image
    marker.setIcon(props.iconImage);
  }

  // Check content
  if(props.content){
    var infoWindow = new google.maps.InfoWindow({
      content:props.content
    });

    marker.addListener('click', function(){
      infoWindow.open(map, marker);
    });
  }
}
}
</script>

	<script async defer
		src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCD1VnuOHSpwbRSZnzk8PvCZN0Wvgu2QXY&callback=initMap">
    </script>

</body>
<div id="wrapper">

	<!-- Navigation -->
	<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
		<!-- Brand and toggle get grouped for better mobile display -->
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse"
				data-target=".navbar-ex1-collapse">
				<span class="sr-only">Toggle navigation</span> <span
					class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="index.html">Euphoric Ambience Admin</a>
		</div>
		<!-- Top Menu Items -->
		<ul class="nav navbar-right top-nav">
			<li class="dropdown">

				<ul class="dropdown-menu message-dropdown">


					<li class="message-preview"><a href="#">
							<div class="media">
								<span class="pull-left"> <img class="media-object"
									src="http://placehold.it/50x50" alt="">
								</span>
								<div class="media-body">
									<h5 class="media-heading">
										<strong>Euphoric Ambience</strong>
									</h5>
									<p class="small text-muted">
										<i class="fa fa-clock-o"></i> Yesterday at 4:32 PM
									</p>
									<p>Lorem ipsum dolor sit amet, consectetur...</p>
								</div>
							</div>
					</a></li>
					<li class="message-footer"><a href="#">Read All New
							Messages</a></li>
				</ul>
			</li>

			<li class="dropdown"><a href="#" class="dropdown-toggle"
				data-toggle="dropdown"><i class="fa fa-user"></i> Euphoric
					Ambience </a></li>
		</ul>
		<!-- Sidebar Menu Items - These collapse to the responsive navigation menu on small screens -->
		<div class="collapse navbar-collapse navbar-ex1-collapse">
			<ul class="nav navbar-nav side-nav">
				<li class="active"><a href="admin"><i
						class="fa fa-fw fa-dashboard"></i> Dashboard</a></li>
				<li><a href="admin"><i
						class="fa fa-fw fa-bar-chart-o"></i> Charts</a></li>
				<li><a href="admin"><i class="fa fa-fw fa-table"></i>
						Tables</a></li>


			</ul>
		</div>
		<!-- /.navbar-collapse -->
	</nav>

	<div id="page-wrapper">

		<div class="container-fluid">

			<!-- Page Heading -->
			<div class="row">
				<div class="col-lg-12">
					<h1 class="page-header">
						Dashboard <small>Map</small>
					</h1>
					<ol class="breadcrumb">
						<li class="active"><i class="fa fa-dashboard"></i> Dashboard
						</li>
					</ol>
				</div>
			</div>
			<table class="table table-bordered">

	<thead>


		<tr>
			<th>(ID)</th>
			<th>(Name)</th>
			<th>(Price)</th>
			<th>(Size)</th>
			<th>(Person)</th>
		</tr>
	</thead>


	<tbody>

		<c:forEach items="${adminProducts}" var="adminProduct">
			<tr>
				<td><c:out value="${adminProduct.productId}"></c:out></td>
				<td><c:out value="${adminProduct.productName}"></c:out></td>
				<td><c:out value="${adminProduct.productPrice}"></c:out></td>
				<td><c:out value="${adminProduct.size}"></c:out></td>
				<td><c:out value="${adminProduct.email}"></c:out></td>

			</tr>
		</c:forEach>
	</tbody>

</table>

<table class="table table-bordered">

	<thead>


		<tr>
			<th>First Name</th>
			<th>Last Name</th>
			<th>Street</th>
			<th>City</th>
			<th>State</th>
			<th>Zip-code</th>
			<th>Email</th>
		</tr>
	</thead>


	<tbody>

		<c:forEach items="${adminCustomerData}" var="adminCustomer">
			<tr>

				<td><c:out value="${adminCustomer.firstname}"></c:out></td>
				<td><c:out value="${adminCustomer.lastname}"></c:out></td>
				<td><c:out value="${adminCustomer.street}"></c:out></td>
				<td><c:out value="${adminCustomer.city}"></c:out></td>
				<td><c:out value="${adminCustomer.state}"></c:out></td>
				<td><c:out value="${adminCustomer.zipcode}"></c:out></td>
				<td><c:out value="${adminCustomer.email}"></c:out></td>
			</tr>
		</c:forEach>

	</tbody>

</table>


			


<!-- /#wrapper -->

<!-- jQuery -->
<script src="resources/admin/js/jquery.js"></script>

<!-- Bootstrap Core JavaScript -->
<script src="resources/admin/js/bootstrap.min.js"></script>

<!-- Morris Charts JavaScript -->
<script src="resources/admin/js/plugins/morris/raphael.min.js"></script>
<script src="resources/admin/js/plugins/morris/morris.min.js"></script>
<script src="resources/admin/js/plugins/morris/morris-data.js"></script>

</body>

</html>
