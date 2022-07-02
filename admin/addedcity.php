<?php
    $con = mysqli_connect("localhost","root","","tickets");
    $a = mysqli_query($con,"INSERT INTO `city_table` VALUES ('".$_POST['cityname']."','".$_POST['imglink']."')");
    if($a){
        echo "City Added Successfully!<br><a href='adminmenu.php'>Menu</a><br><a href='addcity.php'>Add another City</a>";
    }
    else{
        echo "Oops! Something went wrong. :|";
    }
?>