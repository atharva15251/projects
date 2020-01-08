<?php
//require('../config/db.php');
//require('../config/config.php');
session_start();
$errors=array();
$perror="";
$uerror="";
$eerror="";
$pherror="";
$passerror="";

if(isset($_POST['register_btn']))  {
	$username = mysqli_real_escape_string($conn,$_POST['Username']);
	$phno = mysqli_real_escape_string($conn,$_POST['phno']);
	$email = mysqli_real_escape_string($conn,$_POST['email']);
	$password = mysqli_real_escape_string($conn,$_POST['Password']);
	$confirmpass = mysqli_real_escape_string($conn,$_POST['Confirmpass']);


	$user_check_query = "SELECT * FROM clogin WHERE cphno='$phno' LIMIT 1";
  	$result = mysqli_query($conn, $user_check_query);
  	$user = mysqli_fetch_assoc($result);

  	if (empty($username)) { $uerror="Username is required"; }
  	if (empty($phno)) { $pherror="Phone Number is required"; }
  if (empty($email)) { $eerror="Email is required"; }
  if (empty($password)) { $passerror="Password is required"; }
  
	if ($user) { 																					// if user exists
	    if ($user['phno'] == $phno) {
	      array_push($errors, "Phone Number Already Exists");
	    }

	    // if ($user['email'] == $email) {
	    //   array_push($errors, "E-Mail Already Exists");
	    // }
	}
	if($password == $confirmpass){
		if(count($errors)==0 && $uerror=="" && $pherror=="" && $eerror=="" && $passerror==""){
		$password = md5($password);  //Hash Password before storing for security purpose
		//$password = $password;
		$sql ="INSERT INTO login(cphno,cpassword) VALUES('$phno','$password');INSERT INTO customer(cusername,cphno,cemail) VALUES('$username','$phno','$email');";
		// $sql .= "INSERT INTO customer(cusername,cphno,cemail) VALUES('$username','$phno','$email');";
		mysqli_multi_query($conn,$sql);
		header('location: '.ROOT_URL.'');   //Jump to page after successful login;	
		}
		
	}else{
		
		$perror="Passwords did not match";

	}
}


?>

<!DOCTYPE html>
<html>
<head>
	<title>User Registration</title>
	<link rel="stylesheet" href="style.css">
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
</head>
<body>
	<div class="row">
	<div class="col-md-6"></div>
	<div class="col-md-6">
	<div class="jumbotron">
	<div id="containerIntro">
	<h1 class="display-4">Register</h1>
	<p style="padding-left:140px;" class="lead"><a href="../">Back to home</a></p>
	</div><hr class="my-4">
	<form method="post" action="rform.php">
	<?php include('errors.php'); ?>	
			<div class="form-group"><label>Name:</label>  * <?php echo $uerror; ?><input type="text" name="username" class="form-control" placeholder="Enter your Name"></div>
			<div class="form-group"><label>PhoneNumber:</label>  * <?php echo $pherror; ?><input type="text" name="phno" class="form-control" placeholder="Enter your Phone Number"></div>
			<div class="form-group"><label>E-Mail Id:</label>  * <?php echo $eerror; ?><input type="email" name="email" class="form-control" placeholder="Enter your E-Mail ID"></div>
			<div class="form-group"><label>Password:</label>  * <?php echo $passerror; ?><input type="Password" name="password" class="form-control" placeholder="Enter Password" value=""></div>
			<div class="form-group"><label>Confirm Password:</label>  * <?php echo $perror; ?><input type="Password" name="confirmpass" class="form-control" placeholder="Confirm Password" value=""></div>
			<input type="submit" name="register_btn" value="Register" class="btn btn-info">
	</form>
	<hr class="my-4">	
	<p class="lead">Already have an Account?<a href="../clogin/login.php">Login</a></div>
</div>
</div>
</div>
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
</body>
</html>