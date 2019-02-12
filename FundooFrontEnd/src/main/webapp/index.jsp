 <!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
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
  .user-img {
  	margin-top: -50px;
  	margin-bottom: 40px;
  }
  .user-img img {
  	height: 100px;
  	width: 100px;
  	border-radius: 5px;
  	box-shadow: 0px 0px 2px #848484;
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
	width: 40%;
	margin: 5px 0 25px;
  }
  .btn {
  	background-color: #27c2a5;
  	color: #fff;
  	font-size: 18px;
  	padding: 6px;
  	border-radius:9px; 
  	border-bottom: 4px solid #219882; 
  }
  a {
  	font-size: 18px;
  	color: white;
  }
  b {	
  	font-size: 18px;
  	color: white;
  }
  .modal-content {
  	border-radius: 15px;
  }
  </style>

</head>
<body>
	<div class="modal-dialog text-center">
		<h2>Login Page</h2>
		<div class="col-sm-8 main-section">
			<div class="modal-content">
				<div class="col-12 user-img">
					<img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR8aCnkLH2IZazN-VzDOxaUULroyr4k2PP2a2Dus-icLcL49gBC">				
				</div>
				<form class="col-12">
					<div class="form-group">
						<b><p class="text-left">Email Id</p></b>
						<input type="text" class="form-control" placeholder="Enter EmailId">
					</div>
					<div class="form-group">
						<b><p class="text-left">Password</p></b>
						<input type="password" class="form-control" placeholder="Enter Password">
					</div>
					<button type="submit" class="btn"><i class="fas fa-sign-in-alt"></i>Login</button>
				</form>
				<div class="col-12">
					<a href="ForgetPassword.jsp">Forget Password</a>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
