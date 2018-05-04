<!DOCTYPE html>
    <html lang="en" >
    <head>
    <meta charset="UTF-8">
    <title>STT Login</title>
    <meta name="viewport" content="width=device-width, initial-scale=1"><link href='https://fonts.googleapis.com/css?family=Roboto:400,700' rel='stylesheet' type='text/css'>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="../../styles/css/style.css">
    <style>
    	.switch {
  position: relative;
  display: inline-block;
  width: 60px;
  height: 34px;
}

.switch input {display:none;}

.slider {
  position: absolute;
  cursor: pointer;
  top: 0;
  left: 0;
  right: 0;
  bottom: 0;
  background-color: #ccc;
  -webkit-transition: .2s;
  transition: .2s;
}

.slider:before {
  position: absolute;
  content: "";
  height: 26px;
  width: 26px;
  left: 4px;
  bottom: 4px;
  background-color: white;
  -webkit-transition: .2s;
  transition: .2s;
}

input:checked + .slider {
  background-color: #4cd964;
}

input:focus + .slider {
  box-shadow: 0 0 1px #2196F3;
}

input:checked + .slider:before {
  -webkit-transform: translateX(26px);
  -ms-transform: translateX(26px);
  transform: translateX(26px);
}

.slider.round {
  border-radius: 34px;
}

.slider.round:before {
  border-radius: 50%;
}
</style>
</head>
<body>
  <nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      <a class="navbar-brand" href="#">StarTechTroopers</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        <li class="active"><a href="#">Home</a></li>
        <li><a href="../schedule/index.php">Scheduling</a></li>
        <li><a href="../analytics/index1.php">Analytics</a></li>
        <li><a href="../../routes/rooms/room.php">Rooms</a></li>
        <li><a href="../../routes/presets/index.html">Presets</a></li>
        <li><a href="#">Settings</a></li>
      </ul>
      <ul class="nav navbar-nav navbar-right">
        <li><a href="../../routes/login/logout.php"><span class="glyphicon glyphicon-user"></span>  Logout</a></li>
        <!--<li><a href="../../routes/login/login.php"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>-->
      </ul>
    </div>
  </div>
</nav>
</body>
<?php 
	include ('../../partials/connectivity/conn.php');
	session_start();
	if (isset($_SESSION['email'])) {
			
		
	$email=$_SESSION['email'];
  $location=$_POST['location'];
  //echo "$email";

	$result = mysqli_query($con, "SELECT device.deviceid,device.label FROM device,login where device.userid=login.id and login.email='$email' and device.loc='$location'") or die("Query fail :" .mysqli_error());
?>
<?php

	if ($result->num_rows > 0)
		{
?>

  <div class="list-wrapper">
  <ul class="list">      

<?php
			while($row = $result->fetch_assoc())
				{
				 
				 $_SESSION["deviceid"]=$row['deviceid'];
				  
?>
			 

        <li class="list-item">
          <div class="list-item__image">
        <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSgK-pwUPjjRcqKGTJzfJJyHXxXx6DgwA-BamLhMP6Vpq-ydDnm" alt="Thumbnail">
        </div>
      <div class="list-item__content">
<?php
          echo"<h4>". $row['label']."</h4>"; 
?>

        </div>
        <div class="list-item__image">
          <label class="switch">
        <input  id="<?php echo $_SESSION['deviceid'];?>" type="checkbox" onclick="toggle_status(this);">
        <span class="slider round"></span>
        </label>
        </div>
        </li>
<?php	
				 
	    		}
		}
	else {
			echo"no results";
			}
?>
 </ul>
    </div>
    </html>
      <div class="user">
      <form class="for1">
        <input class="btn" type="button" value="Add device" onclick="window.location.href='../add_device/add_device.html'"/>
        </form>
      </div>

<script>
	function post_api(id, pass) {
  var xhttp;
  xhttp = new XMLHttpRequest();
  xhttp.open("POST", "../../partials/button/api_call.php?state="+pass+"&id="+id, true);
  xhttp.send();   
  }

  function toggle_status(cbox) {
    if (cbox.checked==true) {
      post_api(cbox.id, 'true');
    } else {
      post_api(cbox.id, 'false');
    }
  }
</script>
<?php
}
 
else{
	header('location:../login/login.php');
}
?>