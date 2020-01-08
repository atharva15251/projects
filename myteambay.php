<?php
   

// Create connection
$conn = mysqli_connect('localhost', 'root', 'sahil4398','proj');

// Check connection
if (mysqli_connect_errno()) {
    echo "failed to connect".mysqli_connect_errno();
   }




  $search_sql="SELECT * FROM `players` WHERE Club = 'FC Bayern Munchen'";
  $search_query=mysqli_query($conn,$search_sql);
  if (mysqli_num_rows($search_query)!=0) {
  	# code...
 
  $search_rs=mysqli_fetch_assoc($search_query);
}

   	?>



   	 <!DOCTYPE html>
<html lang="en">

<head>
	<title>Found Player</title>
	<link rel="stylesheet" type="text/css" href="https://bootswatch.com/4/darkly/bootstrap.min.css">
</head>
<body>
	
	<form>
<input type="button" value="Back" onclick="window.location.href='http://localhost/aaa/Bayern.php'" />
</form>
	
 
 <br><br>
 <div class="container">
 <?php foreach ($search_query as $post) : ?>
 <div class="well">
 	<img src="<?php  echo $post['Img']; ?>"height="300" width="300">
 <h3><?php echo $post['Name1']; ?></h3>
 <h5><br> Form : <?php echo $post['Form']; ?><br>Position : <?php echo $post['Position']; ?><br> Jersey Number : <?php echo $post['Jersey'] ?><br> Player Rating : <?php echo $post['Rating']; ?><br> Club : <?php echo $post['Club']; ?> <br> Wage : <?php echo $post['Wage']; ?>
 
 	<hr style="border-color: #FFFFFF">
 </h5> 

</div>
<?php endforeach; ?>

</div>

</body>
</html>