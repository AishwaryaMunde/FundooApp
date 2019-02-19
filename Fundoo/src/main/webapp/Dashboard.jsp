<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <link rel='stylesheet' href='https://use.fontawesome.com/releases/v5.7.0/css/all.css' integrity='sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ' crossorigin='anonymous'>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js"></script>
  <script>
  function openNav() {
    document.getElementById("sidebar").style.width = "250px";
    document.getElementById("navbarTogglerDemo01").style.marginLeft = "250px";
  }

  function closeNav() {
    document.getElementById("mySidebar").style.width = "0";
    document.getElementById("navbarTogglerDemo01").style.marginLeft= "0";
  }
  </script>
  	
  <style>
  body {
    position: relative;
    height: 100%
  }
  ul.nav-pills {
    top: 10px;
    position: fixed;
  }
  div.col-8 div {
    height: 500px;
  }
  .nav-item dropdown{
  	float: right; 
  }
  .sidenav {
  height: 100%;
  width: 160px;
  position: fixed;
  z-index: 1;
  top: 0;
  left: 0;
  background-color: #111;
  overflow-x: hidden;
  padding-top: 20px;
}

.sidenav a {
  padding: 6px 8px 6px 16px;
  text-decoration: none;
  font-size: 25px;
  color: #818181;
  display: block;
}

.sidenav a:hover {
  color: #f1f1f1;
}

.main {
  margin-left: 160px; /* Same as the width of the sidenav */
  font-size: 28px; /* Increased text to enable scrolling */
  padding: 0px 10px;
}

@media screen and (max-height: 400px) {
  .sidenav {padding-top: 15px;}
  .sidenav a {font-size: 18px;}
}
.navbar {
	color: #ff5500;
}
body {
  font-family: "Lato", sans-serif;
}
.icon-bar {
  width: 90px;
  background-color: #555;
}

.icon-bar a {
  display: block;
  text-align: center;
  padding: 16px;
  transition: all 0.3s ease;
  color: white;
  font-size: 36px;
}

.icon-bar a:hover {
  background-color: #000;
}

.active {
  background-color: #000;
}
.sidebar {
  height: 100%;
  width: 0;
  position: fixed;
  z-index: 1;
  top: 0;
  left: 0;
  bottom:500px;
  background-color: #111;
  overflow-x: hidden;
  transition: 0.5s;
  padding-top: 60px;
}

.sidebar a {
  padding: 8px 8px 8px 32px;
  text-decoration: none;
  font-size: 17px;
  color: #818181;
  display: block;
  transition: 0.3s;
}

.sidebar a:hover {
  color: #f1f1f1;
}

.sidebar .closebtn {
  position: absolute;
  top: 0;
  right: 25px;
  font-size: 20px;
  margin-left: 50px;
}

.openbtn {
  font-size: 17px;
  cursor: pointer;
  background-color: #111;
  color: white;
  padding: 8px 10px;
  border: none;
}

.openbtn:hover {
  background-color: #444;
}

#main {
  transition: margin-left .5s;
  padding: 16px;
}

/* On smaller screens, where height is less than 450px, change the style of the sidenav (less padding and a smaller font size) */
@media screen and (max-height: 450px) {
  .sidebar {padding-top: 15px;}
  .sidebar a {font-size: 18px;}
}
</style>
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo01" aria-controls="navbarTogglerDemo01" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarTogglerDemo01">
  	<button class="openbtn" onclick="openNav()">☰</button>
    <a class="navbar-brand" href="#">User Management<i class='fas fa-chevron-circle-right'></i></a>
    <ul class="navbar-nav mr-auto mt-2 mt-lg-0">
    </ul>
    <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          admin
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
          <a class="dropdown-item" href="#">Profile</a> 
          <a class="dropdown-item" href="index.jsp">Logout</a>         
        </div>
      </li>
  </div>
</nav>

<div id="mySidebar" class="sidebar">
  <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">×</a>
  <nav id="sidebar">
        <!-- <div class="sidebar-header">
            <h2>Dashboard</h2>
        </div> -->
		  <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">×</a>
		   <a href="#">Dashboard</a>
		  <li class="active">
                <a href="#homeSubmenu" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle"><i class="fa fa-user">User</i></a>
                <ul class="collapse list-unstyled" id="homeSubmenu">
                    <li>
                        <a href="#">New User</a>
                    </li>
                    <li>
                        <a href="#">User List</a>
                    </li>
                </ul>
            </li>
		  <a href="#">Profile</a>
		  <a href="index.jsp">Logout</a>
		  </nav>
       </div>
      
<script>
function openNav() {
  document.getElementById("mySidebar").style.width = "200px";
  document.getElementById("main").style.marginLeft = "200px";
}

function closeNav() {
  document.getElementById("mySidebar").style.width = "0";
  document.getElementById("main").style.marginLeft= "0";
}
</script>
</body>
</html>
