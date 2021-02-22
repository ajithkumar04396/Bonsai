<!DOCTYPE html>
<html>
<head>
	<title></title>
	
 <link rel="stylesheet" type="text/css" href="css\style1.css">
 	
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js"></script>
</head>
<body>
	<jsp:include page="includes/headerlog.jsp"></jsp:include>
	<form>
		<div class="container-fluid ml-0 mr-0 pl-0 pr-0 mb-0 pb-0">
			<div id="demo" class="carousel ml-0 mr-0 pl-0 pr-0" data-ride="carousel">
  				<ul class="carousel-indicators">
    			<li data-target="#demo" data-slide-to="0" class="active"></li>
    			<li data-target="#demo" data-slide-to="1"></li>
    			<li data-target="#demo" data-slide-to="2"></li>
  				</ul>
  				<div class="carousel-inner">
    				<div class="carousel-item active">
      					<img src="Images/bonsai-hd.jpg" alt="Los Angeles" width="1100" height="500">
      					<div class="carousel-caption slider-text">
        					<h3>Bonsai 3</h3>
        					<p>Providing the qualified matured Plants</p>
      					</div>   
    				</div>
    				<div class="carousel-item">
      					<img src="Images/high.jpg" alt="Chicago" width="1100" height="500">
      					<div class="carousel-caption slider-text">
        					<h3>Bonsai 3</h3>
        					<p>We are here to make it easy</p>
      					</div>   
    				</div>
    				<div class="carousel-item">
      					<img src="Images/bonsai-slider.jpg" alt="New York" width="1100" height="500">
      					<div class="carousel-caption slider-text">
        					<h3>Bonsai 3</h3>
        					<p>We serve for your benefits</p>
      					</div>   
    				</div>
  				</div>
  					<a class="carousel-control-prev" href="#demo" data-slide="prev">
    				<span class="carousel-control-prev-icon"></span>
  					</a>
  					<a class="carousel-control-next" href="#demo" data-slide="next">
    				<span class="carousel-control-next-icon"></span>
  					</a>
			</div>
		</div>


<div class="container-fluid text-center mt-0 pt-0 mb-0 pb-0 h-w-div">
	<div class="container p-5">
	<h1 class="mt-0 pt-3">How it works</h1>
	<p>Getting pure & hygiene water has never been so easy for man kind!</p>
	
		<div class="row">
			<div class="col-sm-4">
				<div class="do-item do-item-circle do-circle circle circle1">
        			<a href=""><img src="Images/select.png" class="do-item do-circle rounded-circle" alt="Cinque Terre"></a>
        		</div>
        		<h5>STEP 1: SELECT</h5>
        
        		<hr style="background-color: #FD1C05; width: 50%; float:auto; ">
        		<p>Choose your preferred plant and services.</p>
        	</div>
			
			<div class="col-sm-4">
				<div class="do-item do-item-circle do-circle circle circle1">
        			<a href="https://htmlcolorcodes.com/color-picker/"><img src="Images/order.png" class="do-item do-circle rounded-circle" alt="Cinque Terre"></a>
        		</div>
				<h5>STEP 2: ORDER</h5>
				<hr style="background-color: #03FE2F; width: 50%; float:auto; ">
				<p>Place the order or services.</p>
			</div>
			<div class="col-sm-4">
				<div class="do-item do-item-circle do-circle circle circle1">
        			<a href=""><img src="Images/delivery.png" class="do-item do-circle rounded-circle" alt="Cinque Terre"></a>
        		</div>
				<h5>STEP 3: DELIVER AND SERVICE</h5>
				<hr style="background-color: #03A5FE; width: 100%; float:auto;">	<p >Product delivered at your door step and services based on your preferred timings!</p>
			</div>
		</div>
	</div>
</div>



<div class="container-fluid text-center p-5">
	<h1>
		CURRENTLY AVAILABLE AT SELECTED</h1>
		 <h1>LOCALITIES IN BANGALORE</h1>
		<p>Please signup here with your requirements and we will get in touch with you shortly.</p>
		<button type="button" onclick="location.href='http://localhost:8080/Spring/showPage.html'" class="btn btn-info"> Signup</button>
	
	
</div>

<div class="container-fluid div_section1 p-4" id="section1">
</div>

<div class="container-fluid p-5 text-center bbt-div" id="section2">
	<h1 class="mt-5">PARTNER WITH BONSAI3</h1>
	<p>Are you a Bonsai seller wanting to sell your products online?</p>
	<button type="button" onclick="location.href='http://localhost:8080/Spring/showPage.html'" class="btn btn-info"> Apply for Frachies Program </button>
</div>

<div class="container-fluid">
	<div class="contactus container sm-4 md-6 card-2" style="font-family: Arial, Helvetica, sans-serif;
  			border-radius: 20px;
 			padding: 20px;
  			width: 85%; /* Full width */height: 40%; /* Full height */
  			overflow: auto; /* Enable scroll if needed */
 		 	padding-top: 60px;
  			margin-top: 50px;
  			margin-bottom: 50px;">
			<h1 class="text-center" style="color:grey;">GET IN TOUCH</h1>
				<p style="color:black; margin-bottom: 30px;" class="text-center">Please drop your details and query. We will get back to you in a moment.</p>
				<div class="row">
					<div class="col-sm-4">
						<div class="form-group">
							<input type="text" class="form-control" name="contact_name" placeholder="Your Name">
						</div>
					</div>
					<div class="col-sm-4">
						<div class="form-group">
							<input type="text" class="form-control" name="contact_email" placeholder="Your Email">
				
				
				
						</div>

					</div>
					<div class="col-sm-4">
						<div class="form-group">
							<input type="text" class="form-control" name="contact_subject" placeholder="Subject">
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col">
						<div class="form-group">
							<input style="height: 200px;" type="text" class="form-control" name="contact_message" placeholder="Your Message">
						</div>
					</div>
				</div>
		<br>
		<button type="submit" class="btn btn-primary mt-0" name="contact_submit">Submit</button>
		
	
	</div>
</div>
			


</form>
<jsp:include page="includes/footer.jsp"></jsp:include>

</body>
</html>