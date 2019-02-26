<!DOCTYPE html>
<html lang="en">

<head>
<title>Bootstrap Example</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="Dashboard.css">
<script src="https://unpkg.com/ionicons@4.4.4/dist/ionicons.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
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

h2 {
	text-align: center;
}

table caption {
	padding: .5em 0;
}

@media screen and (max-width: 767px) {
	table caption {
		border-bottom: 1px solid #ddd;
	}
}

.p {
	text-align: center;
	padding-top: 140px;
	font-size: 14px;
}

i {
	font-size: 20px;
}

ion-icon {
	font-size: 20px;
}
tr>td>img {
	height: 15px;
	width: 15px;
}
.well>table {
	padding: 10px;
	margin : 10px;
}
/* .well>button{
	float: right;
}
.well .form-control {
	float: right;
	height : 35px;
	width: 200px;
	margin : 13px;
} */
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
					<ul class="nav navbar-nav navbar-right ml-auto" style="float: right;">
						<li class="dropdown"><a href="#" class="dropdown-toggle"
							data-toggle="dropdown"> 
							<span>Admin
							</span><b class="fa fa-angle-down"></b></a>
							<ul class="dropdown-menu">
								<li><a href="Profile.jsp"><ion-icon name="person"></ion-icon>
										Profile</a></li>
								<li class="divider"></li>
								<li><a href="index.jsp"><ion-icon name="power"></ion-icon>
										Logout</a>
								</li>
							</ul>
						</li>
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
							<li><a href="Register.jsp"></i>New user</a></li>
							<li><a href="UsersList"></i> User List</a></li>
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
								Users <span style="float: right;"> <a
									href="Dashboard.jsp"><ion-icon name="home"></ion-icon>Home</a>
									/ Dashboard
								</span>
							</p>
						</div>
					</div>
					<div class="container">
						<div class="well">
							<!-- <div style="float: right;"> -->
								<button class="btn btn-primary" type="submit" onclick="window.location='Register.jsp'" style="float: right;">New User</button>						
								<input class="form-control" id="myInput" type="text"
									placeholder="Search.." style="float: right; width: 250px;" > <br>
							<!-- </div> -->
							<table class="table table-bordered table-striped">
								<thead>
									<tr>
										<th data-field=""></th>
										<th data-field="Name">Name</th>
										<th data-field="Email">Email</th>
										<th data-field="Dob">Dob</th>
										<th data-field="Status">Status</th>
										<th data-field="Role">Role</th>
										<th data-field="Account">Account</th>
										<th data-field="Action">Action</th>
									</tr>
								</thead>
								<tbody id="myTable">
									<tr>
										<td><img
											src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT8_wof_s7pgp3vkC1Y45Jk4AFtpdT_5cmPXauft4KyrgGo_EYcFg"></td>
										<td>Aishwarya Munde</td>
										<td>kccaishwarya2012@gmail.com</td>
										<td>14/10/1997</td>
										<td>Inactive</td>
										<td>Admin</td>
										<td></td>
										<td><button type="button" id="edit" style="background-color: white; border-radius: none"><i class="glyphicon glyphicon-edit"></i></button>
										<button type="button" id="delete" style="background-color: white;"><ion-icon name="trash"></ion-icon></button></td>
									</tr>
									<tr>
										<td><img
											src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT8_wof_s7pgp3vkC1Y45Jk4AFtpdT_5cmPXauft4KyrgGo_EYcFg"></td>
										<td>Akhil</td>
										<td>akhil.akkineni@gmail.com</td>
										<td>14/10/1990</td>
										<td>online</td>
										<td>Admin</td>
										<td></td>
										<td><button type="button" id="edit" style="background-color: white; border-radius: none"><i class="glyphicon glyphicon-edit"></i></button>
										<button type="button" id="delete" style="background-color: white;"><ion-icon name="trash"></ion-icon></button></td>
									</tr>
								</tbody>
							</table>						
						</div>						
					</div>					
					<script>
						$(document).ready(function(){
						  $("#myInput").on("keyup", function() {
						    var value = $(this).val().toLowerCase();
						    $("#myTable tr").filter(function() {
						      $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
						    });
						  });
						});
					</script>
				</div>
			</div>
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
