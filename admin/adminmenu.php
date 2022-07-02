<?php session_start(); 
$con = mysqli_connect("localhost","root","","tickets");
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <title>Menu</title>
</head>

<body>
    <?php  
     if(isset($_SESSION['ali']) != "yep"){
        echo "<script>window.location.href='adminlogin.html '</script>";
     }
     else if(mysqli_fetch_assoc(mysqli_query($con,"select admin_type,area from admin_t where USER_ID ='".$_SESSION['ausername']."'"))['admin_type'] == 'main'){
         $addmh = "window.location.href='addmh.php'";
         $removemh = "window.location.href='removemh.php'";
         $addadmin = "window.location.href='addadmin.php'";
         $removeadmin = "window.location.href='removeadmin.php'";
         $addcity = "window.location.href='addcity.php'";
         $removecity = "window.location.href='removecity.php'";
         echo "<h1 align='center' style='margin-top:4%'>Admin Control Panel</h1>
         <div id='options' style='width: 100%;margin-top: 5%;'>
             <div style='display:flex;justify-content: center;flex-wrap: wrap;'>
                 <div class='btn-primary p-3 shadow rounded' style='cursor: pointer; margin:3%;min-width: 200px;' onclick =$addmh>
                     Add MH
                 </div>
                 <div class='btn-primary p-3 shadow rounded' style='cursor: pointer;margin:3%;min-width: 200px;' onclick=$addadmin>
                     Add Admin
                 </div>
             </div>
             <div style='display:flex;justify-content: center;flex-wrap: wrap;'>
                 <div class='btn-primary p-3 shadow rounded' style='cursor: pointer; margin:3%;min-width: 200px;'onclick =$removemh>
                     Remove MH
                 </div>
                 <div class=' btn-primary p-3 shadow rounded' style='cursor: pointer;margin:3%;min-width: 200px;'onclick=$removeadmin>
                     Remove Admin
                 </div>
             </div>
             <div style='display: flex;justify-content: center;flex-wrap: wrap;'>
                <div class='btn-primary p-3 shadow rounded' style='cursor: pointer;margin:3%;min-width: 200px;'onclick=$addcity>
                    Add City
                </div> 
                <div class='btn-primary p-3 shadow rounded' style='cursor: pointer;margin:3%;min-width: 200px;'onclick=$removecity>
                     Remove City
                 </div>
             </div>
         </div>";
     }
     else if(mysqli_fetch_assoc(mysqli_query($con,"select admin_type,area from admin_t where USER_ID ='".$_SESSION['ausername']."'"))['admin_type'] == 'regional'){
        $addmh = "window.location.href='addmh.php'";
        $removemh = "window.location.href='removemh.php'";
        $addadmin = "window.location.href='addadmin.php'";
        $removeadmin = "window.location.href='removeadmin.php'";
        echo "<h1 align='center' style='margin-top:4%'>Admin Control Panel</h1>
        <div id='options' style='width: 100%;margin-top: 5%;'>
            <div style='display:flex;justify-content: center;flex-wrap: wrap;'>
                <div class='btn-primary p-3 shadow rounded' style='cursor: pointer; margin:3%;min-width: 200px;' onclick =$addmh>
                    Add MH
                </div>
                <div class='btn-primary p-3 shadow rounded' style='cursor: pointer; margin:3%;min-width: 200px;'onclick =$removemh>
                    Remove MH
                </div>
            </div>
            <div style='display: flex;justify-content: center;flex-wrap: wrap;'>
                <div class='btn-primary p-3 shadow rounded' style='cursor: pointer;margin:3%;min-width: 200px;'>
                    View Bookings
                </div>
            </div>
        </div>";
     }
     else if(mysqli_fetch_assoc(mysqli_query($con,"select admin_type,area from admin_t where USER_ID ='".$_SESSION['ausername']."'"))['admin_type'] == 'monument'){
        $addmh = "window.location.href='scanner.php'";
        $vb = "window.location.href='ins.php'";

        echo "<h1 align='center' style='margin-top:4%'>Admin Control Panel</h1>
        <div id='options' style='width: 100%;margin-top: 5%;'>
            <div style='display: flex;justify-content: center;flex-wrap: wrap;'>
                <div class='btn-primary p-3 shadow rounded' style='cursor: pointer;margin:3%;min-width: 200px;'onclick = $addmh>
                    Open Scanner
                </div>
                <div class='btn-primary p-3 shadow rounded' style='cursor: pointer;margin:3%;min-width: 200px;' onclick = $vb>
                    View Bookings
                </div>
            </div>
        </div>";
     }
    ?>

    <script src='https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js'
        integrity='sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p'
        crossorigin='anonymous'></script>
</body>

</html>