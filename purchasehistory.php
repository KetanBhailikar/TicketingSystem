<?php session_start();
$con = mysqli_connect("localhost","root","","tickets");
?>
<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

    <style>
        h1{
            margin:5%;
        }
    </style>
    <title>Purchase History</title>
  </head>
  <?php if(isset($_SESSION['li']) == "yep"){$v = "Logout";}else{$v = "Login";} ?>
  <body>
  <nav class="navbar navbar-expand-lg navbar-light ">
    <div class="container-fluid">
      <a class="navbar-brand" href="index.php">
        <img src="https://thumbs.dreamstime.com/b/ticket-icon-white-background-vector-illustration-eps-113357837.jpg"
          alt="" width="30" height="24" class="d-inline-block align-text-top">
      </a>
      <a class="navbar-brand" href="index.php"><b>Ticketster</b></a>
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav"
        aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarNav">
      <ul class="navbar-nav">
        <li class="nav-item">
            <a class="nav-link" aria-current="page" href = "index.php">Home</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" aria-current="page" href= <?php echo "'".$v.".html'" ?> ><?php echo $v ?></a>
          </li>
          <?php
          if(isset($_SESSION['li']) != "yep"){
            echo "
            
            <li class='nav-item'>
            <a class='nav-link' href='Login2.html'>Register</a>
          </li>
            ";
          }
          ?>
          <li class='nav-item'>
            <a class='nav-link' href='cities.php'>Cities</a>
          </li>
          <?php 
          if(isset($_SESSION['li']) == "yep"){
            echo "
            
          <li class='nav-item'>
            <a class='nav-link active' href='purchasehistory.php'>Purchase History</a>
          </li>
            ";
          }
          ?>
        </ul>
      </div>
    </div>
  </nav>
      <h1 align="center">Purchase History</h1>
      <?php
    if($con){
        $uname = $_SESSION['username'];
        $places = mysqli_query($con,"SELECT * FROM `ticket_table` WHERE USER_ID = '$uname'");
        while ($row = mysqli_fetch_assoc($places)) {
            $mhn = $row['MH_NAME'];
            $tid = $row['TICKET_ID'];
            $row2 = mysqli_fetch_assoc(mysqli_query($con,"SELECT IMG_LINK FROM mh_table WHERE MH_NAME = '$mhn'"));
            if($row['STATUS'] == "USED"){ 
              echo "
              <form action ='ticket.php' method='POST' style='width:100%;display:flex;justify-content:center'>
                  <input type='hidden' value='$tid' name='tid' >
                  <button type='submit' style='text-align:left;width:90%;background-color: rgba(240, 248, 255, 0);border: none;' disabled>
                      <div id='tick' class='rounded card shadow p-3 mb-3'
                          style='color:white;width: 100%;background: linear-gradient(to right,rgb(0, 0, 0),rgba(255, 255, 255, 0)),url(".$row2['IMG_LINK'].");background-position: center;background-size: cover;'>
                          <h3>".$row['MH_NAME']."</h3>
                          <div>Date: ".$row['DATE_OF_ISSUE']."</div>
                          <div>Status: <font style='color:red;'>EXPIRED</font></div>
                      </div>
                  </button>
              </form>
            " ;
            }
            else{
            echo "
            <form action ='ticket.php' method='POST' style='width:100%;display:flex;justify-content:center'>
                <input type='hidden' value='$tid' name='tid' >
                <button type='submit' style='text-align:left;width:90%;background-color: rgba(240, 248, 255, 0);border: none;'>
                    <div id='tick' class='rounded card shadow p-3 mb-3'
                        style='color:white;width: 100%;background: linear-gradient(to right,rgb(0, 0, 0),rgba(255, 255, 255, 0)),url(".$row2['IMG_LINK'].");background-position: center;background-size: cover;'>
                        <h3>".$row['MH_NAME']."</h3>
                        <div>Date: ".$row['DATE_OF_ISSUE']."</div>
                        <div>Status: <font style='color:lightgreen;'>VALID</font></div>
                    </div>
                </button>
            </form>
            " ;
            }
        } 
    }
  ?>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
  </body>
</html>