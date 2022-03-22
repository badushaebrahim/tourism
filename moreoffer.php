<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>Western Multi purpose Free HTML5 Template</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<meta name="description" content="" />
<meta name="author" content="http://webthemez.com" />
<!-- css -->
<link href="css/bootstrap.min.css" rel="stylesheet" />
<link href="css/fancybox/jquery.fancybox.css" rel="stylesheet"> 
<link href="css/flexslider.css" rel="stylesheet" /> 
<link href="css/style.css" rel="stylesheet" />
 
<!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
<!--[if lt IE 9]>
      <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->

</head>
<body>
<div class="topnav"><center><p class="hide">........................</p>
  <a class="active" href="#home"><h1>MORE OFFER</h1></center></a>
	</div><div class="bro">
<?php
include'./dbcheck.inc.php';
    $sql = "SELECT * FROM `packages` ";
    $f=mysqli_query($conn,$sql);
		echo"<div class='row box-section'>";
        $co=1;

        while($row=mysqli_fetch_assoc($f))
            {echo"<div class='col-md-4'>
			<div class='box-content'>
			<a href='detail.php?dif=$row[pack_no]'>
               <img class='img-responsive'  src='uploads/$row[filename]' alt=''>   
                <h3>$row[location] <span class='price pull-right'>$row[cost]</span></h3>
				
                <p>$row[about]</p>  
             </a>				
            </div>
			</div>";
        if($co%3==0){
            
            echo"</div><div class='row box-section'>"; 
        }
        $co++;
        }//while end
            
            
        echo"</div>";//end of row
		?>
	</div>	
</body><style>.bro{margin: 6vh;}

.topnav {
  background-color: #333;
  overflow: hidden;
}

/* Style the links inside the navigation bar */
.topnav a {
  float: left;
  color: #f2f2f2;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
  font-size: 17px;
}

/* Change the color of links on hover */
.topnav a:hover {
  background-color: #ddd;
  color: black;
  border-radius: 3vh;
}

/* Add a color to the active/current link */
.topnav a.active {
  background-color: #04AA6D;
  color: white;
}.hide{visibility: hidden;}
</style>