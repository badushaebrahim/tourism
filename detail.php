<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>Western Multi purpose Bootstrap Template</title>
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
<div id="wrapper">
<div class="topbar">
  <div class="container">
    <div class="row">
      
    </div>
  </div>
</div>
	<!-- start header -->
		<header>
        <div class="navbar navbar-default navbar-static-top">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                  <a class="navbar-brand" href="index.html"><img src="img/logo.png" alt="logo"/></a>
                </div>
                <div class="navbar-collapse collapse ">
                    <ul class="nav navbar-nav">
                        <li><a href="index.html">Home</a></li> 
							 <li class="dropdown active">
                        <a href="#" data-toggle="dropdown" class="dropdown-toggle">About Us <b class="caret"></b></a>
                        <ul class="dropdown-menu">
                            <li><a href="about.html">Company</a></li>
                           
                        </ul>
                    </li> 
		
                    </ul>
                </div>
            </div>
        </div>
	</header><!-- end header -->
	<section id="inner-headline">
	<div class="container">
		<div class="row">
			<div class="col-lg-12">
				<h2 class="pageTitle">Toure Details</h2>
			</div>
		</div>
	</div>
	</section>
	<section id="content">
	<section class="section-padding">
		<div class="container">
			<div class="row showcase-section">
				<div class="col-md-6">
					<img src="img/dev1.png" alt="showcase image">
				</div>
				<?php
				include'./dbcheck.inc.php';
				$packid=$_GET['dif'];
				$sql = "SELECT * FROM `aboutpack`where  `packid`=$packid";
				$f=mysqli_query($conn,$sql);
				$row=mysqli_fetch_assoc($f);
				echo "<div class='col-md-6'><div class='about-text'>";
						echo"<h3>$row[location]</h3>";
						echo"$row[sec1]";
					echo"</div></div></div>
					</div>
				</section> ";
			
	echo"<section class='section-padding gray-bg'>
		<div class='container'> 
			<div class='row'>
				<div class='col-md-6 col-sm-6'>
					<div class='about-text'>";
						echo"<p>$row[sec2]<br></p>";
						$_SESSION['pack']=$packid;
						echo"<a href='detail.phps'><input class='epic'value='book'type='Button'></a>";

						echo"<ul class='withArrow'>
							<li><span class='fa fa-angle-right'></span> Lorem ipsum dolor sit amet</li>
							<li><span class='fa fa-angle-right'></span> consectetur adipiscing elit</li>
							<li><span class='fa fa-angle-right'></span> Curabitur aliquet quam id dui</li>
							<li><span class='fa fa-angle-right'></span> Donec sollicitudin molestie malesuada.</li>
						</ul> 
					</div>
				</div>'";
				?>
				<div class="col-md-6 col-sm-6">
					<div class="about-image">
						<img src="img/about.png" alt="About Images">
					</div>
				</div>
			</div>
		</div>
	</section>
	<style>.epic{ background-color: #4CAF50; /* Green */
  border: none;
  color: white;
  padding: 15px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;}</style>


	</section>
	
</div>
<a href="#" class="scrollup"><i class="fa fa-angle-up active"></i></a>
<!-- javascript
    ================================================== -->
<!-- Placed at the end of the document so the pages load faster -->
<script src="js/jquery.js"></script>
<script src="js/jquery.easing.1.3.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/jquery.fancybox.pack.js"></script>
<script src="js/jquery.fancybox-media.js"></script> 
<script src="js/jquery.flexslider.js"></script>
<script src="js/animate.js"></script>
<!-- Vendor Scripts -->
<script src="js/modernizr.custom.js"></script>
<script src="js/jquery.isotope.min.js"></script>
<script src="js/jquery.magnific-popup.min.js"></script>
<script src="js/animate.js"></script>
<script src="js/custom.js"></script>
</body>
</html>