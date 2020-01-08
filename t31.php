
<!DOCTYPE html>
<html>

    <head>
        <meta charset="utf-8">
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>INCOMING REQUESTS</title>
       
    </head>
    <body>
            <h1>INCOMING REQUEST APPROVAL</h1> 
                <?php include 'Connection.php';                               ///incoming requests approval
        
$query = "SELECT * FROM message WHERE Current_club = 'Chelsea FC' AND Acc = NULL;";    
$result = mysqli_query($conn, $query);
    
  if (mysqli_num_rows($result) > 0) 
 {
   while($row = mysqli_fetch_assoc($result)){ 
        // echo "Age: " . $row["Age"]. "Country: " . $row["Country"]. "Rating: " . $row["Rating"]."Form: ". $row["Form"]."Release Clause: ".$row["Release_Clause"]. "<br>";
       $Name = $row["Name"];
       $iclub = $row["Interested_club"];
       $RC = $row["Release_clause"];
       
       echo "Name : ". $Name . "<br>";
       echo "Interested Club : ". $iclub . "<br>";
       echo "Release Clause : ". $RC . "<br>";
           
    //  echo '<form action="" method="POST">';
    //          echo '<button type="submit" name="go">AGREE</button>';
    //    echo '</form>';


        if(isset($_POST["go"]))
       {
       $query = "UPDATE players SET Club = '$iclub' WHERE Name1= '$Name';";
           if (mysqli_query($conn, $query)) {
                echo "Record updated successfully";
           } else {
                echo "Error updating record: " . mysqli_error($conn);
           }

        $sql4 = mysqli_query($conn,"UPDATE Message SET Acc = 1 WHERE name = '$Name';");
        }
    
    
          }
  }

 /*if(isset($_POST["go"]))
    {
       $query = "UPDATE players SET Club = '$iclub' WHERE Name1= '$Name';";
           if (mysqli_query($conn, $query)) {
                echo "Record updated successfully";
           } else {
                echo "Error updating record: " . mysqli_error($conn);
           }

        $sql4 = mysqli_query($conn,"UPDATE Message SET Acc = 1 WHERE name = '$Name';");
    }*/
    
    
?>
        
               <form action="" method="POST">
                    <button type="submit" name="go">AGREE</button>
			          </form>
		
    </body>

</html>




    