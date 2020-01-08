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
$conn = mysqli_connect('localhost','root','sahil4398','proj');
$error="";
if (isset($_POST['submit'])) {
	//$ID=$_POST['ID'];
	if(empty($_POST['Username']) ||empty($_POST['Password'])){
	//$Email=$_POST['Email'];
	/*$error="invalid";
	echo $error;*/
	header("location:signin.php");
	}	
//$Password2=mysql_real_escape_string($_POST['Password2']);
	else{
	//if ($Password==$Password2) 
	 $Username=$_POST['Username'];
	 $Password=$_POST['Password'];
	 
	//	$Password=md5($Password);
		//$sql="INSERT INTO manager(ID,Username,Email,Password)VALUES('$ID',$Username','$Email','$Password')";
		
		//$db=mysqli_query($conn,"test");
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
			if($result['Username'] == $Username AND $result['Password'] == $Password)
			{
		        //header("location:$result['Club']");
		        if($result['Club'] == 'Chelsea FC')
		        {
		            header("location:chelsea/cfcteam.php");
		   
		         }
		         elseif ($result['Club'] == 'Manchester United FC') {
		         	
		         	header("location:Manchester/manu.html");
		         }
		         elseif ($result['Club'] == 'Juventus FC') {
				header("location:Juve/Juve.html");
			}
			elseif ($result['Club'] == 'FC Bayern Munchen') {
				header("location:Bayern/bayteam.html");
			}
			
			elseif ($result['Club'] == 'FC Barcelona') {
				header("location:Barcelona/barcateam.html");
			}
			}
			else
	{
	?>
<CENTER><h3 style="color: red;">INVALID PASSWORD OR USERNAME</h3></CENTER>

			<?php
			}
			
/*
			elseif ($result['Username'] == $Username) {
				header("location:Manchester/manu.html");
			}//($result['Username'] == "mourinho")
			elseif ($result['Username'] == $Username) {
				header("location:Juve/Juve.html");
			}
			elseif ($result['Username'] == $Username) {
				header("location:Bayern/bayteam.html");
			}
			elseif ($result['Username'] == $Username) {
				header("location:Barcelona/barcateam.html");
			}*/
				
	}
	else
	{
		
	
	?>

<CENTER><h3 style="color: red;">ENTER CORRECT PASSWORD AND USERNAME</h3></CENTER>
<CENTER>
<button><a class="page-scroll" onclick="window.location.href='http://localhost/abc/signin.php'">LOGIN</a></button>
</CENTER>

	<?php

		
						?>

			<div>
				<center>
					

<!--<h2>JavaScript Confirm Box</h2>-->



				
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
