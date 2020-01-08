<?php
include('script1.php'); // Includes search Script

?>

<!DOCTYPE html>
<html>
   <head>
         <title>Search the Player</title>
         <link href="8.css" rel="stylesheet" type="text/css">
   </head>
   <body>
        <div id="main">
            <h1>SEARCH PLAYER</h1>
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
		

       </div>
  </body>
</html>