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
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

  <title>Ticketster</title>
  <style>
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
  </style>
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
        <li class='nav-item'>
            <a class='nav-link' href='index.php'>Home</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" aria-current="page" href= <?php echo "'".$v.".html'" ?> ><?php echo $v ?></a>
          </li>
          
          <?php 
            if(isset($_SESSION['li']) != "yep"){
              echo "
            <li class='nav-item'>
              <a class='nav-link' href='Login2.php'>Register</a>
            </li>
              ";
            }
            ?>
            <li class='nav-item'>
            <a class='nav-link active' href='cities.php'>Cities</a>
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

  <form class="d-flex" action="search.php" method="post" style="margin-inline:8%;margin-top:2%;margin-bottom: 2%;">
    <input class="form-control " type="search" placeholder="Search" aria-label="Search" name="mon">
    <button class="btn btn-outline-success" type="submit">Search</button>
  </form>
  <!-- Nav Bar is over -->

  <!-- Cities -->
  <div id="content">
    <?php
      $places = mysqli_query($con,"select * from city_table");
      while ($row = mysqli_fetch_assoc($places)) {
        echo "
        <form action='getmon.php' method='post'>
        <input type='hidden' value='".$row['CITY_NAME']."' name='city'>
        <button type='submit' style='background-color: rgba(240, 248, 255, 0);border: none;'>
          <div class='card'
            style='background: linear-gradient(rgba(253, 253, 253, 0),rgb(0, 0, 0)), url(".$row['IMG_LINK'].");background-position: center; background-size: cover ;'>
            <h3 align='center' id='name' style='margin-top:80%;'>".$row['CITY_NAME']."</h3>
          </div>
        </button>
      </form>
        " ;
    } 

    ?>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
    crossorigin="anonymous"></script>
</body>

</html>