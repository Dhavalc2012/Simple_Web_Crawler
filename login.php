<?php
session_start();
?>
<?php 
include_once "connect.php" ;
?> 
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
</style>
<html>
<head><title>LOGIN</title>


<link href='http://fonts.googleapis.com/css?family=Oswald:400,700' rel='stylesheet' type='text/css'>
</head>
<body>
<div>
<form action="#" method="POST">
	<h3>Login Page </h3>
	<?php 
if (!empty($_POST)) {
    // handle post data
   	//var_dump($_POST);
   	$password =$_POST['password'];
   	$username =$_POST['username'];
   	$password = md5($password);
   	//echo "Username:" . $username . "<Br>Password:" . $password ;

   
   //2. Perform database query
		$query ="SELECT * FROM `USER` where username = '{$username}' AND password = '{$password}'";
		$result= mysqli_query($connection, $query);
		 $row_cnt = mysqli_num_rows($result);
		// echo "ROW COUNT IS :"  .$row_cnt;
		if ($row_cnt == 1) {
		echo "Login Successful";
		$_SESSION["login"] = "true";
		$_SESSION["username"] = $username;
		include_once 'redirect.php';
		redirect_to('gui.php');
		}
		else 	{
		echo "<p>Please try valid username and valid password</p>";
		}
}
 ?>  
<span>Username:</span><input type="text" name="username" maxlength="10" required/><br>

<span>Password  :</span><input type="password" name="password" maxlength="10" required/></br>
<input type="submit" value="submit" class="button">
</form>
<p style="color:#555;text-align:center;">Don't have an account ? <a href="register.php">register here</a></p>
 </div>		
</body>
</html>
