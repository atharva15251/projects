<!DOCTYPE html>
<html>
<head>
	<title>MANAGER MODE</title>
</head>
<body>
	<style>
		/*div{
			color: black;

		}*/
		/*.container{
			 width: 500px;
    height: 40px;
    background: white;
    color: #fff;
    top: 50%;
    right: 0%;
    position: absolute;
    transform: translate(-50%,-50%);
    box-sizing: border-box;
    padding: 70px 30px;
		}*/
	</style>
	<?php

$error="";
if (isset($_POST['submit'])) {
	//$ID=$_POST['ID'];
	if(empty($_POST['Username']) ||empty($_POST['Password'])){
	//$Email=$_POST['Email'];
	$error="invalid";
	echo $error;
	}	
//$Password2=mysql_real_escape_string($_POST['Password2']);
	else{
	//if ($Password==$Password2) 
	 $Username=$_POST['Username'];
	 $Password=$_POST['Password'];
	//	$Password=md5($Password);
		//$sql="INSERT INTO manager(ID,Username,Email,Password)VALUES('$ID',$Username','$Email','$Password')";
		$conn = mysqli_connect('localhost','root','sahil4398','proj');
		$db=mysqli_query($conn,"test");
		$query=mysqli_query($conn,"SELECT * FROM user WHERE Password='$Password' AND Username='$Username'");
		//$_SESSION['message']="LOGGED IN";
		//$_SESSION['Username']="$Username";
		$result = mysqli_fetch_assoc($query);
		$rows=mysqli_num_rows($query);
		if($rows==1)
		{
			//session_start();
			//$_SESSION['Username'] = $result['Username'];
			//$user = $_SESSION['Username'];
			if($result['Username'] == "admin@email.com"){
			
			if($result['Password']=='7777')
			{
				header("location:chelsea/admin.php");	
			}
		}

			/*elseif ($result['Username'] == "Mou@email.com") {
				header("location:Manchester/manu.html");
			}//($result['Username'] == "mourinho")
			elseif ($result['Username'] == "Allegri@email.com") {
				header("location:Juve/Juve.html");
			}
			elseif ($result['Username'] == "Kovac@email.com") {
				header("location:Bayern/bayteam.html");
			}
			elseif ($result['Username'] == "Ernesto@email.com") {
				header("location:Barcelona/barcateam.html");*/
			}
				
	
	else
	{
			?>
			<CENTER><h4 style="color:white ;">ENTER CORRECT PASSWORD AND USERNAME</h4></CENTER>
			<div>
				<center>
					

<!--<h2>JavaScript Confirm Box</h2>-->
<!--<div class="container">
INVALID PASSWORD OR USERNAME
</div>-->
				
				</center>
			</div>
			
<?php		//$error="Invalid Username or Password";
		//echo $error;
	}
mysqli_close($conn);
}
}



?>

</body>
</html>
