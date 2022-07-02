<?php
    $con = mysqli_connect("localhost","root","","tickets");
    $un = $_POST['un'];
    $e = $_POST['email'];
    $pw =$_POST['pw'];
    $res = mysqli_query($con,"insert into user_details values('$un','$un','$e','something','$pw','1947-08-15','0:0:0','INDIAN')");
    if($res){
        echo "Registration Successful!";
        echo "<script>window.location.href='index.php'</script>";
    }
    else{
        echo "Username Already Taken. Please Try Again!";
    }
?>