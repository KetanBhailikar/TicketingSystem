<?php
    $con = mysqli_connect("localhost","root","","tickets");
    $mhn = $_POST['mhname'];
    $a = mysqli_query($con,"delete from mh_table where MH_NAME = '$mhn'");
    if($a){
        echo "MH Removed Successfully!<br><a href='adminmenu.php'>Menu</a><br><a href='removemh.php'>Remove another MH</a>";
    }
    else{
        echo "Oops! Something went wrong. :|";
    }
?>