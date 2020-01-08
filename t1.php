

<!DOCTYPE html>
<html>

<head>
        <meta charset="utf-8">
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>SEARCH PLAYERS</title>
       
    </head>
    <body>
	
			<form action="" method="POST">
				<div>                                                                           
					<label for="name">Enter Name</label>
					<input type="text" name="name" id="name">
				</div>
				<div>
					<label for="club">Enter Club</label>
					<input type="text" name="club" id="club">
				</div>
				
				<button type="submit" name="go">SEARCH</button>
			</form>
		

    
</body>

</html>


<?php include 'connection.php';
session_start(); 
                                                                             // searching player
$_SESSION[ 'Name1' ] = $_POST['Name1'];
$_SESSION[ 'Club' ] = $_POST['Club'];

if(isset($_POST['go']))
{
    header("t2.php");
    
}


?>