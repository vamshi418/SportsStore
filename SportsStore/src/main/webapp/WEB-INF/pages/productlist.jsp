<%@ page language="java" contentType="text/html; charset=ISO-8859-1"  pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="url" %>
<%@ page isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>   
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<style>
 body {
        background-color: #444;
        background: url(https://cdn0.tnwcdn.com/wp-content/blogs.dir/1/files/2012/01/Screen-Shot-2012-01-20-at-2.12.17-PM.png);
        
    }
.vertical-offset-100{
    padding-top:100px;
}
</style>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@ include file="header.jsp" %>
<div class="container">

<table border="thick" align="center" width="400" height="150">
	<tr>
		<th>Image</th>
		<th>Product Name</th>
		<th>Price</th>
		<th>Action</th>
	</tr>

<c:forEach items="${products}" var="p" >
<tr>
<url:url value="/resources/images/${p.id }.png" var="url3"></url:url>
<td><img src="${url3 }" height="50" width="50" ></td>
<td>${p.name}</td>
<td>${p.price }</td>
<url:url value="/all/product/viewproduct/${p.id}" var="url"></url:url>
<td><a href="${url }"><span class="glyphicon glyphicon-info-sign"></span></a>
        
   <sec:authorize access="hasRole('ROLE_ADMIN')">
<url:url value="/admin/product/deleteproduct/${p.id}" var="url1"></url:url>
<a href="${url1 }"><span class="glyphicon glyphicon-trash"></span></a>
</sec:authorize>


 <sec:authorize access="hasRole('ROLE_ADMIN')">
<url:url value="/admin/product/editproduct/${p.id}" var="url2"></url:url>
<a href="${url2 }"><span class="glyphicon glyphicon-pencil"></span></a>
</sec:authorize>
</td>

</tr>
</c:forEach>
</table>
</div>
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
</body>

<%@ include file="footer.jsp" %>
</html>