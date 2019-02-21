<!doctype html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<style>
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
</style>
</head>
<body>
	<div class="container-fluid">
		<div class="row">
			<div class="col-8">
				<div class="panel panel-heading">
					<div class="panel-heading">
						<h3>General</h3>
					</div>
					<div class="panel-body">
						<div class="row">
							<div class="col-md-4 col-sm-6 col-xs-12">
								<div class="form-group">
									<lable name="userName" class="control-lable">First Name</lable>
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
									<lable name="userName" class="control-lable">Last Name</lable>
									<input type="text" name="lastName" class="form-control"
										tabindex="13">
								</div>
							</div>
						</div>
						<div class="row">
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
									</select> <span class="selection"></span> <span class="dropdown-wrapper"
										aria-hidden="true"></span>
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
									</select> 
									<span class="selection"></span>
								</div>
							</div>
						</div>
						<div class="row">
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
						</div>
						<div class="row">
							<div class="col-md-4 col-sm-6 col-xs-12">
								<div class="form-group">
									<lable class="control-lable">Email</lable>
									<input type="text" name="email" class="form-control"
										tabindex="9">
								</div>
							</div>
							<div class="col-md-4 col-sm-6 col-xs-12">
								<div class="form-group">
									<lable class="control-lable">Address</lable>
									<textarea name="address" rows="5" cols="10" tabindex="10"
										class="form-control">
								</textarea>
								</div>
							</div>
						</div>
						<div class="row" ::before>
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
						</div>
						<div class="row" ::before>
							<div class="col-md-4 col-sm-6 col-xs-12">
								<div class="form-group">
									<lable name="userName" class="control-lable">User Role</lable>
									<select name="gender" tabindex="" class="form-control"
										style="width: 100%"
										class="select-basic select2-hidden-accessible"
										data-bv-nonempty="empty"">
										<option value>--Select--</option>
										<option value>Admin</option>
										<option value>User</option>
									</select> <span class="selection"></span> <span class="dropdown-wrapper"
										aria-hidden="true"></span>
								</div>
							</div>
						</div>  <!-- row ended -->
					</div>
				</div>
			</div>
			<div class="col-md-4">
				<div class="panel panel-heading">
					<div class="panel-heading">
						<h3 class="panel-title">Photo</h3>
						<p class="panel-subtitle"></p>
					</div>
					<div class="panel-body">
						<div id="pic">
							<div class="row">
								<div class="col-md-12">
									<div id="divPreviewPhoto" class="text-center" style="display: none;">
										<center style="border: 2px solid #e6e6e6; padding: 10px 10px;">
											<img src="" id="imgsrc" class="img-responsive" style="height: 180px; width: 170px;">
										</center><br>
										<input type="button" class="btn btn-default btn-sm" value="Change Photo" onclick="uploadPhoto();">
									</div>
								</div><!-- col-md-12 -->
							</div><!-- row -->
							<div class="row">
								<div class="col-md-12">
									<div id="divUploadPhoto">	
										<label class="control-label">Acceptable image formats are jpg, jpeg, png & gif. </label><br>
										<label class="control-label">Maximum image size allowed is 2MB. </label><br>
										<div class="dropify-wrapper">
											<div class="dropify-message">
												<span class="file-icon">
													<p>Click here to choose file</p></span>
													<p class="dropify-error">Oop's something went wrong</p>												
											</div>
											<div class="dropify-loader"></div>
											<div class="dropify-errors-container">
												<ul></ul>
											</div>
											<input type="file" id="chooseImageFile">
										</div>
									</div>
								</div>
							</div>
						</div> <!-- id=pic  -->
					</div><!--panel body  -->
				</div><!-- panel panel-heading end -->
			</div><!--md-4 end  -->
		</div>
	</div>
</body>
</html>

