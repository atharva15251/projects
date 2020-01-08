<!DOCTYPE HTML>  
<html>
<head>
<link rel="stylesheet" type="text/css" href="https://bootswatch.com/4/solar/bootstrap.min.css">
</head>
<body> 
  <style>
      .sa input[type="button"]
{
    border: none;
    outline: none;
    height: 40px;
    background: blue; 
    color: #fff;
    font-size: 18px;
    border-radius: 20px;
}
 .sa input[type="button"]:hover
{
    cursor: pointer;
    background: blue;
    color: #000;
}
.sa a{
    text-decoration: none;
    font-size: 16px;
    line-height: 24px;
    color: grey;
}

.sa a:hover
{
    color: red;
}

    </style>
   

<?php
// define variables and set to empty values
session_start();
$ClubErr = $nameErr = $emailErr = $genderErr = $websiteErr = "";
$Club = $name = $email = $gender = $comment = $website = "";
$orr= 'Chelsea FC' ;
$orr1='FC Barcelona';
$orr2= 'FC Bayern Munchen';
$orr3= 'Juventus FC';
$orr4= 'Manchester United FC' ;






if ($_SERVER["REQUEST_METHOD"] == "POST") {



  if (empty($_POST["name"])) {
    $nameErr = "*Name is required";
  } else {
    $name = $_POST["name"];
    $_SESSION["admin_name"] = $_POST["name"];
    // check if name only contains letters and whitespace
    if (!preg_match("/^[a-zA-Z ]*$/",$name)) {
      $nameErr = "Only letters and white space allowed"; 
    }
  }
  
  if (empty($_POST["email"])) {
    $emailErr = "*Email is required";
  } else {
    $email = $_POST["email"];
    $_SESSION["admin_email"] = $_POST["email"];
    // check if e-mail address is well-formed
    if (!filter_var($email, FILTER_VALIDATE_EMAIL)) {
      $emailErr = "Invalid email format"; 
    }
  }
    
 
if (empty($_POST["Club"])) {
    $ClubErr = "*Club is required";
  } else {
    $Club = $_POST["Club"];



      switch ($Club) {
        case 'Chelsea FC':
          $_SESSION["admin_club"] = "Chelsea FC";
          break;
        case 'FC Barcelona':
          $_SESSION["admin_club"] = "FC Barcelona";
          break;
        case 'FC Bayern Munchen':

          $_SESSION["admin_club"] = "FC Bayern Munchen";
          break;
        case 'Juventus FC':
          $_SESSION["admin_club"] = "Juventus FC";
          break;
        case 'Manchester United FC':
         $_SESSION["admin_club"] = "Manchester United FC";
         break;
        default:
         $ClubErr = "Club Should be one of the following : Chelsea FC , Manchester United FC , FC Barcelona , FC Bayern Munchen , Juventus FC "; 
          break;
     
    }
}
  
  if (empty($_POST["gender"])) {
    $genderErr = "Gender is required";
  } else {
    $gender = $_POST["gender"];
    $_SESSION["admin_gender"] = $_POST["gender"];
    
 } 
if (!empty($_POST["Password"])){
$_SESSION["admin_password"] = $_POST["Password"];
$_SESSION["admin_age"] = $_POST["age"];}
}

function test_input($data) {
  $data = trim($data);
  $data = stripslashes($data);
  $data = htmlspecialchars($data);
  return $data;
}
?>

<center>
<h1>Registration Index</h1></center>
<br><br><br><br>
<h3>

<form method="post" action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]);?>">  
  Name: <input type="text" name="name" value="<?php echo $name;?>">
  <span class="error"> <?php echo $nameErr;?></span>
  <br><br>
  E-mail: <input type="text" name="email" value="<?php echo $email;?>">
  <span class="error"> <?php echo $emailErr;?></span>
  <br><br>
 Club: <input type="text" name="Club" value="<?php echo $Club;?>">
  <span class="error"> <?php echo $ClubErr;?></span>
  <br>
  <br>
   <label for="phonenum">Password(Should content 4 numeric numbers) :</label>
  <input id="phonenum" name="Password" type="tel" pattern="^\d{4}$" required >

  <br>
  <br>
   Age: <input type="text"  name="age">

  <br>
  <br>

  Gender:
  <input type="radio" name="gender" <?php if (isset($gender) && $gender=="female") echo "checked";?> value="female">Female
  <input type="radio" name="gender" <?php if (isset($gender) && $gender=="male") echo "checked";?> value="male">Male
  <input type="radio" name="gender" <?php if (isset($gender) && $gender=="other") echo "checked";?> value="other">Other  
  <span class="error">* <?php echo $genderErr;?></span>
  <br><br>
  <input type="submit" name="submit" class='' value="Submit">  

    <div class="sa">
            <input type="button" value="Back" name="go" style="background-color: red;" onclick="window.location.href='http://localhost/abc/chelsea/cfcteam.html'" />
            </div>
        
</form>


<br><br><br><br>
<a href="http://localhost/abc/admin1.php"> Click Here </a>
</body>
</html>