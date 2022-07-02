<?php session_start(); ?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <style>
    form {
      width: 50%;
      margin: auto;
    }
  </style>
    <title>Add Admin</title>
</head>
<body>
    <?php
        if(isset($_SESSION['ali'])=="yep"){
            echo "
            <h1 align='center' style='margin:5%;'>Add Admin</h1>
            <form action='addedadmin.php' method='POST'>
            <div class='mb-3'>
                <label for='adminid' class='form-label'>Admin Id</label>
                <input type='text' class='form-control' id='adminid' aria-describedby='emailHelp' name='adminid'>
            </div>
            <div class='mb-3'>
                <label for='adminpass' class='form-label'>Admin Password</label>
                <input type='text' class='form-control' id='adminpass' aria-describedby='emailHelp' name='adminpass'>
            </div>
            <div class='mb-3'>
                <label for='phno' class='form-label'>Admin Phno</label>
                <input type='text' class='form-control' id='phno' aria-describedby='emailHelp' name='phno'>
            </div>
            <div class='mb-3'>
                <label for='email' class='form-label'>Admin email</label>
                <input type='text' class='form-control' id='email' aria-describedby='emailHelp' name='email'>
            </div>
            <button type='submit' class='btn btn-primary'>Submit</button>
        </form>";
        }
        else{
            echo "<script>window.location.href = 'adminlogin.html'</script>";
        }
    ?>
    
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
    crossorigin="anonymous"></script>
</body>
</html>