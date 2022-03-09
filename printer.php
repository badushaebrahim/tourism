<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Document</title>
</head>
<body background="02.png"><center>
	<?php
		$id =$_GET['id'];
		//echo "$id";
		include './dbcheck.inc.php';
		
		
		$sql = "SELECT * FROM `payment` WHERE `tid`=$id";
		$lo=mysqli_query($conn,$sql);
		$res=mysqli_fetch_assoc($lo);
		$new="SELECT * FROM `aboutpack` WHERE `packid`=$res[pack_no]";
		$lo2=mysqli_query($conn,$new);
		$res2=mysqli_fetch_assoc($lo2);
		$new22="SELECT * FROM `opted_packages` WHERE `optid`=$res[pack_no]";
		$lol33=mysqli_query($conn,$new22);
		$res33=mysqli_fetch_assoc($lol33);
		echo"<h4>
		<table border='solid white' ><caption><h1><b>RECEIPT</b></h1></caption><br><br>
		
		<tr>	<td>Mode of transaction</td><td>$res[mode_of_payment]</td>		</tr><br>
		<tr>	<td>Price</td><td>$res[price]</td>		</tr><br>
		<tr>	<td>Destination</td><td>$res2[location]</td>		</tr><br>
		<tr>	<td>Date</td><td>$res33[pack_date]</td>		</tr><br>
		</table></h4>
		";
		
		?>
		<br>	
		<br>	
		<button onclick="window.print()" value="Print page">print page</button>
		<button onclick="window.history.back()" value="Print page">go back</button>

		<br>	
		<br><br>	
		<br><br>
		<h4>this recipt significe the person has purchased the service
		and hold a proof for it</h4>	
		<br><br>	
		<br><br>	
		<br><br>	
		<br><br>	
		<br><br><br>	
		<br><br>	
		<br><br>	
		<br><br><br>	
		<br><br>	
		<br><br>	
		<br>
		<h4>Thank You For the purchase</h4>
</center>
		
</body>
</html>
<style>
table, th, td {
  border: 5px;
  width: 30%;
  padding: 10px;
}
button{
	margin:15px}

@media print {
  button{
	  display:none
  }
}

</style>