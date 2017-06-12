<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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
	
	<style>
 body {
        background-color: #444;
        background: url(http://www.zingerbug.com/Backgrounds/background_images/tan_textured_rock_seamless_pattern.jpg);
        
    }
.vertical-offset-100{
    padding-top:100px;
}

#slider-text{
  padding-top: 40px;
  display: block;
}
#slider-text .col-md-6{
  overflow: hidden;
}

#slider-text h2 {
  font-family: 'Josefin Sans', sans-serif;
  font-weight: 400;
  font-size: 30px;
  letter-spacing: 3px;
  margin: 30px auto;
  padding-left: 40px;
}
#slider-text h2::after{
  border-top: 2px solid #c7c7c7;
  content: "";
  position: absolute;
  bottom: 35px;
  width: 100%;
  }

#itemslider h4{
  font-family: 'Josefin Sans', sans-serif;
  font-weight: 400;
  font-size: 12px;
  margin: 10px auto 3px;
}
#itemslider h5{
  font-family: 'Josefin Sans', sans-serif;
  font-weight: bold;
  font-size: 12px;
  margin: 3px auto 2px;
}
#itemslider h6{
  font-family: 'Josefin Sans', sans-serif;
  font-weight: 300;;
  font-size: 10px;
  margin: 2px auto 5px;
}
.badge {
  background: #b20c0c;
  position: absolute;
  height: 40px;
  width: 40px;
  border-radius: 50%;
  line-height: 31px;
  font-family: 'Josefin Sans', sans-serif;
  font-weight: 300;
  font-size: 14px;
  border: 2px solid #FFF;
  box-shadow: 0 0 0 1px #b20c0c;
  top: 5px;
  right: 25%;
}
#slider-control img{
  padding-top: 60%;
  margin: 0 auto;
}
@media screen and (max-width: 992px){
#slider-control img {
  padding-top: 70px;
  margin: 0 auto;
}
}

.carousel-showmanymoveone .carousel-control {
  width: 4%;
  background-image: none;
}
.carousel-showmanymoveone .carousel-control.left {
  margin-left: 5px;
}
.carousel-showmanymoveone .carousel-control.right {
  margin-right: 5px;
}
.carousel-showmanymoveone .cloneditem-1,
.carousel-showmanymoveone .cloneditem-2,
.carousel-showmanymoveone .cloneditem-3,
.carousel-showmanymoveone .cloneditem-4,
.carousel-showmanymoveone .cloneditem-5 {
  display: none;
}
@media all and (min-width: 768px) {
  .carousel-showmanymoveone .carousel-inner > .active.left,
  .carousel-showmanymoveone .carousel-inner > .prev {
    left: -50%;
  }
  .carousel-showmanymoveone .carousel-inner > .active.right,
  .carousel-showmanymoveone .carousel-inner > .next {
    left: 50%;
  }
  .carousel-showmanymoveone .carousel-inner > .left,
  .carousel-showmanymoveone .carousel-inner > .prev.right,
  .carousel-showmanymoveone .carousel-inner > .active {
    left: 0;
  }
  .carousel-showmanymoveone .carousel-inner .cloneditem-1 {
    display: block;
  }
}
@media all and (min-width: 768px) and (transform-3d), all and (min-width: 768px) and (-webkit-transform-3d) {
  .carousel-showmanymoveone .carousel-inner > .item.active.right,
  .carousel-showmanymoveone .carousel-inner > .item.next {
    -webkit-transform: translate3d(50%, 0, 0);
    transform: translate3d(50%, 0, 0);
    left: 0;
  }
  .carousel-showmanymoveone .carousel-inner > .item.active.left,
  .carousel-showmanymoveone .carousel-inner > .item.prev {
    -webkit-transform: translate3d(-50%, 0, 0);
    transform: translate3d(-50%, 0, 0);
    left: 0;
  }
  .carousel-showmanymoveone .carousel-inner > .item.left,
  .carousel-showmanymoveone .carousel-inner > .item.prev.right,
  .carousel-showmanymoveone .carousel-inner > .item.active {
    -webkit-transform: translate3d(0, 0, 0);
    transform: translate3d(0, 0, 0);
    left: 0;
  }
}
@media all and (min-width: 992px) {
  .carousel-showmanymoveone .carousel-inner > .active.left,
  .carousel-showmanymoveone .carousel-inner > .prev {
    left: -16.666%;
  }
  .carousel-showmanymoveone .carousel-inner > .active.right,
  .carousel-showmanymoveone .carousel-inner > .next {
    left: 16.666%;
  }
  .carousel-showmanymoveone .carousel-inner > .left,
  .carousel-showmanymoveone .carousel-inner > .prev.right,
  .carousel-showmanymoveone .carousel-inner > .active {
    left: 0;
  }
  .carousel-showmanymoveone .carousel-inner .cloneditem-2,
  .carousel-showmanymoveone .carousel-inner .cloneditem-3,
  .carousel-showmanymoveone .carousel-inner .cloneditem-4,
  .carousel-showmanymoveone .carousel-inner .cloneditem-5,
  .carousel-showmanymoveone .carousel-inner .cloneditem-6  {
    display: block;
  }
}
@media all and (min-width: 992px) and (transform-3d), all and (min-width: 992px) and (-webkit-transform-3d) {
  .carousel-showmanymoveone .carousel-inner > .item.active.right,
  .carousel-showmanymoveone .carousel-inner > .item.next {
    -webkit-transform: translate3d(16.666%, 0, 0);
    transform: translate3d(16.666%, 0, 0);
    left: 0;
  }
  .carousel-showmanymoveone .carousel-inner > .item.active.left,
  .carousel-showmanymoveone .carousel-inner > .item.prev {
    -webkit-transform: translate3d(-16.666%, 0, 0);
    transform: translate3d(-16.666%, 0, 0);
    left: 0;
  }
  .carousel-showmanymoveone .carousel-inner > .item.left,
  .carousel-showmanymoveone .carousel-inner > .item.prev.right,
  .carousel-showmanymoveone .carousel-inner > .item.active {
    -webkit-transform: translate3d(0, 0, 0);
    transform: translate3d(0, 0, 0);
    left: 0;
  }
}

</style>


<script>
$(document).ready(function(){

    $('#itemslider').carousel({ interval: 3000 });

    $('.carousel-showmanymoveone .item').each(function(){
    var itemToClone = $(this);

    for (var i=1;i<6;i++) {
    itemToClone = itemToClone.next();

    if (!itemToClone.length) {
    itemToClone = $(this).siblings(':first');
    }

    itemToClone.children(':first-child').clone()
    .addClass("cloneditem-"+(i))
    .appendTo($(this));
    }
    });
    });
</script>


	
	
	
	
	
	
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
	<!-- 	<div class="container" style="width: 1300px;height: 800px;">
			<div align="center">
				<table>
					<tr align="center"><td><h3><b><i>Brands</i></b></h3></td></tr>
					<tr align="left">
					<div class="container-fluid">

  <div class="row">
    <div class="col-xs-12 col-sm-12 col-md-12">
      <div class="item active">
            <div class="col-xs-12 col-sm-6 col-md-2">
						<td><a href="http://localhost:8081/SportsStore/all/product/viewproduct"><img src="resources/images/ss.png" class="img-thumbnail" alt="Cinque Terre" style="width: 350px;height: 350px"></a></td>
						</div>
						</div>
						
						 <div class="item active">
            <div class="col-xs-12 col-sm-6 col-md-2">
						<td><a href="http://localhost:8081/SportsStore/all/product/viewproduct"><img src="resources/images/mrf.png" class="img-thumbnail" alt="Cinque Terre" style="width: 350px;height: 350px"></a></td>
						</div></div>
						 <div class="item active">
            <div class="col-xs-12 col-sm-6 col-md-2">
						<td><a href="http://localhost:8081/SportsStore/all/product/viewproduct"><img src="resources/images/mac.png" class="img-thumbnail" alt="Cinque Terre" style="width: 350px;height: 350px"></a></td>
					</div></div>
					
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
		</div>
		</div>
		 -->
		
		
	
	 <!--Item slider text-->
<div class="container">
  <div class="row" id="slider-text">
    <div class="col-md-6" >
     <center> <h3><b>CRICKET ACCESSORIES</b></h3></center>
    </div>
  </div>
</div>

<!-- Item slider-->
<div class="container-fluid">

  <div class="row">
    <div class="col-xs-12 col-sm-12 col-md-12">
      <div class="carousel carousel-showmanymoveone slide" id="itemslider">
        <div class="carousel-inner">

          <div class="item active">
            <div class="col-xs-12 col-sm-6 col-md-2">
              <a href="http://localhost:8081/SportsStore/all/product/viewproduct/9"><img src="resources/images/bat.jpg" class="img-responsive center-block" style="width: 200px;height: 200px"></a>
              <h4 class="text-center">Cricket Bats</h4>
              
            </div>
          </div>

          <div class="item">
            <div class="col-xs-12 col-sm-6 col-md-2">
              <a href="http://localhost:8081/SportsStore/all/product/viewproduct/4"><img src="resources/images/4.png" class="img-responsive center-block" style="width: 200px;height: 200px"></a>
              <h4 class="text-center">Cricket Balls</h4>
              
            </div>
          </div>

          <div class="item">
            <div class="col-xs-12 col-sm-6 col-md-2">
              <a href="http://localhost:8081/SportsStore/all/product/viewproduct/11"><img src="resources/images/cric.jpg" class="img-responsive center-block" style="width: 200px;height: 200px"></a>
              <h4 class="text-center">Cricket Gloves</h4>
              
            </div>
          </div>

          <div class="item">
            <div class="col-xs-12 col-sm-6 col-md-2">
              <a href="http://localhost:8081/SportsStore/all/product/viewproduct/12"><img src="resources/images/helm.jpg" class="img-responsive center-block" style="width: 200px;height: 200px"></a>
              <h4 class="text-center">Helmets</h4>
              
            </div>
          </div>

          <div class="item">
            <div class="col-xs-12 col-sm-6 col-md-2">
              <a href="http://localhost:8081/SportsStore/all/product/viewproduct/14"><img src="resources/images/wickets.jpg" class="img-responsive center-block" style="width: 200px;height: 200px"></a>
              <h4 class="text-center">Wickets</h4>
            </div>
          </div>
        </div>

        <div id="slider-control">
        <a class="left carousel-control" href="#itemslider" data-slide="prev"><img src="https://s12.postimg.org/uj3ffq90d/arrow_left.png" alt="Left" class="img-responsive"></a>
        <a class="right carousel-control" href="#itemslider" data-slide="next"><img src="https://s12.postimg.org/djuh0gxst/arrow_right.png" alt="Right" class="img-responsive"></a>
      </div>
      </div>
    </div>
  </div>
</div>	
		
		
		
		
		
		
		
		 <!--Item slider text-->
<div class="container">
  <div class="row" id="slider-text">
    <div class="col-md-6" >
     <center> <h3><b>FITNESS ACCESSORIES</b></h3></center>
    </div>
  </div>
</div>

<!-- Item slider-->
<div class="container-fluid">

  <div class="row">
    <div class="col-xs-12 col-sm-12 col-md-12">
      <div class="carousel carousel-showmanymoveone slide" id="itemslider">
        <div class="carousel-inner">

          <div class="item active">
            <div class="col-xs-12 col-sm-6 col-md-2">
              <a href="http://localhost:8081/SportsStore/all/product/viewproduct/41"><img src="resources/images/dumb.jpg" class="img-responsive center-block" style="width: 200px;height: 200px"></a>
              <h4 class="text-center">Dumb Bells</h4>
              
            </div>
          </div>

          <div class="item">
            <div class="col-xs-12 col-sm-6 col-md-2">
              <a href="http://localhost:8081/SportsStore/all/product/viewproduct/45"><img src="resources/images/sationary.jpg" class="img-responsive center-block" style="width: 200px;height: 200px"></a>
              <h4 class="text-center">Stationary Bike</h4>
              
            </div>
          </div>

          <div class="item">
            <div class="col-xs-12 col-sm-6 col-md-2">
              <a href="http://localhost:8081/SportsStore/all/product/viewproduct/42"><img src="resources/images/abcoster.jpg" class="img-responsive center-block" style="width: 200px;height: 200px"></a>
              <h4 class="text-center">Ab Coaster</h4>
              
            </div>
          </div>

          <div class="item">
            <div class="col-xs-12 col-sm-6 col-md-2">
              <a href="http://localhost:8081/SportsStore/all/product/viewproduct/43"><img src="resources/images/hand.jpg" class="img-responsive center-block" style="width: 200px;height: 200px"></a>
              <h4 class="text-center">Handgrip Exerciser</h4>
              
            </div>
          </div>

          <div class="item">
            <div class="col-xs-12 col-sm-6 col-md-2">
              <a href="http://localhost:8081/SportsStore/all/product/viewproduct/44"><img src="resources/images/spin.jpg" class="img-responsive center-block" style="width: 200px;height: 200px"></a>
              <h4 class="text-center">Spin Bikes</h4>
            </div>
          </div>
        </div>

        <div id="slider-control">
        <a class="left carousel-control" href="#itemslider" data-slide="prev"><img src="https://s12.postimg.org/uj3ffq90d/arrow_left.png" alt="Left" class="img-responsive"></a>
        <a class="right carousel-control" href="#itemslider" data-slide="next"><img src="https://s12.postimg.org/djuh0gxst/arrow_right.png" alt="Right" class="img-responsive"></a>
      </div>
      </div>
    </div>
  </div>
</div>	
 <table align="right">
<td><a id="back-to-top" href="#" class="btn btn-primary btn-lg back-to-top" role="button" title="Click to return on the top page" data-toggle="tooltip" data-placement="left"><span class="glyphicon glyphicon-chevron-up"></span></a></td>

</table>
		
		
		
		<div>
			<br>
		</div>
	</body>
	<%@ include file="footer.jsp" %>
</html>