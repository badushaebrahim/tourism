<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Admin Home</title>
</head>
<body><br>
<div class="topnav">
  <a class="active" href="#home">Home</a>
  <div class="topnav">
  <a  class="hide"href="#news">................................................................</a>
  <a class="hide"href="#news">................................................................</a>
  <a class="hide"href="#news">................................................................</a>
  <a class="hide"href="#news">................................................................</a>

  <a href="package.php">Add Package</a>
  <a href="index.php">Sign Out</a>
  </div>
</div><br><br><center>
<?php
include './dbcheck.inc.php';
$co=1;
echo"<table border='solid white' ><caption><h1>All Packages</h1></caption><tr><td>No:</td><td>pack no</td><td>Cost</td><td>about</td><td>Location</td><td>Action</td></tr>";
$sql = "SELECT * FROM `packages` ";
$lo=mysqli_query($conn,$sql);while($row=mysqli_fetch_assoc($lo)){
	echo"<tr><td>$co</td><td>$row[pack_no]</td><td>$row[cost]</td><td>$row[about]</td><td>$row[location]</td> <td><a href='lol.php'>Edit</a></td></tr>";
$co++;
}
echo"</table>";
?>
</center>

</body>
</html><style>/* Add a black background color to the top navigation */
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