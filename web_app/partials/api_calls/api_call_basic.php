<?php

$device = 'device'; // the device id
$user = 'user'; // your user id
$resource = 'resource'; // your resource name like 'led', 'relay', and so on.
$authorization = 'authToken'; // a device access token for controlling all or this resource only
$state = ($_GET['state']=='true')?true:false; // turns on or off the led

$url = "https://api.thinger.io/v2/users/{$user}/devices/{$device}/{$resource}?authorization={$authorization}";

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