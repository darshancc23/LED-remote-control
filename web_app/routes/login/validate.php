<?php
include('../../partials/connectivity/connectivity.php');
if(isset($_POST['submit'])){
        $email=$_POST['username'];
        $pass=hash('sha256',$_POST['password']);

    
        $result = mysqli_query($con,"SELECT email, password FROM login WHERE email= '$email'");
        $row = mysqli_fetch_array($result);
        

        if($email==$row['email'] and $pass==$row['password']){
            setcookie('email',$email,time()+60*60*24*7);
            setcookie('password',$pass,time()+60*60*24*7);
            header("location:../room_manager/room.php");
            session_start();
         $_SESSION['email']=$email;
        
        }
    
        else{
        echo "wrong password";
        }

    }
    else{
        echo "not logged in";
    }
    
    

?>