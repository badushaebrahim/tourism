<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Document</title>
</head>
<body><table>
<center>
<form method="POST">
<br><br><br><br><br><br><br><br><br>
<?php
include './dbcheck.inc.php';
$id=$_GET['id'];
$pk="SELECT * FROM `packages` WHERE `pack_no`=$id";
$sk="SELECT * FROM `aboutpack` WHERE `packid`=$id";
if(($mok=mysqli_query($conn,$pk))&&($pp=mysqli_query($conn,$sk))){
	$ro=mysqli_fetch_assoc($mok);
	$rom=mysqli_fetch_assoc($pp);
	echo"
<tr><td>Location:</td><td> <textarea  name='Location' >$ro[location]</textarea></td></tr><br><br><br><br>
<tr><td>About: <textarea name='About' >$ro[about]</textarea></td></tr><br><br><br><br>
<tr><td>Cost: <textarea name='Cost' >$ro[cost]</textarea></td></tr><br><br><br>
<tr><td>sec1</td><td><textarea name='sec1'>$rom[sec1]</textarea></td></tr>
<tr><td>sec2</td><td><textarea name='sec2'>$rom[sec2]</textarea></td></tr>";
echo"<input type='Submit' name='sub' value='Submit'>


";
}


?></form></table></center>
</body>
</html>