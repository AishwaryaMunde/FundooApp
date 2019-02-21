<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js"></script>
  <style>
  .card {
        margin: 100px auto; /* Added */
        float: none; /* Added */
        margin-bottom: 50px; /* Added */   
        width: 30rem;    
	}
  h2 {
   padding: 20px;
   /* border: 1px solid grey; */
   margin : 10px;
   width: 97%;
  }
  .alert {
  	 padding: 10px;
   /* border: 1px solid grey; */
   margin : 10px;
   width: 97%;
  }
  .form-control {
	   padding: 10px;
	   /* border: 1px solid grey; */
	   margin : 10px;
	   width: 97%;
  }
  </style>
  
</head>
<body>
 
<div class="container">
  <div class="card">
    <div class="card-body text-center">
    	<img src="http://www.ittutorials.in/images/mi-logo.jpg">
    	<h2>User Management</h2>
    	<h5>Recover Password</h5>
    	<div class="alert alert-info">
    		<strong></strong>Please enter your email address below to recover the password 
    		at your registered email.
 		 </div>
    	<input type="email" id="email" class="form-control" placeholder="Email">
    	<button type="button" class="btn btn-primary form-control" >RECOVER PASSWORD</button>
    	Know your password? <a href="index.jsp">Login</a>
    </div>
  </div>
</div>

</body>
</html>
