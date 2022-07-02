<?php session_start(); 
    $con = mysqli_connect("localhost","root","","tickets");
?>
<!doctype html>
<html lang="en">

<head>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

    <title>Ticket</title>
    <style>
        @media print{
            .noprint{
                display:none;
            }
            .whole{
                width: 60%;
            }
            body{
                display:flex;
                justify-content:center;
            }
        }
        .center{
            text-align:center;
        }
    </style>
    <style>
        .label {
            font-size: x-small;
            color: grey;
        }

        .matter {
            color: blueviolet;
            font-weight: 500;
        }

        .cont {
            width: 150px;
            margin: 2%;
        }

        #qrcode{
            margin-top:5%;
            padding:5%;
            text-align:center;
        }
        #bigimage{
            -webkit-print-color-adjust: exact;
        }
    </style>
    <script>
        function pr(){
            window.print();
        }
    </script> 
</head>
<?php if(isset($_SESSION['li']) == "yep"){$v = "Logout";}else{$v = "Login";} ?>

<body>
    <nav class="navbar navbar-expand-lg navbar-light noprint">
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
            <a class="nav-link active" aria-current="page" href = "index.php">Home</a>
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
            <a class='nav-link' href='purchasehistory.php'>Purchase History</a>
          </li>
            ";
          }
          ?>
        </ul>
      </div>
    </div>
  </nav>
    <div class="whole">
<?php
    $tid = $_POST['tid'];
    $row = mysqli_query($con,"SELECT * FROM `ticket_table` WHERE TICKET_ID = '$tid'");
    $res = mysqli_fetch_assoc($row);
    $tf = $res['MH_NAME'];
    $il = mysqli_fetch_assoc(mysqli_query($con,"SELECT IMG_LINK FROM mh_table where MH_NAME = '$tf'"));
    $il = $il['IMG_LINK'];
    $doi = $res['DATE_OF_ISSUE'];
    echo "
        <div id='bigimage'
        style='position:relative;height:30vh;background:linear-gradient(rgba(255,255,255,0),rgba(0,0,0)),url(".$il.");background-size:cover;background-position:center;'>
        <h1 align='center' style='color:white;position:relative;top:20vh;font-family:Times New Roman'>
        ".$res['MH_NAME']."
        </h1>
    </div>
    <div id='det' style='margin:3%;'>
    <div id='qrcode' class='shadow rounded mb-2 pb-3' style=';border: solid 1px rgba(128, 128, 128, 0.425);display:flex;justify-content:center;'>
    </div>
        <div id='con' class='p-3 shadow rounded'
            style='display: flex;width: 100%;justify-content: space-around;flex-wrap: wrap;border: solid 1px rgba(128, 128, 128, 0.425);'>
            <div class='cont'>
                <div class='label'>NAME</div>
                <div class='matter'>".$res['USER_NAME']."</div>
            </div>
            <div class='cont'>
                <div class='label'>DATE</div>
                <div class='matter'>".$doi."</div>
            </div>
            <div class='cont'>
                <div class='label'>QUANTITY</div>
                <div class='matter'>".$res["QUANTITY"]."</div>
            </div>
            <div class='cont'>
                <div class='label'>AMOUNT</div>
                <div class='matter'>".$res["TOTAL_AMOUNT"]."</div>
            </div>
            <div class='cont'>
                <div class='label'>PAYMENT ID</div>
                <div class='matter' style='word-wrap:break-word;'>".$tid."</div>
            </div>
            <div class='cont'>
                <div class='label'>Status</div>
                <div class='matter'>Successful</div>
            </div>
        </div>
        
        ";

    echo "
    <script src='https://cdn.rawgit.com/davidshimjs/qrcodejs/gh-pages/qrcode.min.js'></script>

    <script> 
        var isthere = false
        function generate_qr(b) {
            var q = new QRCode(document.getElementById('qrcode'), {text:b,width:150,height:150,colorDark:'blueviolet'});
        }
        generate_qr('".$tid."')
	</script>";
?>
</div>
<div style="width:100%;display:flex;justify-content:center;">  <button  class="btn-primary rounded p-2 noprint" style="margin-top:2%" onclick ="pr()"> Print</button></div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</body>
</html>