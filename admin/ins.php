<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Ins</title>
	<style type="text/css">
		table, th, td {
  			border: 1px solid black;
		}
	</style>
</head>
<body>
	<?php 
		// $select = $_POST['Query'];
		$db = "tickets";
		$con = mysqli_connect("localhost", "root", "", $db);
		if(!$con)
		{
			die("Error connecting table");
		}
		// $t = $_POST['table'];
		$t = 'BOOKING_TABLE';
		// if(!empty($t)) {
			// if ($select == "Select") {
		$q2 = mysqli_query($con, "SELECT COLUMN_NAME
									FROM INFORMATION_SCHEMA.COLUMNS
									WHERE TABLE_NAME = N'$t' AND TABLE_SCHEMA = '$db';");
		echo "
			<table align=\"center\">
				<tr>";
		$i = 0;
		while ($c = mysqli_fetch_assoc($q2)) {
			echo "
				<th>".$c["COLUMN_NAME"]."</th>";
			$bit[$i] = $c["COLUMN_NAME"];
			$i++;
		}
		echo "</tr>";
		 $n = !empty($t)?count($bit):0;
		 // echo $bit;
		if (!empty($t)) {
		$q = mysqli_query($con, "SELECT * FROM $t");

		//for ($i=0; $i < $n; $i++) {echo "$bit[$i]";}
		while($r = mysqli_fetch_assoc($q)) {
			echo "<tr>";
			for ($i=0; $i < $n; $i++) {
				echo "<td>".$r[$bit[$i]]."</td>";
			}
			echo "</tr>";
		}
		}
	// }
	// }		
	?>
</body>
</html>