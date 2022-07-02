<?php
    $con = mysqli_connect("localhost","root","","tickets");
    $a = mysqli_query($con,"delete from admin_t where USER_ID ='".$_POST['adminid']."'");
    if($a){
        echo "Admin removed Successfully!<br><a href='adminmenu.php'>Menu</a><br><a href='removeadmin.php'>Remove another Admin</a>";
    }
    else{
        echo "Oops! Something went wrong. :|";
    }
?>