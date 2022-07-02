<?php
    $con = mysqli_connect("localhost","root","","tickets");
    $a = mysqli_query($con,"delete from city_table where CITY_NAME = '".$_POST['cityname']."'");
    if($a){
        echo "City Removed Successfully!<br><a href='adminmenu.php'>Menu</a><br><a href='removecity.php'>Remove another City</a>";
    }
    else{
        echo "Oops! Something went wrong. :|";
    }
?>