<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<%@ page isELIgnored="false" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ include file="/WEB-INF/pages/header.jsp" %>
<html>
<center>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<c:url var="style1" value="/resources/css/orderConfirmation.css"></c:url>
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
<body>
   <div class="container-wrapper">
<div class="container">
<div class="page-header">
<h1>Order</h1>

<p class="lead">Order confirmation</p>
</div>

<div class="container">

<div class="row">

<form:form commandName="order" class="form-horizontal">

<div class="well col-xs-10 col-sm-10 col-md-6 col-xs-offset-1 col-sm-offset-1 col-md-offset-3">

<div class="txt-center">
<h1>Receipt</h1>
</div>
<div class="row">
<div class="col-xs-6 col-sm-6 col-md-6">
<address>
<strong>Shipping Address</strong><br/>
${order.cart.customer.shippingAddress.streetName}
<br/>
<%-- ${order.cart.customer.shippingAddress.city}, ${order.cart.customer.shippingAddress.state} --%>
<br/>
${order.cart.customer.shippingAddress.country}, ${order.cart.customer.shippingAddress.zipcode}
</address>
</div>
<div class="col-xs-6 col-sm-6 col-md-6 text-right">
<p>Shipping Date: <fmt:formatDate type="date" value="${now}" /></p>
</div>
</div>

<div class="row">
<div class="col-xs-6 col-sm-6 col-md-6">
<address>
<strong>Billing Address</strong><br/>
${order.cart.customer.billingAddress.streetName}
<br/>
<%-- ${order.cart.customer.billingAddress.city}, ${order.cart.customer.billingAddress.state} --%>
<br/>
${order.cart.customer.billingAddress.country}, ${order.cart.customer.billingAddress.zipcode}
</address>
</div>
</div>

<div class="row">
<table class="table table-hover">
<thead>
<tr>
<td>Product</td>
<td>#</td>
<td class="text-center">Price</td>
<td class="text-center">Total</td>
</tr>
</thead>
<tbody>
<c:set var="grandTotal" value="0.0"></c:set>
<c:forEach var="cartItem" items="${order.cart.cartItems}">
<tr>
<td class="col-md-9"><em>${cartItem.product.name}</em></td>
<td class="col-md-1" style="text-align: center">${cartItem.quantity}</td>
<td class="col-md-1" style="text-align: center">${cartItem.product.price}</td>
<td class="col-md-1" style="text-align: center">${cartItem.totalPrice}</td>
<c:set var="grandTotal" value="${grandTotal + cartItem.totalPrice }"></c:set>
</tr>
</c:forEach>

<tr>
<td></td>
<td></td>
<td class="text-right">
<h4><strong>Grand Total:</strong></h4>
</td>
<td class="text-center text-danger">
<h4><strong>INR ${grandTotal}</strong></h4>
</td>
</tr>

</tbody>
</table>
</div>


<input type="hidden" name="_flowExecutionKey" />

<br/><br/>

<button class="btn btn-default" name="_eventId_backToCollectShippingDetail">Back</button>

<input type="submit" value="Submit Order" class="btn btn-default" name="_eventId_orderConfirmed" />

<button class="btn btn-default" name="_eventId_cancel">Cancel</button>
</div>
</form:form>
</div>
</div>
</center>
</body>
<br>
<br>
<br>
<br>
<br>
<br>
<%@ include file="/WEB-INF/pages/footer.jsp" %>
</html>

<%-- <jsp:useBean id="now" class="java.util.Date" />
<div class="container-wrapper">
<div class="container">
<div class="page-header">
<h1>Order</h1>
<p class="lead">Order confirmation</p>
</div>
<div class="container">
<div class="row">
<form:form commandName="order" class="form-horizontal">
<div class="well col-xs-10 col-sm-10 col-md-6 col-xs-offset-1 col-sm-offset-1 col-md-offset-3">
<div class="txt-center">
<h1>Receipt</h1>
</div>
<div class="row">
<div class="col-xs-6 col-sm-6 col-md-6">
<address>
<strong>Shipping Address</strong><br/>
${order.cart.customer.shippingAddress.streetName}
<br/>
${order.cart.customer.shippingAddress.city}, ${order.cart.customer.shippingAddress.state}
<br/>
${order.cart.customer.shippingAddress.country}, ${order.cart.customer.shippingAddress.zipcode}
</address>
</div>
<div class="col-xs-6 col-sm-6 col-md-6 text-right">
<p>Shipping Date: <fmt:formatDate type="date" value="${now}" /></p>
</div>
</div>
<div class="row">
<div class="col-xs-6 col-sm-6 col-md-6">
<address>
<strong>Billing Address</strong><br/>
${order.cart.customer.billingAddress.streetName}
<br/>
${order.cart.customer.billingAddress.city}, ${order.cart.customer.billingAddress.state}
<br/>
${order.cart.customer.billingAddress.country}, ${order.cart.customer.billingAddress.zipcode}
</address>
</div>
</div>
<div class="row">
<table class="table table-hover">
<thead>
<tr>
<td>Product</td>
<td>#</td>
<td class="text-center">Price</td>
<td class="text-center">Total</td>
</tr>
</thead>
<tbody>
<c:set var="grandTotal" value="0.0"></c:set>
<c:forEach var="cartItem" items="${order.cart.cartItems}">
<tr>
<td class="col-md-9"><em>${cartItem.product.name}</em></td>
<td class="col-md-1" style="text-align: center">${cartItem.quantity}</td>
<td class="col-md-1" style="text-align: center">${cartItem.product.price}</td>
<td class="col-md-1" style="text-align: center">${cartItem.totalPrice}</td>
<c:set var="grandTotal" value="${grandTotal + cartItem.totalPrice }"></c:set>
</tr>
</c:forEach>
<tr>
<td></td>
<td></td>
<td class="text-right">
<h4><strong>Grand Total:</strong></h4>
</td>
<td class="text-center text-danger">
<h4><strong>$ ${grandTotal}</strong></h4>
</td>
</tr>
</tbody>
</table>
</div>
<input type="hidden" name="_flowExecutionKey" />
<br/><br/>
<button class="btn btn-default" name="_eventId_backToCollectShippingDetail">Back</button>
<input type="submit" value="Submit Order" class="btn btn-default" name="_eventId_orderConfirmed" />
<button class="btn btn-default" name="_eventId_cancel">Cancel</button>
</div>
</form:form>
</div>
</div>
             --%>
   