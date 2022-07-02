<?php
    $t = $_POST['code'];
    $con = mysqli_connect("localhost","root","","tickets");
    $re = mysqli_fetch_assoc(mysqli_query($con,"select * from ticket_table where TICKET_ID = '$t'"));
    $mhn = $re['MH_NAME'];
    $mhl = $re['MH_LOCATION'];
    $q = $re['QUANTITY'];
    mysqli_query($con,"INSERT INTO `mh_visitors`(`MH_NAME`, `MH_LOCATION`, `NO_OF_VISITORS`) VALUES ('$mhn','$mhl','$q')");
    mysqli_query($con,"UPDATE `ticket_table` SET `STATUS`='USED'  WHERE TICKET_ID ='$t'");
    echo "<script>window.open('', '_self', ''); window.close();</script>";
?>