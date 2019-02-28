<!DOCTYPE html>
<html lang="en">
<head>
<title>Bootstrap Example</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css">
<script src="https://unpkg.com/ionicons@4.4.4/dist/ionicons.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js"></script>
<script> 
			$(document).ready(function() {
								$("#loginverify").submit(function(event) {
									event.preventDefault();
									ajaxPost();
								});
								function ajaxPost() {
									// PREPARE FORM DATA
									var formData = {
										userName : $("#userName").val(),
										userPassword : $("#userPassword").val()
									}
									console.log(formData.userName,
											formData.userPassword);
									$.ajax({
												type : "POST",
												contentType : "application/json",
												url : "http://localhost:8080/Fundoo/verifyUser",
												data : JSON.stringify(formData),
												dataType : 'json',
												beforeSend : function(xhr) {
													xhr.setRequestHeader(
															"Accept",
															"application/json");
													xhr.setRequestHeader(
															"Content-Type",
															"application/json");
												},
												success : function(result) {													
													console.log("adfdf");													
													   if (result.status == "done") {
														localStorage.setItem('id',result.id);
														window.location.assign("http://localhost:8080/Fundoo/Dashboard.jsp");
													}  else {
														console.log('error')
														alert('invalid username and password') 
													}  
													console.log(result);  
												}
											});
									resetData();
								}
								function resetData() {
									$("#userName").val("");
									$("#userPassword").val("");
								}
							})
		</script>
  
  <style>
  .card {
        margin: 100px auto; /* Added */
        float: none; /* Added */
        margin-bottom: 50px; /* Added */   
        width: 25rem;
        height: 23rem;    
	}
  h2 {
   padding: 20px;
   /* border: 1px solid grey; */
   margin : 10px;
   width: 97%;
  }
  h2 {
   padding: 20px;
   /* border: 1px solid grey; */
   margin : 10px;
   width: 97%;
  }
  h6 {
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
  input {
   padding: 20px;
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
    	 <form id="loginverify">
    		<img src="http://www.ittutorials.in/images/mi-logo.jpg">
    		<h6>Login to your account</h6>
    	
	    	<input type="text" id="userName" name="userName" class="form-control" placeholder="Username" required="required">
	    	<input type="password" id="userPassword" class="form-control" placeholder="Password" required="required">
	    	<button type="submit" class="btn btn-primary form-control" >LOGIN</button>
    	</form>
    	<span>
    		<ion-icon name="lock"></ion-icon>
    	</span>
    	<a href="ForgetPassword.jsp">Forget Password?</a>
    </div>
  </div>
</div>

</body>
</html>
