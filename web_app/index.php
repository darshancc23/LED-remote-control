    <!DOCTYPE html>
    <html lang="en" >
    <head>
    <meta charset="UTF-8">
    <title>LED-remote</title>
    <meta name="viewport" content="width=device-width, initial-scale=1"><link href='https://fonts.googleapis.com/css?family=Roboto:400,700' rel='stylesheet' type='text/css'>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link rel="stylesheet" href="styles/css/style.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    </head>
    <body>
        <div class="user">
            <header class="user__header">
            <img src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/3219/logo.svg" alt="LRC logo" />
            <h1 class="user__title">Welcome to LRC</h1>
            </header>

            <form class="form" method="POST" action="routes/login/validate.php">
            
            <div class="form__group">
            <input type="email" placeholder="Email" name="username" class="form__input" id="username" required="required" />
            </div>

            <div class="form__group">
            <input type="password" placeholder="Password" name="password" class="form__input" id="password" required="required" />
            </div>

            <button class="btn btn-4" type="submit" id="submit" name="submit">Login</button>
            </form>

            <form class="for1">
            <input class="btn btn-4" type="button" value="Sign up" onclick="window.location.href='routes/registration/register.html'"/>
            </form>

            </form>
       </div>

    
	
    <?php
        if(isset($_COOKIE['email'])and isset($_COOKIE['password'])){
        $email=$_COOKIE['email'];
        $pass=$_COOKIE['password'];
        echo"<script>
        document.getElementById('username').value='$email';
        document.getElementById('password').value='$pass';
        </script>";
        header("location:routes/room_manager/room.php");
        }
    ?>
    

       
        <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
        <script  src="styles/js/index.js"></script>
    </body>
    </html>

    