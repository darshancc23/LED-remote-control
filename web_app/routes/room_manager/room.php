<!DOCTYPE html>
<html lang="en" >

<head>
  <meta charset="UTF-8">
  <title>Room Manager</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/meyer-reset/2.0/reset.min.css">
    

  
      <link rel="stylesheet" href="css/style.css">
      <link rel="stylesheet" href="../../styles/css/style.css">
      <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
  </head>
<?php 
	include ('../../partials/connectivity/connectivity.php');
	session_start();
	if (isset($_SESSION['email'])) {
			
		
	$email=$_SESSION['email'];
	$result = mysqli_query($con, "SELECT DISTINCT loc FROM device,login  WHERE device.userid=login.id and login.email='$email'" ) or die("Query fail :" .mysqli_error());
?>
<?php

	if ($result->num_rows > 0)
		{
			?>
			<div class="expanding-grid">
				<ul class="links">
					<?php
			while($row = $result->fetch_assoc())
				{
					//echo $row['loc'];
					$_SESSION['loc']=$row['loc'];

				?>
				<li>
				<a href="#"><?php echo $_SESSION['loc'];?></a>
				<form action="../device_manager/device.php" method="post">
				<button
				 type="submit" class="btn btn-info" value="<?php echo $_SESSION['loc'];?>" id="location" name="location"><?php echo $_SESSION['loc'];?>
				 </button>
				</form>
				</li>
				
				<?php
				
			}
		}
		else
		{
			echo "NO ROOMS";
		}
	} else {
		header('location:../login/login.php');
	}

		?>
				</ul>
				</div>