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
  <h1 align='center' style='margin:5%;'>Remove City</h1>
  <form action='removedcity.php' method='POST'> 
    <div class='mb-3'>
      <label for='cityname' class='form-label'>CITY_NAME</label>
      <input type='text' class='form-control' id='cityname' aria-describedby='emailHelp' name='cityname'>
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