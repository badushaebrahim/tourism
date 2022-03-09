<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>get feadback</title>
</head>
<body background="01.png">
</div><br><br><center>
<?php
include './dbcheck.inc.php';
$co=1;
echo"<table border='solid white' ><caption><h1>All Feadback</h1></caption><tr><td>No</td><td>Name</td><td>feadback</td></tr>";
$sql = "SELECT * FROM `feed` ";
$lo=mysqli_query($conn,$sql);while($row=mysqli_fetch_assoc($lo)){
	echo"<tr><td>$row[fid]</td><td>$row[name]</td><td>$row[feedback]</td></tr>";
$co++;
}
echo"</table>";
?>
</body>
</html>