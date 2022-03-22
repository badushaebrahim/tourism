<html>
<body background="01.png">
<center>
<form method="POST"enctype="multipart/form-data">
<br><br><br><br><br><br><br><br><br>
Image: <input type="file" name="file" id="file">
<br><br><br><br>
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
//new
    // Allow certain file formats
    // File upload path
$targetDir = "uploads/";
$fileName = basename($_FILES["file"]["name"]);
$targetFilePath = $targetDir . $fileName;
$fileType = pathinfo($targetFilePath,PATHINFO_EXTENSION);
    $allowTypes = array('jpg','png','jpeg','gif','pdf');
    if(in_array($fileType, $allowTypes)){
        // Upload file to server
      //else{
     //   $statusMsg = 'Sorry, only JPG, JPEG, PNG, GIF, & PDF files are allowed to upload.';
   // }
//}else{
  //  $statusMsg = 'Please select a file to upload.';
}
//newr
    echo "<script>console.log('55')</script>";

	if(isset($_POST['sub']))
	{
		if(move_uploaded_file($_FILES["file"]["tmp_name"], $targetFilePath))
		echo "<script> console.log('file upload ok')</script>";
		else
		echo "<script> console.log('no file')</script>";
			

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
			
			$query = "INSERT INTO `packages`( `cost`, `about`,`filename`, `location`) VALUES('$gen','$ps','$fileName',' $name');";

        echo "<script>console.log('80')</script>";

			if(mysqli_query($conn,$query)){
                echo "<script>console.log('done')</script>";
                echo "<script>alert('update ok successful')</script>";
		$f="SELECT * FROM `packages` WHERE (`cost`='$gen')";
		if($mm=mysqli_query($conn,$f)){
		$do=mysqli_fetch_assoc($mm);
		echo "<script>console.log('done')</script>";
                echo"<script>location.href='addsec.php?pack=$do[pack_no]&co=$do[cost]';	</script>";
		//header("Location: .../sl/index.html");// replace '.../sl/index.html with .../foldername/homepage_filename
		}
            }else{echo "<script>alert('fail ')</script>";}
            
			
		}else
		{
			echo "Please enter some valid information!";
		}
	}
?>

