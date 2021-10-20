<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!--<link href="css/logins.css" rel="stylesheet" type="text/css">-->
    <link href="css/logs.css" rel="stylesheet" type="text/css">
    
    <title>Parent adding</title>
</head>
    <body><div class="wrap">
  <center>
   <div class="boxmain">
    <p class="h1p">Parent Registration</p>
    <br>
    <form method="post" >
    Name:<br>
    <input type="text" name="name" class="texts" id="name"><br>
    <!--Date of Birth:<br>
    <input type="date" name="date" class="texts" id="cource"><br>-->
    Gender <br>
    <input type="radio" name="gender" value="male" >Male
    <input type="radio" name="gender"  value="female">Female
     <input type="radio" name="gender" value="other">Other<br><br>
     
    DOB : <input type="date" name="date" class="texts" id="name"><br>
     
     <br>
     address:<br>
     <textarea name="add"></textarea>
     <br>
     counrty<br>
     <input type="text" name="cou" class="texts" id="email" ><br>
     city<br>
     <input type="text" name="city" class="texts" id="email" ><br>
    Email:<br>
    <input type="email" name="email" class="texts" id="email" placeholder="Email here"><br>
    Password<br>
    <input type="password" name="pass" class="texts" id="pwd"  placeholder="Your Password..">
    <br>
   PHNO<br>
    <input type="number" name="ph" class="texts" id="pwd"  >
    <br><br>
    <a href="logins.php">login</a><p class="voids">............</p><br>
    <input type="submit" class="bts" value="sign up" name="btnsubmit">
    </form>
</div>      
</center>

</div>

</div>

</div>
</div>
</body>

</html>











<?php
include './dbcheck.inc.php';
if(isset($_POST['btnsubmit']))
{$Name=$_POST['name'];
 $DOB=$_POST['date'];
  $Gender=$_POST['gender'];
  $Email=$_POST['email'];
  $Password=$_POST['pass'];
  $h= $_POST['ph'];
  $addr= $_POST['add'];
  $cou= $_POST['cou'];
  $city= $_POST['city'];
 
  function debug_to_console($data) {
    $output = $data;
    if (is_array($output))
      $output = implode(',', $output);
    echo "<script>console.log('Debug Objects: " . $output . "' );</script>";}
$q="select count(*) from `userregistration` where Email='$Email'";
if($s=mysqli_query($conn,$q)){
//echo "<script>console.log('ok on query');</script>";
  if($f=mysqli_fetch_array($s)){
echo "<script>console.log('$f[0]'+'already exists');</script>";
echo"<script>alert('user registration failed');";
echo "<script>console.log('user already found');";
echo "<script>location.href='loginp.php'</script>";
}}
else{
//echo "<script>console.log('ok not on query');</script>";
}
if($f['count']==0){
  $q="INSERT INTO `userregistration`(`Name`, `Gender`, `DOB`, `Email`, `pwd`, `Address`, `City`, `Country`, `Ph_no`) VALUES ('$Name','$Gender','$DOB','$Email','$Password','$city','$cou','$h')";
  
  if(($m=mysqli_query($conn,$q))){
    //echo"<script>var r = confirm('registartion suscessfull want to add  more parents ');if (r == true) {location.href='regparent.php';} else{location.href='homef.php';	}</script>";
/*
    echo "<script>location.href='regpa.php'</script>";
  debug_to_console($Name);
  debug_to_console($DOB);
  debug_to_console($Gender);
  debug_to_console($posts);
  debug_to_console($password);
  debug_to_console($Email);*/debug_to_console("it worked");}
  else{
echo "<script>console.log('no insert');</script>";
echo"<script>alert('user registration failed1');";
//echo "<script>location.href='homef.php'</script>";
  }}
  else{
    echo"<script>alert('user registration failed2');</script>";
    echo "<script>console.log('user already found');</script>";
    //echo "<script>location.href='regparent.php'</script>";

  }

}

  ?>