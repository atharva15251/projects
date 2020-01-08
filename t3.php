<?php include 'connection.php'                               ///incoming requests approval
        
$result = mysql_query($conn, "SELECT * from Message where Current_club = 'CHELSEA FC';");
    
  if (mysql_num_rows($result) > 0) 
 {
   while($row = mysql_fetch_assoc($result)){ 
        // echo "Age: " . $row["Age"]. "Country: " . $row["Country"]. "Rating: " . $row["Rating"]."Form: ". $row["Form"]."Release Clause: ".$row["Release_Clause"]. "<br>";
       $Name = $row["Name"];
       $iclub = $row["Interested_club"];
       $RC = $row["NewRC"];
       $wage  = $row["NewWage"];
       
          }
  }
    
?>

<!DOCTYPE html>
<html>

    <head>
        <meta charset="utf-8">
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>INCOMING REQUESTS</title>
       
    </head>
    <body>
	
			<ul> 
               <li>Name : <?php echo $name; ?></li> 
                <li>Interested Club : <?php echo $iclub; ?></li> 
                  
            </ul>
                <form action="" method="POST">
                    <button type="submit" name="go">AGREE</button>
			    </form>
		
    </body>

</html>



<?php include 'connection.php'
      
    if(isset($_POST["go"]))
    {
       $sql1 = mysql_query($conn,"UPDATE Player SET Club = $iclub  where name=$Pname;");
        $sql2 = mysql_query($conn,"UPDATE Player SET Release_Clause = $RC  where name=$Pname;");
        $sql3 = mysql_query($conn,"UPDATE Player SET Wage = $wage  where name=$Pname;");
    }
    
?>    
    
    