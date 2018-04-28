<?php
$server = "server_ip_address"; //Host IP os Server IP address of MySQL server
$username = "username"; //Username of MySQL server
$password = "password"; //Password of MySQL server
$database = "database"; //Name of the database in the MySQL server

$con = mysqli_connect($server,$username,$password,$database);
if(! $con)
{
?>
 	<!DOCTYPE html>
    	<html lang="en" >
    	<head>
    	<meta charset="UTF-8">
    	<link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
	</head>
	<body>
		<div class="alert alert-danger">
    		<strong>Error!</strong> Can't Connect to Database!
  		</div>
	</body>
  </html>

<?php
}
?>
