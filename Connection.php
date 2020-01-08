<?php
//$servername = " ";
//$username = " ";
//$password = " ";
//$dbname = " "

// Create connection
//$conn = new mysqli($servername, $username, $password,$dbname);
$conn = mysqli_connect('localhost','root','sahil4398','proj');

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
} 
echo "";
?>