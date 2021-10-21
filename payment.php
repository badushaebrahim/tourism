<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Payment page </title>
</head>
<body><form method="POST"><center>
	<table>
	<Caption><h1>Payment Page</h1></Caption>

	<tr>	<td>Payment Method</td><td>	<select name="payid"><option value="upi" >UPI</option><option value="upi">PayPal</option></select> 	</td>	</tr>
	<tr>	<td>Dte of Package</td><td><input type="date" name =date ></td>	</tr>

	<tr>	<td>Transaction id</td><td><input type="text" name="tans"  ></td>	</tr>
	<tr><td><input type="submit" name="submit" ></td></tr>
	</table></form></center>
</body>
</html>


<?php 
include './dbcheck.inc.php';
session_start();
    echo "<script>console.log('55')</script>";

	if(isset($_POST['submit']))
	{
        echo "<script> console.log('58')</script>";
		//something was posted
		/*$user_name = $_POST['username'];
        $mailid =$_POST['email'];
		$password = $_POST['pass'];*/

		$name=$_POST['payid'];
$ps=$_POST['tans'];
$gen=$_SESSION['uid'];
echo "<script>console.log('me$gen')</script>";
$email=$_GET['ids']	;/*
$ph=$_POST['phno'];
$addr=$_POST['Address'];
$co=$_POST['cou'];
$ci=$_POST['city'];*/
$dob=$_POST['date'];		
        date_default_timezone_set("Asia/Calcutta");
        $da= date('Y-m-d H:i:s');
/*
        echo "<script>console.log('$username 65')</script>";
        echo "<script>console.log('$mailid 66')</script>";
        echo "<script>console.log('$password 67')</script>";
**/
        echo "<script>console.log('69')</script>";

		if($gen==1)
		{

       // echo "<script>console.log('75$da')</script>";
			//save to database
			$my="SELECT * FROM `packages` WHERE `pack_no`=$email";
			$lk=mysqli_query($conn,$my);$ro=mysqli_fetch_assoc($lk);
			
			$query="INSERT INTO `payment`(`mode_of_payment`, `pack_no`, `price`, `transcationid`,`userid`) VALUES ('$name','$email','$ro[cost]','$ps','$gen')";
			$sql="INSERT INTO `opted_packages`(`pack_no`, `user_id`, `pack_date`, `payment_id`)VALUES ('$email','$gen','$dob','$ps')";

        echo "<script>console.log('80')</script>";

			if(mysqli_query($conn,$query)){
				if(mysqli_query($conn,$sql)){
                echo "<script>console.log('done')</script>";
                echo "<script>alert('update ok successful')</script>";
              //  echo"<script>location.href='home.php';	</script>";
		//header("Location: .../sl/index.html");// replace '.../sl/index.html with .../foldername/homepage_filename
				}
            }
            
			
		}else
		{
			echo "Please enter some valid information!";
		}
	}
?>