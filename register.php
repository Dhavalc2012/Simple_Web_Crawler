<?php 
include_once "connect.php" ;
?> 
<html>
<head><title>REGISTER</title>
<link href='http://fonts.googleapis.com/css?family=Oswald:400,700' rel='stylesheet' type='text/css'>
<style>
div {
	border:1px solid black;
	width: 480px;
	margin: 0 auto;
	box-shadow: 0 0 4px 2px;
	border-radius: 5px;

}
body {
	padding:10%;
}
form {
	width: 300px;
	margin: 0 auto;
}
input {
	border-radius: 5px;
	margin: 1em;
}
* {
	outline: 0;
}
.button {
 background: #078bde;
 color: #fff;
 padding: 1em;
 border: 0;
 cursor: pointer;


}
p {
	color: red;
}
h3 {
	text-align: center;
}
hX {
	color:green;
}
</style>
</head>
<body>
<div>
<form action="#" method="POST">
		<h3>Register Page </h3>

	<?php 
if (!empty($_POST)) {
    // handle post data
   	//var_dump($_POST);
   	$password =$_POST['password'];
   	$username =$_POST['username'];
   	$password = md5($password);
   //	echo "Username:" . $username . "<Br>Password:" . $password ;
   
   //2. Perform database query
		$query ="INSERT INTO USER (username,password)
		VALUES ('{$username}','{$password}')";
		$result= mysqli_query($connection, $query);
		if (mysqli_affected_rows($connection) == 1) {
		echo "<hX>Successful registered</hX>";
		}
		else 	{
		echo "<p>Please try new username and valid password</p>";
		}
}
 ?>  
 <br>
<span>Username:</span><input type="text" name="username" maxlength="10" required/><br>

<span>Password:</span><input type="password" name="password" maxlength="10" required/><br>
<input type="submit" value="submit" class="button">
</form>
<p style="color:#555;text-align:center;">Already have an account ? <a href="login.php">login here</a></p>

 </div>	
</body>
</html>
