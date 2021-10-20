<html>
<body background="back.png" >
<center>
<br><br><br><br><br><br><br><br><br><br>
<h2>
	<form method="POST">
Email:<input type="text" name="userid"/><br><br>
password:<input type="password" name="password"/><br><br>
<br>
If no account <a href='registration.php'>Register</a>
<br>
<br>
<br>
<input type="Submit" name="sub" value="LOGIN" class="epic">
</form>
</h2>
<style>.epic{ background-color: #4CAF50; /* Green */
  border: none;
  color: white;
  padding: 15px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;}</style>
</center>
</body>
</html>


<?php 

session_start();

	include './dbcheck.inc.php';


	if(isset($_POST['sub']))
	{
        echo "<script> console.log('30')</script>";
		//something was posted
		$user_name = $_POST['userid'];
		$password = $_POST['password'];
        echo "<script> console.log('$user_name,$password')</script>";

		if(!empty($user_name) && !empty($password) && !is_numeric($user_name))
		{
            echo "<script> console.log('38')</script>";

			//read from database
			$query = "SELECT * FROM `userregistration` WHERE Email = '$user_name';";
			$result = mysqli_query($conn, $query);

			if($result)
			{
        echo "<script> console.log('46')</script>";

				if($result)
				{
                    echo "<script> console.log('50')</script>";

					$user_data = mysqli_fetch_assoc($result);
                    echo "<script> console.log('53$user_data[pwd]')</script>";
					
					if($user_data['pwd'] == $password)
					{
						echo "<script>console.log('LOGIN success')</script>";
						$_SESSION['uid'] = $user_data['uid'];
						echo"<script>location.href='payment.php';	</script>";
						//header("Location: .../sl/index.html");// replace .../sl/index.html with .../foldername/filename
						
					}
				}
			}
			
			echo("wrong username or password 64");
		}else
		{
			echo "wrong username or password! 67";
		}
	}

?>
