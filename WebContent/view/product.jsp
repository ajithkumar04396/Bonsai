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
     <form action="saveproduct.html" method="post">
		<div class="container">
			<h1>Admin Panel</h1>
	<div class="row" style="margin-left: 20%;">
	<div class="col-6 m-5 p-5">	
	<h3>Add Product</h3>
    <label for="prdid" class="mb-2 mr-sm-2">Product ID</label>
    <input type="text" class="form-control mb-2 mr-sm-2" name="Product_id" id="Product_id">
    <label for="prdtype" class="mb-2 mr-sm-2">Product Type</label>
    <input type="text" class="form-control mb-2 mr-sm-2" name="Producttype" id="Producttype" >
     <label for="prdname" class="mb-2 mr-sm-2">Product Name</label>
    <input type="text" class="form-control mb-2 mr-sm-2" name="Productname" id="Productname" >
     <label for="prdprice" class="mb-2 mr-sm-2">Product price</label>
    <input type="text" class="form-control mb-2 mr-sm-2" name="Productprice" id="Productprice" >
      <label for="prdqnt" class="mb-2 mr-sm-2">Product Quantity</label>
    <input type="number" required default="1" min="1" max="50" name="stock" class="form-control mb-2 mr-sm-2" id="prdqnt" >
     <label for="prdimage" class="mb-2 mr-sm-2">Product image</label>
  <input type="file" name="Productimage" id="Productimage" class="form-control mb-2 mr-sm-2" accept="filename">

     <label for="email2" class="mb-2 mr-sm-2">Product Description</label>
   <textarea class="form-control" rows="5" name="Productdescription" id="Productdescription" name="text"></textarea>
    <div class="form-check mb-2 mr-sm-2">
    </div>    
  <button type="submit" class="btn btn-primary mb-2">Submit</button>
  </div>

</div>
</div>
 </form>

<jsp:include page="includes/footer.jsp"></jsp:include>
</body>
</html>