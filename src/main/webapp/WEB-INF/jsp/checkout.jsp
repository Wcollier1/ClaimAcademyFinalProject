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
	
	

<link href="checkout/css/checkout.css" rel='stylesheet' type='text/css' media="all"/>









<!-- //for bootstrap working -->
<link href="//fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800" rel="stylesheet">
<link href='//fonts.googleapis.com/css?family=Lato:400,100,100italic,300,300italic,400italic,700,900,900italic,700italic' rel='stylesheet' type='text/css'>

</head>
 <a href="index" class="btn btn-large pull-left">Home <i class="icon-arrow-right"></i></a>



<div class="container">
   <form:form class="form" method="Post"
    modelAttribute="checkOutUser" action="saveCheckout">
    <div class="row">
      <h4>Shipping Address</h4>
       <div class="input-group input-group-icon">
        <form:input path="firstname" type="text" placeholder="First Name"/>
        <div class=""><i class="fa fa-user"></i></div>
      </div>
       <div class="input-group input-group-icon">
        <form:input path="lastname" type="text" placeholder="Last Name"/>
        <div class=""><i class="fa fa-user"></i></div>
      </div>
      <div class="input-group input-group-icon">
        <form:input path="street" type="text" placeholder="Street"/>
        <div class=""><i class="fa fa-user"></i></div>
      </div>
      <div class="input-group input-group-icon">
        <form:input path="city" type="text" placeholder="City"/>
        <div class=""><i class="fa fa-envelope"></i></div>
      </div>
      <div class="input-group input-group-icon">
        <form:input path="state" type="text" placeholder="State"/>
        <div class=""><i class="fa fa-envelope"></i></div>
      </div>
      <div class="input-group input-group-icon">
        <form:input path="zipcode" type="text" placeholder="Zipcode"/>
        <div class=""><i class="fa fa-envelope"></i></div>
      </div>
       <div class="input-group input-group-icon">
        <form:input path="email" type="email" placeholder="Email"/>
        <div class=""><i class="fa fa-envelope"></i></div>
      </div>
    </div>
    
    <div class="row">
      <h4>Payment Details</h4>
      <div class="input-group">
        <input type="radio" name="payment-method" value="card" id="payment-method-card" checked="true"/>
        <label for="payment-method-card"><span><i class="fa fa-cc-visa"></i>Credit Card</span></label>
  
      </div>
      <div class="input-group input-group-icon">
        <input type="text" placeholder="Card Number"/>
        <div class=""><i class="fa fa-credit-card"></i></div>
      </div>
      <div class="col-half">
        <div class="input-group input-group-icon">
          <input type="text" placeholder="Card CVC"/>
          <div class=""><i class="fa fa-user"></i></div>
        </div>
      </div>
      <div class="col-half">
        <div class="input-group">
          <select>
            <option>01 Jan</option>
            <option>02 Jan</option>
            <option>08 Sept</option>
          </select>
          <select>
            <option>2015</option>
            <option>2016</option>
            <option>2017</option>
          </select>
        </div>
      </div>
    </div>
    <div class="row">
      <h4>Terms and Conditions</h4>
      <div class="input-group">
        <input type="checkbox" id="terms"/>
        <label for="terms">I accept the terms and conditions for signing up to this service, and hereby confirm I have read the privacy policy.</label>
      </div>
    </div>
    
   <button type="submit">Submit</button>
  </form:form>
  
</div>


        
        </html>