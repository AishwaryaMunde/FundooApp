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
        width: 25rem;    
	}
  h2 {
   padding: 20px;
   /* border: 1px solid grey; */
   margin : 10px;
   width: 97%;
  }
  .alert {
  	font-size:15px;
  	 padding: 10px;
   /* border: 1px solid grey; */
   margin : 10px;
   width: 97%;
  }
  .form-control {
  	   font-size:15px;	 
	   padding: 10px;
	   /* border: 1px solid grey; */
	   margin : 10px;
	   width: 97%;
  }
  .btn {
  	font-size:15px;
  }
  </style>
  <script>
 	 $(document).ready(function () {
     $("#loginverify").submit(function (event) {
         event.preventDefault();
         ajaxPost();    
     });
     function ajaxPost() {

         // PREPARE FORM DATA
        /*  var formData = {
        	emailId: $("#email").val(),
         } */
         console.log($("#email").val());                
         $.ajax({    
             type : "GET",
             contentType : "application/json",
             url :  "http://localhost:8080/Fundoo/getPassword?emailId="+$("#email").val(),
             /* data : JSON.stringify(formData),
             dataType : 'json', */
             beforeSend: function(xhr) {
             xhr.setRequestHeader("Accept", "application/json");
             xhr.setRequestHeader("Content-Type", "application/json");
 	   },
        success : function(result) {
            console.log(result.status);
            if(result.status==emailId){                
                console.log('hello');
                /* location.href="Dashboard.jsp"; */
                }
        	    else{
                	console.log('error')
         			alert('invalid email')
             	}
         console.log(result);
     }
 });
 resetData();
}
function resetData(){
$("#email").val("");
}
 }
 )    
</script>
</head>
<body>
 
<div class="container">
  <div class="card">
    <div class="card-body text-center">
    	 <form id="loginverify">
	    	<img src="http://www.ittutorials.in/images/mi-logo.jpg">
	    	<h2>User Management</h2>
	    	<h5>Recover Password</h5>
	    	<div class="alert alert-info">
	    		<strong></strong>Please enter your email address below to recover the password 
	    		at your registered email.
	 		 </div>
	    	<input type="email" id="email" class="form-control" placeholder="Email">
	    	<button type="submit" class="btn btn-primary form-control" >RECOVER PASSWORD</button>
	    </form>
    	Know your password? <a href="index.jsp">Login</a>
    </div>
  </div>
</div>
</body>
</html>
