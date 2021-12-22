<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>update sec</title>
</head>
<body background="mm.png">


<center>
<form method="POST">


<table><caption><b>ABOUT LOCATION</b></caption><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
	
<tr><td><b>sec1</b></td><td><textarea name="sec1"></textarea></td></tr><br><br>
<tr><td><b>sec2</b></td><td><textarea name="sec2"></textarea></td></tr><br><br>
<tr><td><input type="submit" value="submit" name="sub"></textarea></td></tr><br>


</table>


</form>


</center>


</body>
</html>


<?php 
include './dbcheck.inc.php';

    echo "<script>console.log('55')</script>";

	if(isset($_POST['sub']))
	{
        echo "<script> console.log('58')</script>";
		//something was posted
		/*$user_name = $_POST['username'];
        $mailid =$_POST['email'];
		$password = $_POST['pass'];*/

		$name=$_POST['sec1'];
$ps=$_POST['sec2'];
$gen=$_GET['pack'];
$cost=$_GET['co'];
		
        date_default_timezone_set("Asia/Calcutta");
        $da= date('Y-m-d H:i:s');
/*
        echo "<script>console.log('$username 65')</script>";
        echo "<script>console.log('$mailid 66')</script>";
        echo "<script>console.log('$password 67')</script>";
**/
        echo "<script>console.log('69')</script>";

		if(1==1)
		{

        echo "<script>console.log('75$ps,$gen,$cost,$name')</script>";
			//save to database
			
			$query = "INSERT INTO `aboutpack`(`packid`, `sec1`, `sec2`, `location`) VALUES (' $gen','$name','$ps','$cost');";

        echo "<script>console.log('80')</script>";

			if(mysqli_query($conn,$query)){
                echo "<script>console.log('done')</script>";
                echo "<script>alert('update ok successful')</script>";
 echo "<script>location.href='home2.php'</script>";
		
		
                echo"<script>location.href='home2.php';	</script>";
		//header("Location: .../sl/index.html");// replace '.../sl/index.html with .../foldername/homepage_filename
            }
            
			
		}else
		{echo "<script>alert('update no')</script>";
			echo "Please enter some valid information!";
		}
	}
?>
