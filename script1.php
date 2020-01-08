<?php include 'Connection.php';
session_start(); // Starting Session
$error=''; // Variable To Store Error Message
if (isset($_POST['go'])) 
{
   
// Define $username and $password
           $name=$_POST['name'];
           $club=$_POST['club'];
// Establishing Connection with Server by passing server_name, user_id and password as a parameter
           $name = stripslashes($name);
           $club = stripslashes($club);
           //$name = mysql_real_escape_string($name);
           //$club = mysql_real_escape_string($club);
    
    $_SESSION['name'] = $name;
    $_SESSION['club'] = $club;

    header("location: display1.php");
    
           
   mysql_close($connection); // Closing Connection
}

?>