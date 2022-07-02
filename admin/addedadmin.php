<?php
    $con = mysqli_connect("localhost","root","","tickets");
    $a = mysqli_query($con,"INSERT INTO `admin_t` VALUES ('".$_POST['adminid']."','".$_POST['adminpass']."','".$_POST['phno']."','".$_POST['email']."','','')");
    if($a){
        echo "Admin added Successfully!<br><a href='adminmenu.php'>Menu</a><br><a href='addadmin.php'>Add another Admin</a>";
    }
    else{
        echo "Oops! Something went wrong. :|";
    }
?>