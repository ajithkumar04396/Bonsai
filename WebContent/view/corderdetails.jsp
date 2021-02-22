<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
	<title>
   
  </title>
  <style type="text/css">
     .tital{ font-size:16px; font-weight:500;}
   .bot-border{ border-bottom:1px #f8f8f8 solid;  margin:5px 0  5px 0}  
   </style> 
	<link rel="stylesheet" type="text/css" href="C:\Users\pc\Desktop\view\css\style1.css">
 	
 <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js"></script>
</head>
<body>
  <jsp:include page="includes/header.jsp"></jsp:include>
<form action="deliverfinish.html" method="post">
	<div class="container mt-3">
		<div class="row p-5">
			<div class="col-sm-12">
				<h4 class="mb-2 p-0"style="font-family: Times-new-roman; font-style: bold;">Customer Order Details</h4>
				<hr class="m-0 p-0" style="background-color: #FD1C05; width: 24%; float:left; ">
			</div>
		</div>
	</div>
<c:forEach var="listValue" items="${list}">
	<c:set var="index" value="${index+1 }"></c:set>
	<div class="container pt-5">
    <div class="row">
      <div class="col-sm-6 border-right border-dark">
        <h5 class="mb-2 p-0"style="font-family: Times-new-roman; font-style: bold;">Customer Details</h5>
        <hr class="m-0 p-0" style="background-color: #FD1C05; width: 28%; float:left; "><br>
      
         <table class="ml-3" style="width:90%;">
            <tr class="my-5">
              <th ><lable style="font-family: Times-new-roman; font-size: 15px;">Customer Name:</lable></th>
              <th ><h6 style="font-family: Times-new-roman; font-size: 15px;">${listValue.custname}</h6></th> 
            </tr>
            <tr class="my-4">
              <th ><lable style="font-family: Times-new-roman; font-size: 15px;">Address:</lable></th>
              <th ><h6 style="font-family: Times-new-roman; font-size: 15px;">${listValue.custaddress}</h6></th> 
            </tr>
            <tr class="my-4">
              <th ><lable style="font-family: Times-new-roman; font-size: 15px;">Phone NO:</lable></th>
              <th ><h6 style="font-family: Times-new-roman; font-size: 15px;">${listValue.custphoneno}</h6></th> 
            </tr>
            <tr class="my-4">
              <th ><lable style="font-family: Times-new-roman; font-size: 15px;">Alternative Phone NO:</lable></th>
              <th ><h6 style="font-family: Times-new-roman; font-size: 15px;">${listValue.custaltphoneno}</h6></th> 
            </tr>
            <tr class="my-4">
              <th ><lable style="font-family: Times-new-roman; font-size: 15px;">Email:</lable></th>
              <th ><h6 style="font-family: Times-new-roman; font-size: 15px;">${listValue.custemail}</h6></th> 
            </tr>
            <tr class="my-4">
              <th ><lable style="font-family: Times-new-roman; font-size: 15px;">Gender:</lable></th>
              <th ><h6 style="font-family: Times-new-roman; font-size: 15px;">${listValue.custgender}</h6></th> 
            </tr>



          </table>
        </div>
      
      <div class="col-sm-6 border-left border-dark">
        <h5 class="mb-2 p-0"style="font-family: Times-new-roman; font-style: bold;">Product Details</h5>
        <hr class="m-0 p-0" style="background-color: #FD1C05; width: 28%; float:left; "><br>
      
         <table class="ml-3" style="width:90%;">
            <tr class="my-5">
              <th ><lable style="font-family: Times-new-roman; font-size: 15px;">Product Id:</lable></th>
              <th ><h6 style="font-family: Times-new-roman; font-size: 15px;">${listValue.product_id}</h6></th> 
            </tr>
            <tr class="my-4">
              <th ><lable style="font-family: Times-new-roman; font-size: 15px;">Product Name:</lable></th>
              <th ><h6 style="font-family: Times-new-roman; font-size: 15px;">${listValue.productname}</h6></th> 
            </tr>
            <tr class="my-4">
              <th ><lable style="font-family: Times-new-roman; font-size: 15px;">Product Price:</lable></th>
              <th ><h6 style="font-family: Times-new-roman; font-size: 15px;">${listValue.productprice}</h6></th> 
            </tr>
            <tr class="my-4">
              <th ><lable style="font-family: Times-new-roman; font-size: 15px;">Number of Quantity:</lable></th>
              <th ><h6 style="font-family: Times-new-roman; font-size: 15px;">${listValue.quality}</h6></th> 
            </tr>
            <tr class="my-4">
              <th ><lable style="font-family: Times-new-roman; font-size: 15px;">Total Price:</lable></th>
              <th ><h6 style="font-family: Times-new-roman; font-size: 15px;">${listValue.total}</h6></th> 
            </tr>
             <tr class="my-4">
              <th ><lable style="font-family: Times-new-roman; font-size: 15px;">Delivery ID:</lable></th>
              <th ><h6 style="font-family: Times-new-roman; font-size: 15px;">${listValue.delivery_id}</h6></th> 
            </tr>
          </table>
        </div>
      
    </div>
  </div>
  <div class="container p-5">
    <div style="width: 30%;">
    <label for="prdid" class="mb-2 mr-sm-2">Date of Delivery:</label>
    <input type="hidden" value="${listValue.delivery_id}" name="delivery_id" id="delivery_id" >
    <input type="date" class="form-control mb-2 mr-sm-2" name="date" id="date">
    <label for="prdid" class="mb-2 mr-sm-2">Remark:</label>
   <input type="text" rows="4" cols="50" class="form-control mb-2 mr-sm-2" name="delremark" id="delremark"><br>
  <input type="submit" class="btn btn-success" style="float:left;" value="Finish">
  <button type="button" class="btn btn-danger" style="float:right;"><a style="color:white; text-decoration:none;" href="dorders.html">Cancle</a></button>
  </div>
  </div>
   </c:forEach>
   </form>
<jsp:include page="includes/footer.jsp"></jsp:include>
</body>
</html>