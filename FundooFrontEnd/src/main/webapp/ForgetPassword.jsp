<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
  <script src="https://use.fontawesome.com/releases/v5.0.7/js/all.js"></script>	 
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js"></script> 
  <style>
  body {
  	font-family: 'Robota',sans-sarif; 
  }
  .main-section {
  	margin: 0 auto; 
  	margin-top: 100px;
  	padding: 0;
  }
  .modal-content {
  	background-color: #3b4652;
  	opacity: .95;
  	padding: 0 16px;
  	box-shadow: 0px 0px 3px #848484;
  }
  .form-group {
  	margin-bottom: 20px;
  }
  .form-group input {
  	height: 32px;
  	border-radius: 5px;
  	border: 0;
  	font-size: 15px;
  }
  button {
	width: 55%;
	margin: 5px 0 25px;
  }
  .btn {
  	background-color: #27c2a5;
  	color: #fff;
  	font-size: 17px;
  	padding: 9px;
  	border-radius:9px; 
  }
  a {
  	font-size: 18px;
  	color: white;
  }
  b {
  	font-size: 15px;
  	color: white;
  }
  p {
  	font-size: 16px;
  	padding: 8px;
  }
  .text-left {
  	font-size: 18px;
  	padding: 5px;
  }
  h1 {
  	color: white;
  }
  h2 {
  	color: white;
  }
  .modal-content {
  	border-radius: 15px;
  }
  </style>
</head>
<body>
<div class="modal-dialog text-center">
		<div class="col-sm-10 main-section">
			<div class="modal-content">
				<h1>User Management</h1>
				<form class="col-12">
					<h2>Recover Password</h2>
					 <p class="bg-info text-white">Please enter your email address below to recover the password
					 at your registered email id</p>
					<div class="form-group">
						<b><p class="text-left">Enter Email Id</p></b>
						<input type="text" class="form-control" placeholder="Enter Email Id">
					</div>
					<button type="submit" class="btn">Recover Password</button>
				</form>
				<div class="col-12">
					<b>Know your password? <a href="index.jsp">Login</a></b>
				</div>				
			</div>
		</div>
	</div>
</body>
</html>