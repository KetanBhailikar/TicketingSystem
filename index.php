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

    #popmon{
      display: flex;
      justify-content: center;
      flex-wrap:wrap;
    }

    #heading{
      margin:2%;
      text-align:center;
    }

    @media (max-width:600px){
      #heading{
        margin:10%;
        text-align:center;
      }
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
        <li class="nav-item">
            <a class="nav-link active" aria-current="page" href = "index.php">Home</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" aria-current="page" href= <?php echo "'".$v.".php'" ?> ><?php echo $v ?></a>
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

  <form class="d-flex" action="search.php" method="post" style="margin-inline:8%;margin-top:2%;margin-bottom: 2%;">
    <input class="form-control " type="search" placeholder="Search" aria-label="Search" name="mon">
    <button class="btn btn-outline-success" type="submit">Search</button>
  </form>
  <!-- Nav Bar is over -->

  <div id="bgimage" style="background-image:url(https://static.independent.co.uk/s3fs-public/thumbnails/image/2017/10/03/17/tajmahal.jpg?quality=75&width=982&height=726&auto=webp);margin-bottom:2%;background-size: cover;background-position: center;height:40vh;"></div>
  <h3 id="heading">Popular Monuments</h3>
<div id="popmon">

  <form action="detail2.php" method="post">
  <input type="hidden" value="45.00" name="amt">
  <input type="hidden" value="TAJ MAHAL" name="des">
  <button type="submit" style="background-color: rgba(240, 248, 255, 0);border: none;">
      <div class="card" style="background: linear-gradient(rgba(253, 253, 253, 0),rgb(0, 0, 0)), url(https://lh5.googleusercontent.com/p/AF1QipOwcynxRpNebAQYvogATP7Bg7j0k45R21LWYlCN=w408-h306-k-no);background-position: center; background-size: cover ;">
      <h3 align="center" id="name" style="margin-top:80%;">TAJ MAHAL</h3>
      </div>
  </button>
  </form>

  <form action="detail2.php" method="post">
  <input type="hidden" value="20.00" name="amt">
  <input type="hidden" value="QUTUB MINAR" name="des">
  <button type="submit" style="background-color: rgba(240, 248, 255, 0);border: none;">
      <div class="card" style="background: linear-gradient(rgba(253, 253, 253, 0),rgb(0, 0, 0)), url(https://lh5.googleusercontent.com/p/AF1QipMBgN_tBk5DzfMbZ4LFJ9s_9ZnuPaNLDRq_vAgr=w408-h840-k-no);background-position: center; background-size: cover ;">
      <h3 align="center" id="name" style="margin-top:80%;">QUTUB MINAR</h3>
      </div>
  </button>
  </form>

  <form action="detail2.php" method="post">
  <input type="hidden" value="20.00" name="amt">
  <input type="hidden" value="CHARMINAR " name="des">
  <button type="submit" style="background-color: rgba(240, 248, 255, 0);border: none;">
      <div class="card" style="background: linear-gradient(rgba(253, 253, 253, 0),rgb(0, 0, 0)), url(https://lh5.googleusercontent.com/p/AF1QipM2MnGdaMrZQNH6p_lW8TDYzzeLQteaDV3ISF60=w408-h544-k-no);background-position: center; background-size: cover ;">
      <h3 align="center" id="name" style="margin-top:80%;">CHARMINAR </h3>
      </div>
  </button>
  </form>

  <form action="detail2.php" method="post">
  <input type="hidden" value="20.00" name="amt">
  <input type="hidden" value="RED FORT   " name="des">
  <button type="submit" style="background-color: rgba(240, 248, 255, 0);border: none;">
      <div class="card" style="background: linear-gradient(rgba(253, 253, 253, 0),rgb(0, 0, 0)), url(https://lh5.googleusercontent.com/p/AF1QipMooT0abtOcrV0_GdESL9ZuQQtgkEFRqf8bNi5P=w426-h240-k-no);background-position: center; background-size: cover ;">
      <h3 align="center" id="name" style="margin-top:80%;">RED FORT   </h3>
      </div>
  </button>
  </form>

  <form action="detail2.php" method="post">
  <input type="hidden" value="20.00" name="amt">
  <input type="hidden" value="BISHNUPUR TEMPLES" name="des">
  <button type="submit" style="background-color: rgba(240, 248, 255, 0);border: none;">
      <div class="card" style="background: linear-gradient(rgba(253, 253, 253, 0),rgb(0, 0, 0)), url(https://s3.ap-southeast-1.amazonaws.com/gounesco.com/wp-content/uploads/2016/05/12202632/Rasmanch-3-1024x759.jpg);background-position: center; background-size: cover ;">
      <h3 align="center" id="name" style="margin-top:80%;">BISHNUPUR TEMPLES</h3>
      </div>
  </button>
  </form>

  <form action="detail2.php" method="post">
  <input type="hidden" value="20.00" name="amt">
  <input type="hidden" value="ANCIENT SITE, BHANGARH" name="des">
  <button type="submit" style="background-color: rgba(240, 248, 255, 0);border: none;">
      <div class="card" style="background: linear-gradient(rgba(253, 253, 253, 0),rgb(0, 0, 0)), url(https://lh5.googleusercontent.com/p/AF1QipPvqAdrjIhBcE2SZDqhiHoooncNNv9fdh1hCNIj=w408-h306-k-no);background-position: center; background-size: cover ;">
      <h3 align="center" id="name" style="margin-top:80%;">ANCIENT SITE, BHANGARH</h3>
      </div>
  </button>
  </form>

  <form action="detail2.php" method="post">
  <input type="hidden" value="20.00" name="amt">
  <input type="hidden" value="AJANTA CAVES" name="des">
  <button type="submit" style="background-color: rgba(240, 248, 255, 0);border: none;">
      <div class="card" style="background: linear-gradient(rgba(253, 253, 253, 0),rgb(0, 0, 0)), url(https://www.unclesamholidays.com/gallery/Ajanta-Caves01.jpg);background-position: center; background-size: cover ;">
      <h3 align="center" id="name" style="margin-top:80%;">AJANTA CAVES</h3>
      </div>
  </button>
  </form>

  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
    crossorigin="anonymous"></script>
</body>

</html>