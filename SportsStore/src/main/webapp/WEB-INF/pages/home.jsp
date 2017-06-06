<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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
		<meta charset="ISO-8859-1">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<!-- Latest compiled and minified CSS -->
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
		<!-- jQuery library -->
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
		<!-- Latest compiled JavaScript -->
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
		<title>Project1</title>
	</head>
	<body>
		<%@ include file="header.jsp" %>
		<div class="container-fluid">
			<div id="myCarousel" class="carousel slide" data-ride="carousel">
            	<!-- Indicators -->
            	<ol class="carousel-indicators">
                	<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                	<li data-target="#myCarousel" data-slide-to="1"></li>
                	<li data-target="#myCarousel" data-slide-to="2"></li>
                	<li data-target="#myCarousel" data-slide-to="3"></li>
            	</ol>
            	<div class="carousel-inner" role="listbox">
                	<div class="item active">
                    	<img src="resources/images/img11.png" alt="first slide" >
                    	<div class="container">
                        	<div class="carousel-caption">
                            	<h1></h1>
                            	<p>Play is the only way the highest intelligence of human kind can unfold.</p>
                        	</div>
                    	</div>
                	</div>
                	<div class="item">
                    	<img  src="resources/images/img12.png" alt="Second slide">
                    	<div class="container">
                        	<div class="carousel-caption">
                            	<h1></h1>
                            <p>Champions keep playing until they get it right.</p>
                        </div>
                    </div>
                </div>
                <div class="item">
                    <img src="resources/images/img13.png" alt="Third slide">
                    <div class="container">
                        <div class="carousel-caption">
                            <h1></h1>
                            <p>The pain you feel today will be the STRENGTH you feel tomorrow</p>
                        </div>
                    </div>
                </div>
                 <div class="item">
                    <img src="resources/images/img14.png" alt="forth slide">
                    <div class="container">
                        <div class="carousel-caption">
                            <h1></h1>
                            <p>Concentration comes out of a combination of confidence and hunger</p>
                        </div>
                    </div>
                </div>
            </div>
            <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
                <span class="glyphicon glyphicon-chevron-left"></span>
                <span class="sr-only">Previous</span>
            </a>
            <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
                <span class="glyphicon glyphicon-chevron-right" ></span>
                <span class="sr-only">Next</span>
            	</a>
        	</div>
        	<!-- /.carousel -->
		</div>
		<div class="container" style="width: 1300px;height: 800px;">
			<div align="center">
				<table>
					<tr align="center"><td><h3><b><i>Brands</i></b></h3></td></tr>
					<tr align="left">
						<td><img src="resources/images/ss.png" class="img-thumbnail" alt="Cinque Terre" style="width: 350px;height: 350px"></td>
						<td><img src="resources/images/mrf.png" class="img-thumbnail" alt="Cinque Terre" style="width: 350px;height: 350px"></td>
						<td><img src="resources/images/mac.png" class="img-thumbnail" alt="Cinque Terre" style="width: 350px;height: 350px"></td>
					</tr>
					<tr align="center"><td><h3><b><i>Accessories</i></b></h3></td></tr>
					<tr align="center">
						<td><img src="resources/images/bas.png" class="img-thumbnail" alt="Cinque Terre" style="width: 300px;height: 300px"></td>
						<td><img src="resources/images/fit.png" class="img-thumbnail" alt="Cinque Terre" style="width: 300px;height: 300px"></td>
					</tr>
					<tr><td></td></tr>
				</table>
			</div>
		</div>
		<div>
			<br>
		</div>
	</body>
	<%@ include file="footer.jsp" %>
</html>