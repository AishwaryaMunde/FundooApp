<!DOCTYPE html>
<html lang="en">
<head>
<title>Bootstrap Example</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js"></script>
<script src="https://unpkg.com/ionicons@4.4.4/dist/ionicons.js"></script>
<script>
	$(document).ready(function() {
		$("#loginverify").submit(function(event) {
			event.preventDefault();
			ajaxPost();
		});
		function ajaxPost() {

			$.ajax({
				type : "POST",
				contentType : "application/json",
				url : "http://localhost:8080/Fundoo/verifyUser",
				data : JSON.stringify(formData),
				dataType : 'json',
				beforeSend : function(xhr) {
					xhr.setRequestHeader("Accept", "application/json");
					xhr.setRequestHeader("Content-Type", "application/json");
				},
				success : function(result) {
					console.log(result.status);
					if (result.status == "done") {
						console.log('hello');
						location.href = "Dashboard.jsp";
					} else {
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
</head>
<style>
.top-nav {
	padding: 0 15px;
}

.top-nav>li {
	display: inline-block;
	float: left;
}

.dropdown-toggle {
	float: right;
}

.top-nav>li>a {
	padding-top: 20px;
	padding-bottom: 20px;
	line-height: 20px;
	color: #fff;
}

.top-nav>li>a:hover, .top-nav>li>a:focus, .top-nav>.open>a, .top-nav>.open>a:hover,
	.top-nav>.open>a:focus {
	color: #fff;
	background-color: #1a242f;
}

.top-nav>.open>.dropdown-menu {
	float: left;
	position: absolute;
	margin-top: 0;
	/*border: 1px solid rgba(0,0,0,.15);*/
	border-top-left-radius: 0;
	border-top-right-radius: 0;
	background-color: rgb(145, 51, 51);
	-webkit-box-shadow: 0 6px 12px rgba(0, 0, 0, .175);
	box-shadow: 0 6px 12px rgba(0, 0, 0, .175);
}

.top-nav>.open>.dropdown-menu>li>a {
	white-space: normal;
}

/* Side Navigation */
#wrapper {
	padding-left: 250px;
	transition: all 0.4s ease 0s;
}

#side-wrapper {
	margin-left: -250px;
	top: 51px;
	left: 250px;
	width: 250px;
	background: #1a242f;
	position: fixed;
	height: 100%;
	overflow-y: auto;
	z-index: 1000;
	transition: all 0.4s ease 0s;
}

#wrapper.active {
	padding-left: 0;
}

#wrapper.active #side-wrapper {
	left: 0;
}

#page-content-wrapper {
	width: 100%;
	padding-top: 70px;
	transition: all 0.4s ease 0s;
}

.side-nav>li>a {
	width: 225px;
	border-bottom: 1px rgba(0, 0, 0, .3) solid;
}

.side-nav li a:hover, .side-nav li a:focus {
	outline: none;
	background-color: #1a242f !important;
}

.navbar.navbar-inverse.navbar-fixed-top {
	background: #1f6ad0;
	background: -moz-linear-gradient(left, #1f6ad0 0%, #13b9de 100%);
	background: -webkit-linear-gradient(left, #1f6ad0 0%, #13b9de 100%);
	background: linear-gradient(to right, #1f6ad0 0%, #13b9de 100%);
}

.side-nav>li>ul {
	padding: 0;
	border-bottom: 1px rgba(0, 0, 0, .3) solid;
}

.side-nav>li>ul>li>a {
	display: block;
	padding: 10px 15px 10px 38px;
	text-decoration: none;
	color: #fff;
}

.side-nav>li>ul>li>a:hover {
	color: #fff;
}

.navbar .nav>li>a>.label {
	-webkit-border-radius: 50%;
	-moz-border-radius: 50%;
	border-radius: 50%;
	position: absolute;
	top: 14px;
	right: 6px;
	font-size: 10px;
	font-weight: normal;
	min-width: 15px;
	min-height: 15px;
	line-height: 1.0em;
	text-align: center;
	padding: 2px;
}

.navbar .nav>li>a:hover>.label {
	top: 10px;
}

.navbar-brand {
	padding: 5px 15px;
}

#menu-toggle {
	text-decoration: none;
	float: left;
	color: #fff;
	padding-right: 15px;
}

.ml-auto .dropdown-menu {
	left: auto !important;
	right: 0px;
}
.row>a {
	margin: 12px;
}
.tab-content .row {
	padding: 11px;
}
.col-md-5 .tab-content {
	padding : 15px;
} 
</style>
<body>
	<div id="wrapper">
		<!-- Navigation -->
		<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
			<!-- Brand and toggle get grouped for better mobile display -->
			<div class="container-fluid">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle collapsed"
						data-toggle="collapse" data-target="#navbar" aria-expanded="false"
						aria-controls="navbar">
						<span class="sr-only">Toggle navigation</span>

					</button>
					<div class="navbar-brand">
						<a id="menu-toggle" class="active">
							<p>
								User Management <span
									class="glyphicon glyphicon-align-justify btn-menu toggle"></span>
							</p>
						</a>
					</div>
					<ul class="nav navbar-nav navbar-right ml-auto">
						<li class="dropdown"><a href="#" class="dropdown-toggle"
							data-toggle="dropdown"> <span style="float: right;">Admin
							</span><b class="fa fa-angle-down"></b></a>
							<ul class="dropdown-menu">
								<li><a href="Profile.jsp"><ion-icon name="person"></ion-icon>
										Profile</a></li>
								<li class="divider"></li>
								<li><a href="index.jsp"><ion-icon name="power"></ion-icon>
										Logout</a></li>
							</ul></li>
					</ul>
				</div>
			</div>
		</nav>

		<!-- Top Menu Items -->
		<div id="side-wrapper" class="active">
			<nav id="spy">
				<ul class="side-nav nav">
					<li><a href="Dashboard.jsp" style="color: white"><ion-icon
								name="cloudy"></ion-icon>Dashboard</a></li>
					<li><a href="#" data-toggle="collapse"
						data-target="#submenu-1" style="color: white"><ion-icon
								name="person"></ion-icon> User </a>
						<ul id="submenu-1" class="collapse">
							<li><a href="Register.jsp">New user</a></li>
							<li><a href="UsersList.jsp">User List</a></li>
						</ul></li>
					<li><a href="Profile.jsp" style="color: white"><ion-icon
								name="list-box"></ion-icon>Profile</a></li>
					<li><a href="index.jsp" style="color: white"><ion-icon
								name="power"></ion-icon>Logout</a></li>
				</ul>
			</nav>
		</div>

		<div id="page-content-wrapper" style="padding-top: 10px;">
			<div class="page-content">
				<div class="container-fluid">
					<div class="row">
						<div class="well"
							style="padding-top: 80px; background-color: white">
							<p style="text-align: left;">
								Profile <span style="float: right;"> <a
									href="Dashboard.jsp"><ion-icon name="home"></ion-icon>Home</a>
									/ Dashboard
								</span>
							</p>
						</div>
					</div>
					<div class=" container-fluid">
						<div class="panel panel"></div>
					</div>
					<div class="row">
						<div class="col-md-5 ">
							<div class="media">
								<div class="thumbnail">
									Picture <img
										src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT2j_EADnakDOXR0E0mq8PH46rdzs2JKCGYqDiu0RFp9oDzgtTx"
										alt="Basic info">
										<h3>Basic Info</h3>
										<h5>Email</h5>
										<h5>Username<div style="float: right;">Admin</div></h5>
										<div class="text-center">
											<button class="btn btn-primary" type="submit" onclick="window.location='Register.jsp'">Edit Profile</button>
										</div>
								</div>
							</div>
						</div>
						<div class="col-md-5">
							<ul class="nav nav-tabs" id="myTab">
								<li class="active"><a href="#sectionA">General
										Information</a></li>
								<li><a href="#sectionB">Login History</a></li>
							</ul>
							<div class="tab-content">
								<div id="sectionA" class="tab-pane fade in active">
									<div class="row">
										First Name :
										<div style="float: right">Aishwarya</div>
									</div>
									<div class="row">
										Middle Name :
										<div style="float: right">Sanjay</div>
									</div>
									<div class="row">
										Last Name :
										<div style="float: right">Munde</div>
									</div>
									<div class="row">
										Date Of Birth :
										<div style="float: right">14 October 1997</div>
									</div>
									<div class="row">
										Gender :
										<div style="float: right">Female</div>
									</div>
									<div class="row">
										Country :
										<div style="float: right">India</div>
									</div>
									<div class="row">
										Phone :
										<div style="float: right">7391997231</div>
									</div>
									<div class="row">
										Phone + Ext :
										<div style="float: right">(+91)7391997231</div>
									</div>
									<div class="row">
										Address :
										<div style="float: right">Swargate, Pune</div>
									</div>
								</div>
								<div id="sectionB" class="tab-pane fade">

									<p>
										<ion-icon name="time"></ion-icon>
										Login history is displayed prior to the last login
									</p>
								</div>
							</div>
							<script type="text/javascript">
								$(document).ready(function() {
									$("#myTab a").click(function(e) {
										e.preventDefault();
										$(this).tab('show');
									});
								});
							</script>
						</div>
					</div>
				</div>
			</div>
			<!-- /#page-wrapper -->
		</div>
	</div>
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
	<script>
		$(function() {
			$('[data-toggle="tooltip"]').tooltip();
			$(".side-nav .collapse").on(
					"hide.bs.collapse",
					function() {
						$(this).prev().find(".fa").eq(1).removeClass(
								"fa-angle-right").addClass("fa-angle-down");
					});
			$('.side-nav .collapse').on(
					"show.bs.collapse",
					function() {
						$(this).prev().find(".fa").eq(1).removeClass(
								"fa-angle-down").addClass("fa-angle-right");
					});
		})
		$("#menu-toggle").click(function(e) {
			e.preventDefault();
			$("#wrapper").toggleClass("active");
		});
	</script>
</body>
</html>
