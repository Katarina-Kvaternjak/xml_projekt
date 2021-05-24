<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <title>Login</title>
        <style>
            form{
                background-color:#7be8d0;
                margin:5% auto;
                width: 50%;
                padding:3%;
                text-align:center;
                border:1px solid black;
            }
            input{
                margin:1%;
            }
            .err{
                text-align:center;
                color:red;
                border:1px solid red;
                margin:5% auto;
                width: 50%;
                padding:2%;
                font-size:18px;
            }
        </style>
    </head>
    <body>
        <form method="POST" action="login.php">
            <label for="user">Username:</label><br>
            <input type="text" id="user" name="user"><br>

            <label for="pass">Password:</label><br>
            <input type="password" name="pass" id="pass">
            
            <div id="hint">*Prijavite se sa username admin i password admin</div>
            <input type="submit" value="Login">
        </form>
    </body>
</html>
<?php        
    $check=true;
	if (isset($_POST['user'],$_POST['pass'])){
		$user=$_POST['user'];
		$pass=$_POST['pass'];
		$xml=simplexml_load_file("admin.xml");

		foreach ($xml->User as $admin) {
			$userXml = $admin->Username;
			$passXml = $admin->Password;
			if($user==$userXml && $pass==$passXml){
				header('Location: zaposlenici.html');
			}else{
                $check=false;
            }
		}
        if($check==false){
            echo "<div class='err'>Pogrešan unos!</div>";
        }

	}
?>