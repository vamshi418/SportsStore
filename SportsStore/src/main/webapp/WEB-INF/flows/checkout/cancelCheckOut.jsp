<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ include file="/WEB-INF/pages/header.jsp" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<c:url var="style1" value="/resources/css/cancelCheckout.css"></c:url>
  <link rel="stylesheet" href="${style1}"/> 
 
<style>
   body{
       margin-top:20%;
       background-color: #444;
        background: url(https://cdn0.tnwcdn.com/wp-content/blogs.dir/1/files/2012/01/Screen-Shot-2012-01-20-at-2.12.17-PM.png);
        
    }
    .vertical-offset-100{
    padding-top:100px;
}
    h1{
      font-size:50px;
      font-weight:bold;
      opacity:0.9;
      text-transform:uppercase;
    }
     a{
      font-size:25px;
      font-weight:bold;
      color:red;
      text-align:center;
      text-decoration:none;
    }
    a:hover{
      font-size:28px;
        text-decoration:none;
        color:red;
    }
</style>
</head>
<center>
<body>
    <h1>Your order has been Cancelled!!</h1>
    <a href="<c:url value="/cart/getCartId"></c:url>">Visit the Cart</h1>
</body>
</center>
<br>
<br>
<br>
<br>
<br>
<br>
<br><br>
<br>
<br>
<br>
<br>
<%@ include file="/WEB-INF/pages/footer.jsp" %>
</html>