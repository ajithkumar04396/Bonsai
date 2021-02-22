<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
  <jsp:include page="includes/headera.jsp"></jsp:include>
<form action="" method="get">
	<div class="container mt-3">
		<div class="row p-5">
			<div class="col-sm-12">
				<h4 class="mb-2 p-0">Users</h4>
				<hr class="m-0 p-0" style="background-color: #FD1C05; width: 7%; float:left; ">
			</div>
		</div>
	</div>

	<div class="container">  
	<button type="button" class="btn btn-primary" style="margin: 20px;">Update</button> 
  <table class="table table-bordered">
    <thead>
      <tr>
      	<th></th>
      	<th><h5 style="font-style: bold; color:black;" class="p-2">Delivery ID</h5></th>
        <th><h5 style="font-style: bold; color:black;" class="p-2">Delivery Name</h5></th>
        <th><h5 style="font-style: bold; color:black;" class="p-2">Delivery Age</h5></th>
        <th><h5 style="font-style: bold; color:black;" class="p-2">Delivery Phone No</h5></th>
        <th><h5 style="font-style: bold; color:black;" class="p-2">Delivery DOB</h5></th>
        <th><h5 style="font-style: bold; color:black;" class="p-2">Gender</h5></th>
      </tr>
    </thead>
   <c:forEach var="listValue" items="${list}">
	<c:set var="index" value="${index+1 }"></c:set>
    <tbody>
    	
      <tr>
        <td><button type="button" class="close p-3" aria-label="Close">
  				<span aria-hidden="true" style="color:red;"><a style="color:red; text-decoration:none;" href="ddell.html?id=${listValue.login_id}">&times;</a></span>
				</button></td>
        <td><h5 style="font-style: bold; color:#98999b" class="p-1">${listValue.dp_id}</h5></td>
        <td><h5 style="font-style: bold; color:#98999b" class="p-1">${listValue.dp_name}</h5>
			</td>
        <td><h5 style="font-style: bold; color:#98999b" class="p-1">${listValue.dp_age}</h5></td>
        <td><h5 style="font-style: bold; color:#98999b" class="p-1">${listValue.dp_phoneno}</h5></td>
        <td><h5 style="font-style: bold; color:#98999b" class="p-1">${listValue.dp_dob}</h5></td>
        <td><h5 style="font-style: bold; color:#98999b" class="p-1">${listValue.dp_gender}</h5></td>
      </tr>
      </tbody>
      </c:forEach>
  </table>
</div>
</form>
<jsp:include page="includes/footer.jsp"></jsp:include>
</body>
</html>