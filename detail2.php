<?php 
session_start();
$con = mysqli_connect("localhost","root","","tickets"); ?>

<!doctype html>
<html lang="en">

<head>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <!-- Bootstrap CSS -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
  <title>Ticketster</title>
  <style>

    #left{
      width:100%;
      padding:20px;
    }

    #smallcontainer{
      width:100%;
      display:flex;
      flex-wrap:wrap;
      justify-content:center;
    }

    #content {
      display: flex;
      flex-wrap: wrap;
      align-items: center;
      justify-content: center;
    }

    .card>h3 {
      font-size: small;
    }

    form {
      margin: 2%;
    }

    .card {
      width: 10rem;
      height: 10rem;
      color: rgb(199, 199, 199);
      transition: all ease 0.1s;
    }

    .card:hover {
      color: white;
      cursor: pointer;
    }
    
    @media(min-width:700px){
      #left,#right{
      width:40%;
      padding:20px;
    }
    }
  </style>
  <script>
    var extra = 0;

    function es(){
        ppt = document.getElementById("ppt").value
        numtik = document.getElementById("tickets").value
        document.getElementById("estimate").value = ppt*numtik + extra;
        document.getElementById("es2").value = document.getElementById("estimate").value
    }

    function inc(){
      document.getElementById("tickets").value = parseInt(document.getElementById("tickets").value) + 1
      es()
    }

    function dec(){
      if(parseInt(document.getElementById("tickets").value) > 1){
        document.getElementById("tickets").value = parseInt(document.getElementById("tickets").value) - 1
        es()
      }
    }
    
  </script>

  <?php
    $tu = $_POST['des'];
    $a = mysqli_query($con,"select FOREIGN_,BIMSTEC,SAARC,INDIAN,CAMERA,VIDEO FROM mh_table WHERE MH_NAME ='$tu'");
    $uu = mysqli_fetch_assoc($a);
    echo "<script>
    
    var a = false;
    var b = false;

    function addprice(){
      if(a == false){
        extra += ".$uu['CAMERA']."
        a = true
      }
      else{
        extra -= ".$uu['CAMERA']."
        a = false
      }
      es()
    }

    function addprice2(){
      if(b == false){
        extra += ".$uu['VIDEO'].";
        b = true
      }
      else{
        extra -= ".$uu['VIDEO'].";
        b = false
      }
      es()
    }
    
    function changeprice(){
      var s = document.getElementById('sel').value
      if(s == 'Foreigner'){
        document.getElementById('ppt').value = ".$uu['FOREIGN_']."
      }
      else if(s == 'BIMSTEC'){
        document.getElementById('ppt').value = ".$uu['BIMSTEC']."
      }
      else if(s == 'SAARC'){
        document.getElementById('ppt').value = ".$uu['SAARC']."
      }
      else if(s == 'INDIAN'){
        document.getElementById('ppt').value = ".$uu['INDIAN']."
      }
      es()
    }</script>";
  ?>
  
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
            <a class="nav-link" href="index.php">Home</a>
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

  <?php 
            $t = $_POST['des'];
            $u= mysqli_query($con,"select IMG_LINK,MH_NAME,DESCRIPTION,MAP_LINK,NOTE FROM mh_table WHERE MH_NAME ='$t'");
            $u = mysqli_fetch_assoc($u); 
            $_SESSION['image_link'] = $u['IMG_LINK'];

            if($u['NOTE'] != NULL){
              echo "
              
<div class='alert alert-primary d-flex align-items-center' role='alert'>
  <svg class='bi flex-shrink-0 me-2' width='24' height='24' role='img' aria-label='Info:'><use xlink:href='#info-fill'/></svg>
  <div>
".$u['NOTE']."
  </div>
</div>
              ";
            }
        ?>
  <!-- Nav Bar is over -->
  <div id="container">
        
        <script>
          function red(){
      window.location.href= <?php echo "'".$u['MAP_LINK']."'" ?>
    }
          </script>
    <div id="bigimage" style="position:relative;height:40vh;background:linear-gradient(rgba(255,255,255,0),rgba(0,0,0)),url(<?php echo $u['IMG_LINK'] ?>);background-size:cover;background-position:center;" > 
      <h1 align="center" style="color:white;position:relative;top:30vh;font-family:Times New Roman"><?php echo $u['MH_NAME'] ?></h1>
    </div>
    <div>
    <p style="padding:20px;text-align:justify;margin-bottom:0"><?php echo $u['DESCRIPTION'] ?></p>
    </div>
    <div style="display:flex;justify-content:center;" id="dir"><button onclick="red()"  type="button" class="btn btn-primary" style="width:80%;" align = "center">Directions</button></div>
    <div id="smallcontainer">
    <div id="left">
      <h3 align="center">Details</h3>
      <form class = "m-5 needs-validation" action = "pay.php" method = "post">

        <input type="hidden" name="amt" id ="es2" value = <?php echo "'".$_POST['amt']."'"; ?>>
        <input type="hidden" name="des" value = <?php echo "'".$_POST['des']."'"; ?>>

        <div class="mb-3">
            <label for="place" class="form-label">Place</label>
            <input type="text" class="form-control" id="place" value= <?php echo "'".$_POST['des']."'"; ?> disabled>
        </div>
        <div class="mb-3">
            <label for="tickets" class="form-label">Price Per Ticket</label>
            <input id="ppt" type="text" class="form-control" value= <?php echo "'".$_POST['amt']."'"?> disabled>
        </div>
        <div class="mb-3">
            <label for="dateOfVisit" class="form-label">Visit Date:</label>
            <input type="date" min="2022-03-26" max="2022-04-01" class="form-control" id="dateOfVisit" name = "date" required>
        </div>
        <div class="mb-3">
            <label for="dateOfVisit" class="form-label">Nationality</label>
            <select class="form-select" aria-label="Default select example" id="sel" placeholder="Nationality" onchange="changeprice()" required>
              <option value = "INDIAN">Indian</option>
              <option value="Foreigner">Foreigner</option>
              <option value="BIMSTEC">BIMSTEC</option>
              <option value="SAARC">SAARC</option>
            </select>
        </div>
        <div class="mb-3">
            <label for="tickets" class="form-label">Number of Tickets</label><br>
            <div style="display:flex;"><div onclick="dec()" id="dec" class="btn btn-success">-</div>  <input style="text-align:center;" onkeyup = "es()" type="text" class="form-control" id="tickets" value="1" name="numtik"><div id="inc" onclick = "inc()" class="btn btn-success">+</div></div>
        </div>
        <div class="mb-3">
            <label for="tickets" class="form-label">Amount to be Paid</label>
            <input id="estimate" type="number" value = <?php echo "'".$_POST['amt']."'"; ?> class="form-control" disabled>
        </div>
        <div class="form-check" class="mb-3" >
          <input class="form-check-input" type="checkbox" value="" id="camera" onclick="addprice()">
          <label class="form-check-label" for="camera" >
            I have a Camera with me
          </label>
        </div>
        <div class="form-check" class="mb-3" >
          <input class="form-check-input" type="checkbox" value="" id="videocamera" onclick="addprice2()">
          <label class="form-check-label" for="videocamera">
            I have a Video Camera with me
          </label>
        </div>
        <div style="margin-top:2%;width:100%;text-align:center;">
          <button type="submit" class="btn btn-primary" style="margin-left:auto;margin-top:10%; width:100%;height:55px" <?php if(!isset($_SESSION['li'])){echo "disabled";} ?>>Book Now</button>
          <?php if(!isset($_SESSION['li'])){echo "<a href='Login.html'>Please Login First</a>";} ?>
        </div>
      </form>
    </div>
    </div>
  </div>
  

  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
    crossorigin="anonymous"></script>
</body>

</html>