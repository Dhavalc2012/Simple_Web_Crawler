<?php
session_start();
?>
<!DOCTYPE html>
<html>
<body>

<?php
// remove all session variables
session_unset(); 

// destroy the session 
session_destroy(); 
include_once 'redirect.php';
		redirect_to('login.php');
?>

</body>
</html>