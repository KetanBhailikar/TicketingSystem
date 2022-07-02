<?php
session_start();
$con = mysqli_connect("localhost","root","","tickets");
$un = $_POST['un'];
$p = $_POST['pass'];
$t = mysqli_query($con,"SELECT * FROM admin_t WHERE USER_ID = '$un'");
if(mysqli_num_rows($t) == 1){
    $t = mysqli_fetch_assoc($t);
    if($t['PASSWORD'] == $p){
        echo "Login Successful!";
        $_SESSION['ali'] = "yep";
        $_SESSION['ausername'] = $un;
        echo "<script>location.href ='adminmenu.php'</script>";
    }
    else{
        echo "Invalid";
    }
}
?>