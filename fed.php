
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" >
    <link rel="stylesheet" href="css/constyle.css">
    <title>Feedback form</title>
</head>

<body>


<section class="container">


    <div class="container">
        <div class="contact-wrapper">
            <div class="title">
                <h1>Feedback Form</h1>
            </div>
            <form method="post">
                <div class="name-wrap">
                                            
                </div>
                
                <div class="textarea-box">
                    <textarea id="textarea"  name="feedback" required></textarea>
                    <label for="textarea">Your Message</label>
                    <div class="bottom-line"></div>
               </div>
                <div>
                    <input type="submit" name="submit" class="btn" value="SEND"/>       
                </div>

            </form>            
        </div>
    </div>
</section>
<?php   
include './dbcheck.inc.php';
                if(isset($_POST['submit']))
                {session_start();
			
			$id=$_SESSION['uid'];
                    echo "<script>console.log('64')</script>";

                   
                    $feedback=$_POST['feedback'];
                    echo "<script>console.log('68')</script>";


                    $sql="SELECT * FROM `userregistration` WHERE `uid`=$id;";
                    echo "<script>console.log('19')</script>";
                    $query1 = mysqli_query($conn,$sql);

                    if($query1)
                    {     
                        echo "<script>console.log('22')</script>";
                        $result1=mysqli_fetch_assoc($query1);

                        if($result1 > 0)
                        {
                    
                            echo "<script>console.log('28')</script>";
                            //$mail=$result1["mailid"];
                            $name=$result1["Name"];
                        }
                        else{
                            echo "<script>console.log('39')</script>";
                    
                        }
                    }
                   

                    
                    if(isset($feedback))
                    {
                        echo "<script>console.log('$feedback $id name $name')</script>";
                        

                        $sql1="INSERT INTO `feed`(`name`, `id`, `feedback`) VALUES('$name',$id,'$feedback');";
                        echo "<script>console.log('104')</script>";
                        $query=mysqli_query($conn,$sql1);
                        if($query)
                        {
                            echo "<script>console.log('108')</script>";

                            $result=mysqli_fetch_assoc($query);
                            if($result>0){

                            echo "<script>alert('Feedback submitted');</script>";
                            echo "<script>location.href='home.php'</script>";
                            
                        }
                        }  else{
				echo "<script>alert('Fail');</script>";

			}     

                    }

                    else 
                    {
                    echo "<script>alert('Error Occurred\n Pls check username!!');</script>";

                    }
                    
                }



            ?>
</body>

</html>
