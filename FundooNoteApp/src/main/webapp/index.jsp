<!doctype html>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
        crossorigin="anonymous">
    <!-- <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
        crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script> -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
    <title>User Managaement</title>   
</head>
<body>
    <div class="container">
        <div class="d-flex justify-content-lg-center  " style="padding-top: 150px">
            <div class="well well-lg col-lg-4s" style="padding-top: 50px">
                <!-- <img src="mi-logo.jpg" class="img-circle center-block" alt="Cinque Terre"> -->
                <div class="d-flex justify-content-center">
                    <p>Login to our account</p>
                </div>
                <form id="loginverify">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="form-group ">
                                <input type="email" id="userName" class="form-control" placeholder="Enter Username">
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="form-group ">
                                <input type="password" id="userPassword" class="form-control" placeholder="Enter Password">
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-lg-12">
                            <button class="btn btn-primary btn-lg-3 btn-block" type="submit">Login </button>
                        </div>
                    </div>
                </form>
                <div>
                    <span class="glyphicon glyphicon-lock">
                        <a href="ForgetPassword.jsp" class="btn btn-link">Forget password?</a>
                    </span>
                </div>
            </div>
        </div>
    </div>

    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>    
    <script>
            $(document).ready(function () {
                $("#loginverify").submit(function (event) {
                    event.preventDefault();
                    ajaxPost();    
                });
                function ajaxPost() {
    
                    // PREPARE FORM DATA
                    var formData = {
                        userName: $("#userName").val(),
                        password: $("#userPassword").val()
                    }
                    console.log(formData.userName, formData.password);                
                    $.ajax({    
		                type : "POST",
		                contentType : "application/json",
		                url :  "http://localhost:8080/FundooNoteApp/read",
		                data : JSON.stringify(formData),
		                dataType : 'json',
		                beforeSend: function(xhr) {
		                xhr.setRequestHeader("Accept", "application/json");
		                xhr.setRequestHeader("Content-Type", "application/json");
            	   },
	               success : function(result) {
	                   if(result.status == "done"){
	                       console.log('hello');
	                       /* window.location = 'file:///home/bridgeit/Documents/UserManagement/check.html'; */
	                       }
	               	       else{
                            console.log('error')
                    alert('invalid username and password')
                        }
                    console.log(result);
                }
            });
            resetData();
        }
        function resetData(){
        $("#userName").val("");
        $("#userPassword").val("");
    }
            }
            )    
        </script>
</body>

</html>