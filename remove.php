<?php
include'./dbcheck.inc.php';
$id=$_GET['id'];

$me="DELETE FROM `packages` WHERE `pack_no`=$id";
if(mysqli_query($conn, $me)){
    echo "<script>location.href='home2.php'</script>";
}
else{
echo "<script>alert('error')</script>";
}


?>