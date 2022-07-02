<?php
    $con = mysqli_connect("localhost","root","","tickets");
    $a = mysqli_query($con,"INSERT INTO `mh_table` VALUES ('".$_POST['mhid']."','".$_POST['mhname']."','".$_POST['mhlocation']."','".$_POST['indian']."','".$_POST['foreign']."','".$_POST['bimstec']."','".$_POST['saarc']."','".$_POST['camera']."','".$_POST['video']."','".$_POST['description']."','".$_POST['imglink']."','".$_POST['maplink']."'),'".$_POST['ntd']."')");
    if($a){
        echo "MH added Successfully!<br><a href='adminmenu.php'>Menu</a><br><a href='addmh.php'>Add another MH</a>";
    }
    else{
        echo "Oops! Something went wrong. :|";
    }
?>