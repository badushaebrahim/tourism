<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Document</title>
</head>
<body background="22.png"<br>
<div class="topnav">
  <a class="active" href="#home">Home</a>
  <div class="topnav">
  <a  class="hide"href="#news">................................................................</a>
  <a class="hide"href="#news">................................................................</a>
  <a class="hide"href="#news">................................................................</a>
  <a class="hide"href="#news">................</a>
  <a href="fed.php">Give Feadback</a>

  <a href="moreoffer.php">BOOK MORE</a>
  <a href="index.php">Sign Out</a>
  </div>
</div><br><br> <center><div class="cor">
<?php
include './dbcheck.inc.php';
session_start();
$co=0;
$co2=$_SESSION['uid'];
echo"<table border='solid white' ><caption><h1><b>MY Trips</b></h1></caption><br><tr><td><b>No:</b></td><br><td><b>Date</b></td><br><td><b>Payment_id</b></td><br><td><b>Action</b></td></tr>";
$sql = "SELECT * FROM `opted_packages` WHERE `user_id`=$co2";
$lo=mysqli_query($conn,$sql);while($row=mysqli_fetch_assoc($lo)){
	echo"<tr><a href='lol.php'><td>$co</td><td>$row[pack_date]</td><td>$row[payment_id]</td> <td><input type='submit' value='Print Recipt' onclick='goes($row[optid] )'></td></a></tr>";
$co++;
}
echo"</table>";
?>

</div></center>
</body>
</html><style>/* Add a black background color to the top navigation */
.cor{
  background-color:rgba(161, 165, 165, 0.75);
  border-radius:45px;
  padding:1rem;
  
 width:50%;
 padding-bottom: 6rem;;
}
body{
	background-color: white;
	color:black;
}
.topnav {
  background-color: #333;
  overflow: hidden;
}

/* Style the links inside the navigation bar */
.topnav a {
  float: left;
  color: #f2f2f2;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
  font-size: 17px;
}

/* Change the color of links on hover */
.topnav a:hover {
  background-color: gray;
  color: black;
  border-radius: 3vh;
}

/* Add a color to the active/current link */
.topnav a.active {
  background-color: #04AA6D;
  color: white;
}
.hide{visibility: hidden;}
</style>
<script>function goes(text){
	var lom="printer.php?id="
	var ne=lom+text;
location.href=ne;

}
</script>