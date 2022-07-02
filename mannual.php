<html>
<head>
<meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

<style>
        .con{
            display:flex;
            flex-direction:column;
            align-items:center;
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
<!-- <?php echo "<h3 style='font-family:sans-serif;'>Press pay to Book a Ticket for $des</h3>" ?> -->
<div id="bigimage" style="width:100%;height:40vh;background:linear-gradient(rgba(255,255,255,0),rgba(0,0,0)),url(<?php echo $_SESSION['image_link'] ?>);background-size:cover;background-position:center;" >
<h1 align="center" style="color:white;position:relative;top:30vh;font-family:Times New Roman"><?php echo $_SESSION['des'] ?></h1>
    </div>
<h3 align="center" style="margin-top:2%">Confirm Booking Details</h3>

<div class="con">
<form class = "m-2" style="width:80%">
        <input type="hidden" name="amt" value = <?php echo "'".$_SESSION['amt']."'"; ?>>
        <div class="mb-3">
            <label for="place" class="form-label">Place</label>
            <input type="text" class="form-control" id="place" value= <?php echo "'".$_SESSION['des']."'"; ?> name = <?php echo "'".$_POST['des']."'"; ?> disabled>
        </div>
        <div class="mb-3">
            <label for="dateOfVisit" class="form-label">Visit Date:</label>
            <input type="date" class="form-control" id="dateOfVisit" value= <?php echo "'".$_SESSION['date']."'"; ?> name = "date"  disabled>
        </div>
        <div class="mb-3">
            <label for="tickets" class="form-label">Number of Tickets</label>
            <input type="number" class="form-control" id="tickets" name="numtik" value= <?php echo "'".$_SESSION['numtik']."'"; ?> disabled>
        </div>
        <div class="mb-3">
            <label for="amt" class="form-label">Amount</label>
            <input type="number" class="form-control" id="amt" name="numtik" value= <?php echo "'".$_SESSION['amt']."'"; ?> disabled>
        </div>
    </form>


<div id="rzp-button1" class="btn-primary rounded p-2" style="width:80%;height:55px;text-align:center;cursor:pointer" ><p style="font-size:larger;">Pay</p></div>
</div>

<script src="https://checkout.razorpay.com/v1/checkout.js"></script>

<form name='razorpayform' action="verify.php" method="POST"> <input type="hidden" name="razorpay_payment_id"
        id="razorpay_payment_id"> <input type="hidden" name="razorpay_signature" id="razorpay_signature"></form>
<script>
// Checkout details as a json
var options = <?php echo $json ?>;
/*** The entire list of checkout fields is available at* https://docs.razorpay.com/docs/checkout-form#checkout-fields*/
options.handler = function (response){    
        document.getElementById('razorpay_payment_id').value = response.razorpay_payment_id;    
        document.getElementById('razorpay_signature').value = response.razorpay_signature;    
        document.razorpayform.submit();};// Boolean whether to show image inside a white frame. (default: true)
        options.theme.image_padding = false;
        var rzp = new Razorpay(options);
        document.getElementById('rzp-button1').onclick = function(e){    
                rzp.open();    
                e.preventDefault();
        }
</script>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>

</body>
</html>