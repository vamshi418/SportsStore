<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<%@ include file="header.jsp" %>
<style>
 body {
        background-color: #444;
        background: url(http://www.zingerbug.com/Backgrounds/background_images/tan_textured_rock_seamless_pattern.jpg);
        
    }
.vertical-offset-100{
    padding-top:100px;
}
</style>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
  <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
  <c:url var="style" value="/resources/css/cart.css"></c:url>
  <link rel="stylesheet" href="${style}"/>
</head>
<center>
<body>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<div id="cart">
 <div ng-app="app" ng-controller="ProductController">
   <div ng-init="getCart(${cartId})">
   
   
      <table class="ance">
        <thead>
        <tr>
          <th class="product">Product</th>
          <th class="item">Item</th>
          <th class="quan">Quantity</th>
          <th class="total">Total</th>
          <th class="remove">Remove</th>
        </tr>
        </thead>
       
       <tr data-ng-repeat="ca in cart.cartItems">
       <td>
       <c:url var="sr" value="/all/product/image/{{ca.product.id}}"></c:url>
  <img src="${sr }" height="200px" width="200px"/>
       
       </td>
         <td id="item">{{ca.product.name}}</td>
         <td class="quan">{{ca.quantity}}<span><input type="text" 
                   style="color:black;margin-left:5%;width:20%;padding:10px;font-size:17px;font-weight:bold;" 
        data-ng-model-options='{ debounce: 500 }'  data-ng-model="quant" data-ng-change="check(ca.product.id)" /></span></td>
         <td class="total">{{ca.totalPrice}}</td>
         <td class="remove"><a href="" class="btn btn-danger" data-pull-left data-ng-click="removeFromCart(ca.id)">Remove
         </a></td>
       </tr>
       
      </table>
   <div id="totalprice"> 
      <span id="sub">SubTotal: INR {{calculateGrandTotal()}};</span>
      </div>
      <div id="content">
      <p>Discount,shipping and tax will be calculated in checkout.</p>
     </div>
   </div>
    <button class="left" ng-click="clearCart()">ClearCart</button>
   
   <c:url value="/order/${cartId}" var="check"></c:url>
   <a href="${check }" class="right">CheckOut</a>
  
<c:url var="script7" value="/resources/js/controller.js"></c:url>
<script src="${script7}"></script> 
 </div>
</div>
</body>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<%@ include file="footer.jsp" %>
</center>
</html>