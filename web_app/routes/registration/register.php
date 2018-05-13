<?php
include('../../partials/connectivity/connectivity.php');
if($_POST['password']==$_POST['password2']){

  $pass=hash('sha256',$_POST['password']);
 
 
$sql="INSERT INTO login (email,password,Name,phno,address)
VALUES
('$_POST[email]','$pass','$_POST[name]','$_POST[phno]','$_POST[address]')";
if (!mysqli_query($con,$sql))
  {
  die('Error: ' . mysqli_error($con));
  }
echo "<h2>registered successfully</h2>";
session_start();
$_SESSION['email']=$_POST[email];
header("location:add_device.html");

 
mysqli_close($con);
}

else{
?>

	<!DOCTYPE html>
    <html lang="en" >
    <head>
    <meta charset="UTF-8">
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
	</head>
	<body>
		<div class="alert alert-danger">
    	<strong>Error!</strong> Passwords do not match!
  		</div>
	</body>
  </html>

<?php
}
?>
