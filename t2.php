

<?php include 'connection.php';

session_start(); 
$Pname = $_SESSION['Name1'];
$Pclub = $_SESSION['Club'];

$result = mysql_query($conn, "SELECT * from Players where Name = $Pname and Club = $Pclub;");
    
if (mysql_num_rows($result) > 0) 
{
   while($row = mysql_fetch_assoc($result)){ 
        // echo "Age: " . $row["Age"]. "Country: " . $row["Country"]. "Rating: " . $row["Rating"]."Form: ". $row["Form"]."Release Clause: ".$row["Release_Clause"]. "<br>";
       $Age = $row["Age"];
       $Country = $row["Country"];
       $Rating  = $row["Rating"];
       $Form = $row["Form"];
       $RC = $row["Release_Clause"];
   }
}                                                                             // displaying information and sending message 
    
?>


<!DOCTYPE html>
<html>

    <head>
        <meta charset="utf-8">
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>PLAYER INFORMATION</title>
       
    </head>
    <body>
	
			<ul> 
               <li>Name : <?php echo $Pname; ?></li> 
                <li>Club : <?php echo $Pclub; ?></li> 
                <li>Age : <?php echo $Age; ?></li> 
                <li>Country : <?php echo $Country; ?></li> 
                <li>Rating : <?php echo $Rating; ?></li> 
                <li>Form : <?php echo $Form; ?></li> 
                <li>Release Clause : <?php echo $RC; ?></li> 
                
            </ul>
                <form action="" method="POST">
                    <div>
					 <label for="RC">Enter Proposed Release Clause :</label>
					 <input type="number" name="RC" id="RC">
				   </div>
				<div>
					<label for="Wage">Enter Proposed Wage</label>
					<input type="number" name="Wage" id="Wage">
				</div>
                    <button type="submit" name="go">BUY NOW</button>
			    </form>
		

    </body>

</html>

<?php include 'connection.php'
        
        session_start();
    $wage = $_POST['Wage'];
    $RC  =$_POST['RC'];

    if(isset($_POST["go"]))
    {
      $result = mysql_query($conn, "INSERT into Message(Name, Interested_club, Current_club, NewRC , NewWage) values ($_SESSION['Name1'],'CHELSEA FC',$_SESSION['Club'],$RC,$wage);");
    }
    
?>    
    