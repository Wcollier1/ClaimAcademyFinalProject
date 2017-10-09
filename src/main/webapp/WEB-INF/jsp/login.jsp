<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Log In</title>
<link href="resources/css/signup.css" rel="stylesheet"
	type="text/css" media="all" />
</head>
<body>
	
	<div class="login-page">
  <div class="register-form">
    <form:form class="form" method="Post"
    modelAttribute="loginUser" action="login">
    
      <form:input path="email" type="text" placeholder="Email Address" required="true"></form:input>
      
      <form:input path="password" type="password" placeholder="Password" required="true"></form:input>
      
      <button type="submit">Log In</button>
           <p class="message">Not registered? <a href="signup">Create an account</a></p>
    </form:form>
  </div>
</div>

<script>src="signup.js"</script>
</body>
</html>