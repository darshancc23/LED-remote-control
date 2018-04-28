<?php

include ('../connectivity/conn.php'); //Including connectivity file
 
$id=$_GET['id'];
$result = mysqli_query($con, "SELECT distinct devicecredentials.resource,devicecredentials.auth,devicecredentials.did from devicecredentials WHERE devicecredentials.Dev_Id=$id" ) or die("Query fail :" .mysqli_error());
$row = mysqli_fetch_array($result);
$device = $row['did'];
$user = 'username'; // Thinger username
$resource = $row['resource']; 
$authorization = $row['auth'];
$state = ($_GET['state']=='true')?true:false;
$host = server_ip_address // IP address of the server where Thinger is hosted

$url = "http://{$host}/v2/users/{$user}/devices/{$device}/{$resource}?authorization={$authorization}";

$data = array(
    'in' => $state
);
 
$options = array(
  'http' => array(
    'method'  => 'POST',
    'content' => json_encode( $data ),
    'header'=>  "Content-Type: application/json\r\n" .
                "Accept: application/json\r\n"
    )
);
 
$context  = stream_context_create( $options );
$result = file_get_contents( $url, false, $context );
$response = json_decode( $result );
?>