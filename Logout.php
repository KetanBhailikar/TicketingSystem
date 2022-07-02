<?php
    session_start();
    session_unset();
    echo "Logged Out Successfully";
    echo "<script>window.location.href = 'index.php'</script>"
?>