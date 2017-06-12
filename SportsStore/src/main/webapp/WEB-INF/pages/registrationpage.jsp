<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="url" %>

<style>
 body {
        background-color: #444;
        background: url("http://www.zingerbug.com/Backgrounds/background_images/tan_textured_rock_seamless_pattern.jpg");
        
    }
.vertical-offset-100{
    padding-top:10px;
}
</style>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script src="http://mymaplist.com/js/vendor/TweenLite.min.js"></script>
<%@ include file="header.jsp" %>
</head>
	<body>
		<url:url value="/all/register" var="url"></url:url>
		<form:form  action="${url }" modelAttribute="customer" method="post">
			<div class="container" align="justify">
	    		<div class="row vertical-offset-100">
			    	<div class="col-md-6 col-md-offset-3">
			    		<div class="panel panel-default">
						  	<div class="panel-heading">
						    	<h3 class="panel-title" align="center"><i><b>Registration Form</b></i></h3>
						 	</div>
							<fieldset>
								<div>
									<label for="id"></label>
									<form:hidden path="id" ></form:hidden>
									<form:errors path="id" cssStyle="color:red"></form:errors>
								</div>
								<div class="form-group" align="center">
									<label class="col-md-4 control-label" for="firstname"><i>Enter first name</i></label><form:input path="firstname"></form:input>
									<form:errors path="firstname" cssStyle="color:red"></form:errors>
								</div>
								<div class="form-group" align="center">
									<label class="col-md-4 control-label" for="lastname"><i>Enter last name</i></label><form:input path="lastname"></form:input>
									<form:errors path="lastname" cssStyle="color:red"></form:errors>
								</div>
								<div class="form-group" align="center">
									<label class="col-md-4 control-label" for="email"><i>Enter email</i></label>    <form:input path="email"></form:input>
									<form:errors path="email" cssStyle="color:red"></form:errors>
									<span style="color:red">${duplicateEmail }</span>
								</div>
								<div class="form-group" align="center">
									<label class="col-md-4 control-label" for="phone"><i>Enter phone no</i></label> <form:input path="phone"></form:input>
									<form:errors path="phone" cssStyle="color:red"></form:errors>
								</div>
								</fieldset>
						</div>
					</div>
				</div>
			</div>
			<br>
				<div class="container" align="justify">
	    		<div class="row vertical-offset-100">
			    	<div class="col-md-6 col-md-offset-3">
			    		<div class="panel panel-default">
						  	<div class="panel-heading">
						    	<h3 class="panel-title" align="center"><i><b>Login Form</b></i></h3>
						 	</div>
							<fieldset>
								<div class="form-group" align="center">
									<label class="col-md-4 control-label" for="users.username"><i>Enter username</i></label> <form:input path="users.username"></form:input>
									<form:errors path="users.username" cssStyle="color:red"></form:errors>
									<span style="color:red">${duplicateUsername }</span>
								</div>
								<div class="form-group" align="center">
									<label class="col-md-4 control-label" for="users.password"><i>Enter password</i></label> <form:input path="users.password" type="password"></form:input>
									<form:errors path="users.password" cssStyle="color:red"></form:errors>
								</div>
							</fieldset>
						</div>
					</div>
				</div>
			</div>
			<br>
			<div class="container" align="justify">
			    <div class="row vertical-offset-100">
			    	<div class="col-md-6 col-md-offset-3">
			    		<div class="panel panel-default">
							<div class="panel-heading">
						    	<h3 class="panel-title" align="center"><i><b>Billing Address</b></i></h3>
						 	</div>
						 	<fieldset>
								<div class="form-group" align="center">
									<label class="col-md-4 control-label" for="billingAddress.streetName">Enter Street name</label>
									<form:input path="billingAddress.streetName"></form:input>
									<form:errors path="billingAddress.streetName" cssStyle="color:red"></form:errors>
								</div>
								<div class="form-group" align="center">
									<label class="col-md-4 control-label" for="billingAddress.apartmentnumber">Enter Apartment no</label>
									<form:input path="billingAddress.apartmentnumber"></form:input>
									<form:errors path="billingAddress.apartmentnumber" cssStyle="color:red"></form:errors>
								</div>
								<div class="form-group" align="center">
									<label class="col-md-4 control-label" for="billingAddress.city">Enter City</label>
									<form:input path="billingAddress.city"></form:input>
									<form:errors path="billingAddress.city" cssStyle="color:red"></form:errors>
								</div>
								<div class="form-group" align="center">
									<label class="col-md-4 control-label" for="billingAddress.country">Enter country</label>
									<form:input path="billingAddress.country"></form:input>
									<form:errors path="billingAddress.country" cssStyle="color:red"></form:errors>
								</div>
								<div class="form-group" align="center">
									<label class="col-md-4 control-label" for="billingAddress.zipcode">Enter zipcode</label>
									<form:input path="billingAddress.zipcode"></form:input>
									<form:errors path="billingAddress.zipcode" cssStyle="color:red"></form:errors>
								</div>
							</fieldset>	
						</div>
					</div>
				</div>
			</div>
			<br>
			<div class="container" align="justify">
				<div class="row vertical-offset-100">
					<div class="col-md-6 col-md-offset-3">
						<div class="panel panel-default">
							<div class="panel-heading">
								<h3 class="panel-title" align="center"><i><b>Shipping Address</b></i></h3>
							</div>
							<fieldset>
								<div class="form-group" align="center">
									<label class="col-md-4 control-label" for="shippingAddress.streetname">Enter Street name</label>
									<form:input path="shippingAddress.streetName"></form:input>
									<form:errors path="shippingAddress.streetName" cssStyle="color:red"></form:errors>
								</div>
								<div class="form-group" align="center">
									<label class="col-md-4 control-label" for="shippingAddress.apartmentNumber">Enter Apartment no</label>
									<form:input path="shippingAddress.apartmentNumber"></form:input>
									<form:errors path="shippingAddress.apartmentNumber" cssStyle="color:red"></form:errors>
								</div>
								<div class="form-group" align="center">
									<label class="col-md-4 control-label" for="shippingAddress.city">Enter City</label>
									<form:input path="shippingAddress.city"></form:input>
									<form:errors path="shippingAddress.city" cssStyle="color:red"></form:errors>
								</div>
								<div class="form-group" align="center">
									<label class="col-md-4 control-label" for="shippingAddress.country">Enter country</label>
									<form:input path="shippingAddress.country"></form:input>
									<form:errors path="shippingAddress.country" cssStyle="color:red"></form:errors>
								</div>
								<div class="form-group" align="center">
									<label class="col-md-4 control-label" for="shippingAddress.zipcode">Enter zipcode</label>
									<form:input path="shippingAddress.zipcode"></form:input>
									<form:errors path="shippingAddress.zipcode" cssStyle="color:red"></form:errors>
								</div>
							</fieldset>
						</div>
					</div>
				</div>
			</div>
			<div class="container" align="justify">
				<div class="row vertical-offset-100">
					<div class="col-md-6 col-md-offset-3">
						<div class="panel panel-default">
							<div class="form-group">
								<div align="center" class="checkbox">
									</div>
							</div>
							<div class="form-group">
								<div align="center" class="checkbox">
									<center><input type="submit" value="Register"></center>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			 <table align="right">
<td><a id="back-to-top" href="#" class="btn btn-primary btn-lg back-to-top" role="button" title="Click to return on the top page" data-toggle="tooltip" data-placement="left"><span class="glyphicon glyphicon-chevron-up"></span></a></td>

</table>
		</form:form>
	</body>
</html>
<%@ include file="footer.jsp" %>