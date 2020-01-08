


<!DOCTYPE html>
<html>

    <head>
        <meta charset="utf-8">
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>PLAYER INFORMATION</title>
       
    </head>
    <body>
        <h1>PLAYER INFORMATION</h1> 
        
<?php include 'Connection.php';

session_start(); 
$Pname = $_SESSION['name'];
$Pclub = $_SESSION['club'];

echo $_SESSION['name']."<br>";

$query = "SELECT * FROM players WHERE Name1 = '$Pname' AND Club = '$Pclub'";
$result = mysqli_query($conn, $query);
 
if($result == FALSE)
{
    echo "error while executing mysql: " . mysqli_error($conn);
}

if (mysqli_num_rows($result) > 0) 
{
   while($row = mysqli_fetch_assoc($result)){ 
        // echo "Age: " . $row["Age"]. "Country: " . $row["Country"]. "Rating: " . $row["Rating"]."Form: ". $row["Form"]."Release Clause: ".$row["Release_Clause"]. "<br>";
//while($row = mysqli_fetch_row($result))

    $Age = $row["Age"];
       $Country = $row["Country"];
       $Rating  = $row["Rating"];
       $Form = $row["Form"];
       $RC = $row["Release_Clause"];
       
       echo "Age : ".$Age. "<br>";
       echo "Country : ".$Country. "<br>";
       echo "Rating : ".$Rating. "<br>";
       echo "Form : ".$Form. "<br>";
       echo "Release Clause :".$RC. "<br>";
   }
}
//else{
     //echo "No such Record Present.". "<br>";
//}


   // $Jersey = $_POST['Jersey'];

    if(isset($_POST["go"]))
    {
      $result = mysqli_query($conn, "INSERT into message(Name, Interested_club, Current_club, Release_clause) values ('$Pname','Chelsea FC','$Pclub','$RC');");
    }
    // displaying information and sending message 
    
?>
			
                <form action="" method="POST">
                    <button type="submit" name="go">BUY NOW</button>
			    </form>
		

    </body>

</html>


    s