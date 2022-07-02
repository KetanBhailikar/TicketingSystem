<?php session_start() ?>
<!doctype html>
<html lang="en">

<head>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <!-- Bootstrap CSS -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
  <style>
    form {
      width: 50%;
      margin: auto;
    }
  </style>
  <title>Ticketster</title>
</head>

<body>
  <?php
  if(isset($_SESSION['ali'])=="yep"){
    echo "
  <h1 align='center' style='margin:5%;'>ADD City</h1>
  <form action='addedmh.php' method='POST'> 
    <div class='mb-3'>
      <label for='mhid' class='form-label'>MH_ID</label>
      <input type='text' class='form-control' id='mhid' aria-describedby='emailHelp' name='mhid'>
    </div>
    <div class='mb-3'>
      <label for='mhname' class='form-label'>MH_NAME</label>
      <input type='text' class='form-control' id='mhname' name='mhname'>
    </div>
    <div class='mb-3'>
      <label for='mhlocation' class='form-label'>MH_LOCATION</label>
      <input type='text' class='form-control' id='mhlocation' name='mhlocation'>
    </div>
    <div class='mb-3'>
      <label for='indian' class='form-label'>INDIAN PRICE</label>
      <input type='text' class='form-control' id='indian' name='indian'>
    </div>
    <div class='mb-3'>
      <label for='foreign' class='form-label'>FOREIGN PRICE</label>
      <input type='text' class='form-control' id='foreign' name='foreign'>
    </div>
    <div class='mb-3'>
      <label for='bimstec' class='form-label'>BIMSTEC PRICE</label>
      <input type='text' class='form-control' id='bimstec' name='bimstec'>
    </div>
    <div class='mb-3'>
      <label for='saarc' class='form-label'>SAARC PRICE</label>
      <input type='text' class='form-control' id='saarc' name='saarc'>
    </div>
    <div class='mb-3'>
      <label for='camera' class='form-label'>CAMERA PRICE</label>
      <input type='text' class='form-control' id='camera' name='camera'>
    </div>
    <div class='mb-3'>
      <label for='video' class='form-label'>VIDEO PRICE</label>
      <input type='text' class='form-control' id='video' name='video'>
    </div>
    <div class='mb-3'>
      <label for='description' class='form-label'>DESCRIPTION</label>
      <input type='text' class='form-control' id='description' name='description'>
    </div>
    <div class='mb-3'>
      <label for='imglink' class='form-label'>Image Link</label>
      <input type='text' class='form-control' id='imglink' name='imglink'>
    </div>
    <div class='mb-3'>
      <label for='maplink' class='form-label'>Map Link</label>
      <input type='text' class='form-control' id='maplink' name='maplink'>
    </div>
    <div class='mb-3'>
      <label for='ntd' class='form-label'>Note to Display</label>
      <input type='text' class='form-control' id='ntd' name='ntd'>
    </div>
    <button type='submit' class='btn btn-primary'>Submit</button>
  </form>";
  }
  else{
    echo "
      <script>window.location.href='adminlogin.html'</script>
    ";
  }

  ?>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
    crossorigin="anonymous"></script>
</body>

</html>