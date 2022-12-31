<?php
session_start();
$con = mysqli_connect("localhost","root","","tickets");
$un = $_POST['un'];
$p = $_POST['pass'];
$t = mysqli_query($con,"SELECT * FROM user_details WHERE USER_NAME = '$un'");
if(mysqli_num_rows($t) == 1){
    $t = mysqli_fetch_assoc($t);
    if($t['PASSWORD'] == $p){
        $_SESSION['li'] = "yep";
        $_SESSION['username'] = $un;
        echo "<script>alert('Done');</script>";
        echo "<script>location.href = 'index.php'</script>";
    }
    else{
        echo "<script>alert('Invalid Credentials')</script>";
        echo "<script>location.href = 'Login.html'</script>";
    }
}
else{
        echo "<script>location.href = 'Login.html'</script>";
        echo "<script>alert('Invalid Credentials')</script>";
}
?>