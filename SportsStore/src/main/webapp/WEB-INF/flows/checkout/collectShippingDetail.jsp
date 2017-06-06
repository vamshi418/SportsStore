<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ include file="/WEB-INF/pages/header.jsp" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<c:url var="style1" value="/resources/css/collectCustomerInfo.css"></c:url>
  <link rel="stylesheet" href="${style1}"/> 
  <style>
 body {
        background-color: #444;
        background: url(https://cdn0.tnwcdn.com/wp-content/blogs.dir/1/files/2012/01/Screen-Shot-2012-01-20-at-2.12.17-PM.png);
        
    }
.vertical-offset-100{
    padding-top:100px;
}
</style>
</head>
<center>
<body>
 <div class="topForm">
      <div id="top">
     <button id="value" disabled="true">2</button>
     <h4 id="text">Collecting Shipping Details</h4>
      </div>
      
      
<form:form modelAttribute="order">

 <div class="container" align="justify">
			    <div class="row vertical-offset-100">
			    	<div class="col-md-6 col-md-offset-3">
			    		<div class="panel panel-default">
							<div class="panel-heading">
						    	<h3 class="panel-title" align="center"><i><b>Billing Address</b></i></h3>
						 	</div>
						 	<fieldset>
						 	
   <div class="form1" align="center">
   <label class="col-md-4 control-label" for="apartmentNumber">Apartment Number</label>
   <form:input path="cart.customer.shippingAddress.apartmentNumber" cssStyle="border:2px solid rgba(0,0,0,0.2)"/>
   </div>
  
   <div class="form" align="center">
   <label class="col-md-4 control-label" for="streetName">Street Name</label>
   <form:input path="cart.customer.shippingAddress.streetName" cssStyle="border:2px solid rgba(0,0,0,0.2)"/>
   </div>
   
   <div class="form" align="center">
   <label class="col-md-4 control-label" for="city">City</label>
   <form:input path="cart.customer.shippingAddress.city" cssStyle="border:2px solid rgba(0,0,0,0.2)"/>
   </div>
 <%--   <div class="form" align="center">
   <label for="State">State</label>
   <form:input path="cart.customer.shippingAddress.state" cssStyle="border:2px solid rgba(0,0,0,0.2)"/>
   </div> --%>
   
   <div class="form" align="center">
   <label class="col-md-4 control-label" for="Country">Country</label>
   <form:input path="cart.customer.shippingAddress.country" cssStyle="border:2px solid rgba(0,0,0,0.2)"/>
   </div>
    <div class="form" align="center">
   <button name="_eventId_backToCollectCustomerInfo">Back</button>
   <button name="_eventId_shippingDetailCollected">Next</button>
   <button name="_eventId_cancel">cancel</button></div>
  </form:form>
  </div>

</fieldset>
</div>
</div>
</div>
</div>
</body>
<br>
<br>
<br>
</center>
<%@ include file="/WEB-INF/pages/footer.jsp" %>
</html>