<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Edit</title>
</head>
<body background="xx.png">
<center>	
<table><caption><h1>Editing </h1> 	</captions>

<form method="POST">	
	
<?php
include './dbcheck.inc.php';
$id=$_GET['id'];
$pk="SELECT * FROM `packages` WHERE `pack_no`=$id";
$sk="SELECT * FROM `aboutpack` WHERE `packid`=$id";
if(($mok=mysqli_query($conn,$pk))&&($pp=mysqli_query($conn,$sk))){
	$ro=mysqli_fetch_assoc($mok);
	$rom=mysqli_fetch_assoc($pp);
	
	echo"
<tr><td>Location:</td><td> <textarea  name='Loc' >$ro[location]</textarea></td></tr><br><br><br><br>

<tr><td>Cost: </td><td><input type='number' name='Cost' value='$ro[cost]' ></td></tr><br><br><br>
<tr><td>sec1</td><td><textarea name='sec1'>$rom[sec1]</textarea></td></tr>

";
echo"<tr><td></td><td><input type='Submit' name='sub' value='Submit'><a href='home2.php'><input type='button' name='sub' value='Back'></a></td></tr>

</form>
</table>
";
}


?></form></table></center>
</body>
</html>
<?php

if(isset($_POST['sub'])){
$cost=$_POST['Cost'];
//$about=$_POST['About'];
$loc=$_POST['Loc'];
$sec1=$_POST['sec1'];
//$sec2=$_POST['sec2'];

echo "<script>console.log('inside45')</script>";
//$about22="UPDATE `aboutpack` SET `sec1`='$sec1',`sec2`='$sec2',`location`='$loc' WHERE `packid`=$id"
//$packs="UPDATE `packages` SET`cost`=$cost,`about`=$about,`location`=$loc WHERE `pack_no`=$id ";
//echo "<script>console.log($cost+$about+$loc+$sec1)</script>";
//$packs="UPDATE `packages` SET `cost`=$cost,`about`='$about',`location`='$loc' WHERE `pack_no`=$id";
//echo "<script>console.log('$about')</script>";

//$about2="UPDATE `aboutpack` SET `sec1`='$sec1,`sec2`=$sec2,`location`= $loc WHERE `packid`=$id";
$about2="UPDATE `aboutpack` SET `sec1`='$sec1',  `location`='$loc' WHERE `packid`='$id;";
if($mok=mysqli_query($conn,$about2)){
	echo "<script>console.log('yo')</script>";
	if($pp=mysqli_query($conn,$about2)){
	echo "<script>console.log(' successadobut')</script>";
	}else{echo "<script>console.log('failinside')</script>";}

}
else{echo "<script>console.log('failout63')</script>";}
}

?>