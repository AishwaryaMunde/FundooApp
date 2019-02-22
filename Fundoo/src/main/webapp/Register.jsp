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

option {
	font-weight: normal;
	display: block;
	white-space: pre;
	min-height: 1.2em;
	padding: 0px 2px 1px;
}

.form-group {
	margin-bottom: 15px;
}

.col-md-3 .well {
	width: 700px;
	height: 570px;
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
									User </span><b class="fa fa-angle-down"></b></a>
							<ul class="dropdown-menu">
								<li><a href="#"><i class="fa fa-fw fa-user"></i> Edit
										Profile</a></li>
								<li><a href="#"><i class="fa fa-fw fa-cog"></i> Change
										Password</a></li>
								<li class="divider"></li>
								<li><a href="#"><ion-icon name="power"></ion-icon>
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
					<li><a href="" style="color: white"><i
							class="fa fa-fw fa fa-question-circle"></i>Dashboard</a></li>
					<li><a href="#" data-toggle="collapse"
						data-target="#submenu-1" style="color: white"><ion-icon
								name="person"></ion-icon> User <i
							class="fa fa-fw fa-angle-down pull-right"></i></a>
						<ul id="submenu-1" class="collapse">
							<li><a href="Register.jsp"></i>New user</a></li>
							<li><a href="#"></i> User List</a></li>
						</ul></li>
					<li><a href="#" style="color: white"><i
							class="fa fa-fw fa-user-plus"></i>Profile</a></li>
					<li><a href="index.jsp" style="color: white"><ion-icon
								name="power"></ion-icon>Logout</a></li>
				</ul>

				<!-- /.navbar-collapse -->
			</nav>
		</div>

		<div id="page-content-wrapper" style="padding-top: 10px;">
			<div class="page-content">
				<div class="container-fluid">
					<div class="row">
						<div class="well"
							style="padding-top: 80px; background-color: white">
							<p style="text-align: left;">
								New User <span style="float: right;"> <a href=""><i
										class="fa fa-home "></i>Home</a> / <a href="">Dashboard</a></span>
							</p>
						</div>
					</div>

					<div class="row">
						<div class="col-md-3">
							<div class="well">
								<h4>General</h4>
								<div class="row">
									<div class="col-md-4 col-sm-6 col-xs-12">
										<div class="form-group">

											<lable name="userName" class="control-lable">First
											Name</lable>
											<input type="text" name="userName" class="form-control"
												tabindex="11">
										</div>
									</div>
									<div class="col-md-4 col-sm-6 col-xs-12">
										<div class="form-group">
											<lable name="userName" class="control-lable">Middle
											Name</lable>
											<input type="text" name="middleName" class="form-control"
												tabindex="12">
										</div>
									</div>
									<div class="col-md-4 col-sm-6 col-xs-12">
										<div class="form-group">
											<lable name="userName" class="control-lable">Last
											Name</lable>
											<input type="text" name="lastName" class="form-control"
												tabindex="13">
										</div>
									</div>
									<div class="col-md-4 col-sm-6 col-xs-12">
										<div class="form-group">
											<lable class="control-lable">Date Of Birth</lable>
											<div class="input-group date" id="dob">
												<input type="text" id="dateOfBirth" class="form-control"
													data-bv-date="true" data-bv-date-format="MM/DD/YYYY"
													data-bv-date-message="Invalid date of birth"> <span
													class="input-group-addon"> <i class="fa fa-calender"></i>
												</span>
											</div>
										</div>
									</div>
									<div class="col-md-4 col-sm-6 col-xs-12">
										<div class="form-group">
											<lable class="control-lable">Gender</lable>
											<select name="gender" tabindex="" class="form-control"
												style="width: 100%"
												class="select-basic select2-hidden-accessible"
												data-bv-nonempty="empty"">
												<option value>--Select--</option>
												<option value>Female</option>
												<option value>Male</option>
											</select> <span class="selection"></span> <span
												class="dropdown-wrapper" aria-hidden="true"></span>
										</div>
									</div>
									<div class="col-md-4 col-sm-6 col-xs-12">
										<div class="form-group">
											<lable class="control-lable">Country</lable>
											<select name="country" tabindex="-1"
												class="select-basic select2-hidden-accessible"
												data-bv-nonempty="empty" style="width: 100%">
												<option value>--Choose Country--</option>
												<option value="india">India</option>
												<option value="america">America</option>
												<option value="australia">Australia</option>
												<option value="london">London</option>
												<option value="paris">Paris</option>
												<option value="newYork">New-York</option>
												<option value="egypt">Egypt</option>
												<option value="france">France</option>
												<option value="germany">Germany</option>
											</select> <span class="selection"></span>
										</div>
									</div>
									<div class="col-md-4 col-sm-6 col-xs-12">
										<div class="form-group">
											<lable class="control-lable">Phone</lable>
											<input type="text" name="phone" class="form-control"
												tabindex="2">
											<div class="container row">(999)999-9999</div>
										</div>
									</div>
									<div class="col-md-4 col-sm-6 col-xs-12">
										<div class="form-group">
											<lable class="control-lable">Phone + Ext</lable>
											<input type="text" name="phoneExt" class="form-control"
												tabindex="2">
											<div class="container row">(999)999-9999-99</div>
										</div>
									</div>
									<div class="col-md-4 col-sm-6 col-xs-12">
										<div class="form-group">
											<lable class="control-lable">Email</lable>
											<input type="text" name="email" class="form-control"
												tabindex="9">
										</div>
									</div>
									<div class="col-md-5 col-sm-6 col-xs-12">
										<div class="form-group">
											<lable class="control-lable">Address</lable>
											<textarea name="address" rows="5" cols="10" tabindex="10"
												class="form-control">
											</textarea>
										</div>
									</div>
									<div class="row">
										<div class="col-md-4 col-sm-6 col-xs-12">
											<div class="form-group">
												<lable name="userName" class="control-lable">Username</lable>
												<input type="text" name="userName" class="form-control"
													tabindex="11">
											</div>
										</div>
										<div class="col-md-4 col-sm-6 col-xs-12">
											<div class="form-group">
												<lable name="userName" class="control-lable">Password</lable>
												<input type="password" name="userName" class="form-control"
													tabindex="12">
											</div>
										</div>
										<div class="col-md-4 col-sm-6 col-xs-12">
											<div class="form-group">
												<lable name="userName" class="control-lable">Confirm
												Password</lable>
												<input type="password" name="userName" class="form-control"
													tabindex="13">
											</div>
										</div>
										<div class="col-md-4 col-sm-6 col-xs-12">
											<div class="form-group">
												<lable name="userName" class="control-lable">User
												Role</lable>
												<select name="gender" tabindex="" class="form-control"
													style="width: 100%"
													class="select-basic select2-hidden-accessible"
													data-bv-nonempty="empty"">
													<option value>--Select--</option>
													<option value>Admin</option>
													<option value>User</option>
												</select> <span class="selection"></span> <span
													class="dropdown-wrapper" aria-hidden="true"></span>
											</div>
										</div>
									</div>
								</div>
							</div>

						</div>
					</div>
				</div>
			</div>
			<!-- /#page-wrapper -->
		</div>

		<script
			src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
		<script
			src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
		<script>
			$(function() {
				$('[data-toggle="tooltip"]').tooltip();
				$(".side-nav .collapse")
						.on(
								"hide.bs.collapse",
								function() {
									$(this).prev().find(".fa").eq(1)
											.removeClass("fa-angle-right")
											.addClass("fa-angle-down");
								});
				$('.side-nav .collapse')
						.on(
								"show.bs.collapse",
								function() {
									$(this).prev().find(".fa").eq(1)
											.removeClass("fa-angle-down")
											.addClass("fa-angle-right");
								});
			})
			$("#menu-toggle").click(function(e) {
				e.preventDefault();
				$("#wrapper").toggleClass("active");
			});
		</script>
</body>
</html>
