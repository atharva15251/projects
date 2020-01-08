<?php


session_start();
$admin_name = $_SESSION["admin_name"];
$admin_email = $_SESSION["admin_email"];
$admin_club = $_SESSION["admin_club"];
$admin_gender = $_SESSION["admin_gender"];
$admin_password = $_SESSION["admin_password"];
$admin_age = $_SESSION["admin_age"];

$mysqli = mysqli_connect('localhost', 'root', 'sahil4398','proj');

// Check connection
if (mysqli_connect_errno()) {
	echo "failed to connect".mysqli_connect_errno();
   }?>



<!DOCTYPE html>
<html>
<head>
	<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<title>Admin Panel</title>

<link rel="stylesheet" type="text/css" href="https://bootswatch.com/4/solar/bootstrap.min.css">
<style>
div.b {
    position: absolute;
    top: 290px;
    left: 50px;
    width: 100px;
    height: 120px;
    
} 

a {
    text-decoration: none;
    display: inline-block;
    padding: 8px 16px;
}

a:hover {
    background-color: #ddd;
    color: black;
}

.previous {
    background-color: #f1f1f1;
    color: black;
}

.next {
    background-color: #4CAF50;
    color: white;
}

.round {
    border-radius: 50%;
}
</style>
</head>
<body>





 <?php

 $sql ="UPDATE user
SET Name = '$admin_name', Username= '$admin_email', Password= '$admin_password' , Age='$admin_age'
WHERE Club = '$admin_club'";
$result = $mysqli->query($sql);

//if ($result->num_rows == TRUE) {
//echo "Update Successful";
//}


$search_sql="SELECT * FROM user";
  $search_query=mysqli_query($mysqli,$search_sql);
  if (mysqli_num_rows($search_query)!=0) {
  	
 
  $search_rs=mysqli_fetch_assoc($search_query);
}


?>

<div >
<h2>Updated Club Manager : <br><br><br>
 	
 <h3>Name : <?php echo $_SESSION["admin_name"]; ?></h3>
 <h5> Age : <?php echo $_SESSION["admin_age"]; ?><br>Club : <?php echo $_SESSION["admin_club"]; ?><br> Mail-Id : <?php echo $_SESSION["admin_email"]; ?> 
 
 	
 </h5> 

</div>


</body>
</html>