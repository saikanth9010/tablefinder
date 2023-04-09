<!-- manage-insert.php -->
<?php 
session_start();
include_once 'dbCon.php';
$con = connect();
	if (isset($_POST['regasres'])){
        
        $email = $_POST['email'];
		$x=1;
		// Given password
		while($x>0){
		$password = $_POST['password'];

		// Validate password strength
		$uppercase = preg_match('@[A-Z]@', $password);
		$lowercase = preg_match('@[a-z]@', $password);
		$number    = preg_match('@[0-9]@', $password);
		$specialChars = preg_match('@[^\w]@', $password);

		if(!$uppercase || !$lowercase || !$number || !$specialChars || strlen($password) < 8) {
			echo '<script> alert ("Password should be at least 8 characters in length and should include at least one upper case letter, one number, and one special character.")</script>';
			echo '<script>window.location="register.php"</script>';
		}else{
			//echo 'Strong password.';
			$x=0;
		}}
	
        $password = md5($_POST['password']);
        $role = 1;

        // existing email chaeck
        $checkSQL = "SELECT * FROM `restaurant_info` WHERE email = '$email';";
        $checkresult = $con->query($checkSQL);
        if ($checkresult->num_rows > 0) {
			$iquery= "UPDATE `restaurant_info` SET `password` = '$password' WHERE `email` = '$email';";

			        	if ($con->query($iquery) === TRUE) {
			        		echo '<script>alert("Your password changed successfully")</script>';
			        		echo '<script>window.location="login.php"</script>';
			        	}else {
			                echo "Error: " . $iquery . "<br>" . $con->error;
			            }
					}
                    else{
                        echo '<script>alert("not successfully")</script>';
                    }
				}
                
                ?>