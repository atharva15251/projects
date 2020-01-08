<?php
   

// Create connection
$conn = mysqli_connect('localhost', 'root', 'sahil4398','proj');

// Check connection
if (mysqli_connect_errno()) {
	echo "failed to connect".mysqli_connect_errno();
   }
?>
<!DOCTYPE html>
<html lang="en">

<head>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->
</head>
<!--<body>
	
	<link rel="stylesheet" href="css.css" integrity="sha384-lKuwvrZot6UHsBSfcMvOkWwlCMgc0TaWr+30HWe3a4ltaBwTZhyTEggF5tJv8tbt" crossorigin="anonymous">
<div class="container">
    <br/>
	<div class="row justify-content-center">
                        <div class="col-12 col-md-10 col-lg-8">
                            <form class="card card-sm">
                                <div class="card-body row no-gutters align-items-center">
                                    <div class="col-auto">
                                        <i class="fas fa-search h4 text-body"></i>
                                    </div>
                                   
                                    form name="form1" method="post" action="search2.php">
                                    
                                        <input class="form-control form-control-lg form-control-borderless" type="text" placeholder="Search Players"/>
                                    
                                    
                                    <div class="col-auto">
                                        <button class="btn btn-lg btn-success" type="submit">Search</button>
                                    </div></form> ?>
                                    
                                </div>
                            </form>
                        </div>
                        
                    </div>
</div>
</body>>
</html>-->
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
* {box-sizing: border-box;}

body {
  margin: 0;
  font-family: Arial, Helvetica, sans-serif;
}

.topnav {
  overflow: hidden;
  background-color: #e9e9e9;
}

.topnav a {
  float: left;
  display: block;
  color: black;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
  font-size: 17px;
}

.topnav a:hover {
  background-color: #ddd;
  color: black;
}

.topnav a.active {
  background-color: #2196F3;
  color: white;
}

.topnav .search-container {
  float: right;
}

.topnav input[type=text] {
  padding: 6px;
  margin-top: 8px;
  font-size: 17px;
  border: none;
}

.topnav .search-container button {
  float: right;
  padding: 6px 10px;
  margin-top: 8px;
  margin-right: 16px;
  background: #ddd;
  font-size: 17px;
  border: none;
  cursor: pointer;
}

.topnav .search-container button:hover {
  background: #ccc;
}

@media screen and (max-width: 600px) {
  .topnav .search-container {
    float: none;
  }
  .topnav a, .topnav input[type=text], .topnav .search-container button {
    float: none;
    display: block;
    text-align: left;
    width: 100%;
    margin: 0;
    padding: 14px;
  }
  .topnav input[type=text] {
    border: 1px solid #ccc;  
  }
}
</style>
<title>Search Player</title>
<script>
function showHint(str) {
    if (str.length == 0) { 
        document.getElementById("txtHint").innerHTML = "";
        return;
    } else {
        var xmlhttp = new XMLHttpRequest();
        xmlhttp.onreadystatechange = function() {
            if (this.readyState == 4 && this.status == 200) {
                document.getElementById("txtHint").innerHTML = this.responseText;
            }
        };
        xmlhttp.open("GET", "gethint.php?q=" + str, true);
        xmlhttp.send();
    }
}
</script>
<link rel="stylesheet" type="text/css" href="https://bootswatch.com/4/darkly/bootstrap.min.css">
</head>
<body>
	<div class="container">
		<br>
		<br>
<h1>Search Player</h1>
<div >
  
  <div class="search-container">
    <form name="form1" method="POST" action="transfer2.php" >
      <input type="text" placeholder="Player 1st name..." name="search" onkeyup="showHint(this.value)">
      <button type="submit"><i class="fa fa-search"></i></button>
    </form>
  
    <p>Suggestions: <span id="txtHint"></span></p>

  </div>
</div>
</div>


</body>
</html>

<!--<p>Search Player</p>
<form name="form1" method="post" action="search2.php">
<input type="text" name="search" size="40" maxlength="50" />
<button type="submit"><i class="fa fa-search"></i></button>
</form>-->