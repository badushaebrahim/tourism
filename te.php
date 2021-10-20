<?php
include'./dbcheck.inc.php';
$q="SELECT count(*) as count FROM `userregistration`WHERE `Email`='no''";
$s=mysqli_query($conn,$q);
 //$f=mysqli_fetch_array($s);
 echo"$s";
 if(!$s){
	 echo"12";
 }else{
	 echo"13";
 }

?>