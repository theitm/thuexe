<?php
session_start();
require('lib/connection.php');
$id=$_GET['item'];

 		$xacnhan = mysqli_query($conn, "SELECT * FROM dondatmoi2 WHERE ID= '$id'");
    	$rowxacnhan=mysqli_fetch_array($xacnhan);

    	$username=$rowxacnhan['username'];
    	$tongtien=$rowxacnhan['tongtien'];
    	$ngaydat=$rowxacnhan['ngaydat'];
 

    	

    	 $themctDonDat="INSERT INTO donhangxong(ID,username,tongtien,ngaydat) VALUES('".$id."','".$username."','".$tongtien."','".$ngaydat."')";
            mysqli_query($conn,$themctDonDat);
    $xoa="DELETE FROM dondatmoi2 WHERE dondatmoi2.ID = '$id'";
    mysqli_query($conn,$xoa);





header("location:index.php");

?>

