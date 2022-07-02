<html>

<head>
    <title>Html-Qrcode  </title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
<body>

    <form action='scan.php' method='POST' id='formsy' target='_blank'>
        <input type='hidden' name='code' id='v1'>
        <input type='submit' hidden>
    </form>
    <?php 
        session_start();
        if(isset($_SESSION['ali']) == "yep"){
            echo "<div id='qr-reader' style='width:500px'></div>
            <div id='qr-reader-results'></div>";
        }
    ?>

</body>
<script src='html5-qrcode.min.js'></script>
<script>
    function docReady(fn) {
        // see if DOM is already available
        if (document.readyState === 'complete'
            || document.readyState === 'interactive') {
            // call on next available tick
            setTimeout(fn, 1);
        } else {
            document.addEventListener('DOMContentLoaded', fn);
        }
    }

    docReady(function () {
        var resultContainer = document.getElementById('qr-reader-results');
        var lastResult, countResults = 0;
        function onScanSuccess(decodedText, decodedResult) {
            if (decodedText !== lastResult) {
                ++countResults;
                lastResult = decodedText;
                // Handle on success condition with the decoded message.

                document.getElementById('v1').value = decodedText;
                document.getElementById('formsy').submit();
                window.close()
            }
        }

        var html5QrcodeScanner = new Html5QrcodeScanner(
            'qr-reader', { fps: 10, qrbox: 250 });
        html5QrcodeScanner.render(onScanSuccess);
    });
</script>
</head>

</html>