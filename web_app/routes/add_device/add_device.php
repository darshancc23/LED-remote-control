<?php 
include '../../partials/connectivity/conn.php';
session_start();
$email=$_SESSION['email'];
$result = mysqli_query($con, "SELECT login.id from login where login.email='$email'") or die("Query fail :" .mysqli_error());
$row = mysqli_fetch_array($result);
$DeviceId=$_POST['DeviceId'];
$UserId=$row['id'];
$Location=$_POST['Location'];
$fav=$_POST['favourite'];
$Label=$_POST['Label'];
$sql="INSERT INTO device (userid,deviceid,fav,label,loc)
VALUES ($UserId,$DeviceId,$fav,'$Label','$Location')";
if (!mysqli_query($con,$sql))
  {
  die('Error: ' . mysqli_error($con));
  }
mysqli_close($con);
echo"yayy";
header('location:../rooms/room.php')

?>