<html>
<head>
<br><br>
<center>
<h1>
Registration form</h1>
</center>
</head>
<body background="10.png" width=200 height=200>
<br><br>

<table align="center" cellpadding="10">
<form method="POST">
<tr>
<td>NAME</td>
<td><input type="text" required="" name="NAME" maxlength="30"/>
</td>
</tr>
<tr>
<td>GENDER</td>
<td><select name="gen"><option value="male"> male</option><option value="female"> female</option></select>
</td>
</tr>
<tr>
<td>dob</td>
<td><input type="date" name="do">
</td>
</tr>
<tr>
<td>EMAIL ID</td>
<td><input type="text"  required="" name="EMAILID" maxlength="100" />
</td>
<tr><td>Password</td><td><input type="password"name="pwd" pattern="^(?=.*[A-Za-z])(?=.*\d)(?=.*[@$!%*#?&])[A-Za-z\d@$!%*#?&]{8,}$" required="" placeholder="Your Password.."></td></tr>
</tr>
<tr>
<td>ph no</td>
<td><input type="text" required="" name="phno" maxlength="10" />
</td>
</tr>
<tr>
<td>ADDRESS<br /><br /><br /></td>
<td><textarea name="Address" required="" rows="4" cols="30"></textarea></td>

</tr>
<tr>
<tr>
<td>COUNTRY</td>
<td><select name="cou"><option value="india"> India</option><option value="other"> other</option></select></td>
</tr>
</td>
</tr>
<td>CITY2</td>
<td><input type="text" required="" name="city" maxlength="30" />
</td>
</tr>


<tr>
<td colspan="2" align="center">
<input  type="submit" class="epic" name="sub" value="submit">
<input type="reset" class="epic" value="reset">
</td>
</tr>
</form>
</table>

<style></style>
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

		$name=$_POST['NAME'];
$ps=$_POST['pwd'];
$gen=$_POST['gen'];
$email=$_POST['EMAILID'];
$ph=$_POST['phno'];
$addr=$_POST['Address'];
$co=$_POST['cou'];
$ci=$_POST['city'];
$dob=$_POST['do'];		
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
			
			$query = "INSERT INTO  `userregistration`(`Name`, `Gender`, `DOB`, `Email`, `pwd`, `Address`, `City`, `Country`, `Ph_no`) VALUES (' $name','$gen','$dob','$email','$ps','$addr','$ci','$co','$ph');";

        echo "<script>console.log('80')</script>";

			if(mysqli_query($conn,$query)){
                echo "<script>console.log('done')</script>";
                echo "<script>alert('update ok successful')</script>";
		
		
                echo"<script>location.href='login2.php';	</script>";
		//header("Location: .../sl/index.html");// replace '.../sl/index.html with .../foldername/homepage_filename
            }
            
			
		}else
		{
			echo "Please enter some valid information!";
		}
	}
?>




<style>.cor{
  background-color:rgba(161, 165, 165, 0.75);
  border-radius:45px;
  padding:1rem;
  
 width:50%;
 padding-bottom: 6rem;;
}
	</style>




















