<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
	<title>Login page</title>

  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css">

 	<link rel="stylesheet" type="text/css" href="css/style1.css">
</head>
<body>

	<jsp:include page="includes/header.jsp"></jsp:include>
	<div class="container-fluid mt-5 " style="margin-bottom: 40px;">
	<div class="container card-4 b-r-sm" style="overflow: hidden; width:40%;">

		<div class="row">
			<div class="col-md-6 p-2" style="margin-left: 130px;">
				<h4 class="text-info" >Bonsai 3</h4>
					<!-- heading main -->
					<form action="dlogin.html" method="post">
					<c:if test="${not empty error2}">
    						<div class=" alert alert-danger">
    							Invalid User Credential
    						</div>
						</c:if>
					  <div class="form-group">
					    <label for="email">Email address:</label>
					    <input type="email" class="form-control" name="email" id="email" placeholder="Email ID">
					  </div>
					  <div class="form-group ">
					    <label for="pwd">Password:</label>
					    <input type="password" class="form-control" name="password" id="pwd" placeholder="Password" >
					  </div>
					  <div class="form-group form-check">
					    <label class="form-check-label">
					      <input class="form-check-input" type="checkbox"> Remember me
					    </label>
					  </div>
					  <div class="row">
					  	<div class="col">
					  		<button type="submit" class="btn btn-primary " style="width: 100%">Login</button>
					  	</div>
					  		
					  </div>
					  </form>
					  <div class="row mt-5">
					  <!-- 	<div class="col text-center">
					  		<button type="submit" style="width: 100%" class="btn btn-danger" onclick="location.href='index.html'" class="cancelbtn">Cancel</button>
					  	</div> -->
					  		<div class="col text-center">
					  			<span class="psw">Forgot <a class="no-dec" href="#">Password?</a></span>
					  		</div>
						</div>
				</div>
		</div>
	</div>
	</div>


<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<!-- Popper JS -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js"></script>
<jsp:include page="includes/footer.jsp"></jsp:include>
</body>
</html>