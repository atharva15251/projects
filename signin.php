<?php
//include("manager.php");
//include("newuser.php");
?>
<html><head>
<title>Manager Mode</title>
    <link rel="stylesheet" type="text/css" href="15.css">
    <script>
</script>
   <div class="sa">
            <input type="button" value="Back" name="go" style="background-color: blue;" onclick="window.location.href='http://localhost/abc/index.html'" />
            </div>
        
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
    <div class="loginbox">

    <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR6_Qi3U8JSYLn5Jr6LOYCF1FDOEuOJAMDxUSHI79YYMGUGVv_j" class="avatar">
        <h1>LOGIN HERE AS MANAGER</h1>
        <!--<form method="post" class="form-signin" action="signin.php">-->
            <form method="post" class="form-signin" action="newuser.php">
            <p>EMAIL ID</p>
            <label for="phonenum"></label><br/>
  <input id="phonenum" type="email" name="Username" placeholder="name@email.com" required />
            <!--<input type="email" value="" placeholder="name@email.com" required />-->
  
  
             <!--<label for="phonenum"></label><br/>
  <input id="phonenum" type="text" name="Username" placeholder="Enter Username..." pattern="" required >-->

            <!--<input type="text" name="Username" placeholder="Enter Username">-->
            <p>Password</p>
            <!--<input type="password" name="Password" placeholder="Enter Password">-->
            <label for="phonenum"></label><br/>
  <input id="phonenum" type="password" name="Password" placeholder="Enter Password..." >

            <br>
            <br>
            <br>
            <!--<button onclick="myFunction()">submit</button>-->
            <input type="submit" name="submit" value="submit" class="btn btn-primary" style="height: 50px ; width: 275px">
        </form>
        
    </div>



</body></html>

































































