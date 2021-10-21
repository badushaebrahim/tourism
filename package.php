<html>
<body background="ji.png">
<center>
<form method="POST">
<br><br><br><br><br><br><br><br><br>
Location: <input type="text" name="Location" /><br><br><br><br>
About: <input type="textarea" name="About" row="4" cols="30" /><br><br><br><br>
Cost: <input type="number" name="Cost" /><br><br><br>
<input type="Submit" name="sub" value="Submit">
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

		$name=$_POST['Location'];
$ps=$_POST['About'];
$gen=$_POST['Cost'];/*
$email=$_POST['EMAILID'];
$ph=$_POST['phno'];
$addr=$_POST['Address'];
$co=$_POST['cou'];
$ci=$_POST['city'];
$dob=$_POST['do'];	*/	
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

        echo "<script>console.log('75$da')</script>";
			//save to database
			
			$query = "INSERT INTO `packages`( `cost`, `about`, `location`) VALUES('$gen','$ps',' $name');";

        echo "<script>console.log('80')</script>";

			if(mysqli_query($conn,$query)){
                echo "<script>console.log('done')</script>";
                echo "<script>alert('update ok successful')</script>";
		
                echo"<script>location.href='addsec?.php';	</script>";
		//header("Location: .../sl/index.html");// replace '.../sl/index.html with .../foldername/homepage_filename
            }else{echo "<script>alert('fail ')</script>";}
            
			
		}else
		{
			echo "Please enter some valid information!";
		}
	}
?>

