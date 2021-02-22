<!DOCTYPE html>
<html>
<head>
	<title></title>
	<link rel="stylesheet" type="text/css" href="C:\Users\pc\Desktop\view\css\style1.css">
 	
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js"></script>
</head>
<body>
	<jsp:include page="includes/headera.jsp"></jsp:include>
		<div class="container p-5">
			<div class="row">
				<div class="col-sm-12">
					<h4 class="mb-2 p-0">Admin Panel</h4>
					<hr class="m-0 p-0" style="background-color: #FD1C05; width: 15%; float:left; ">
				</div>
			</div>
		</div>
		<div class="container"></div>
		<div class="row ml-5 pl-5">
				<div class="col-sm-12">
					<button class="btn btn-primary" onclick="location.href='productaddpage.html'"> Add product</button>
					<button class="btn btn-primary"onclick="location.href='productupdate.html'"> Update product</button>
					<button class="btn btn-primary"><a style="text-decoration:none;color:white;" href="viewuserpage.html">View Users</a></button>
					<button class="btn btn-primary" onclick="location.href='Report'" > View payment Details</button>
					<button class="btn btn-primary" onclick="location.href='Reportp'" > View Inventory Details</button>
					<button class="btn btn-primary" onclick="location.href='deliveryperson.html'">ADD Delivery Person</button>
					<button class="btn btn-primary" onclick="location.href='viewdeliverypersion.html'">View Delivery Person</button>
					</div>
			</div>
			
<jsp:include page="includes/footer.jsp"></jsp:include>
</body>
</html>