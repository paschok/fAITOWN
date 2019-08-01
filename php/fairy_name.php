<?php 
	
	if(isset($_POST['fairyName']) === true && empty($_POST['fairyName']) === false) {
		require 'db_connect.php';
		
		$fairy = $_POST['fairyName'];
		
		$a = "SELECT * FROM `fairy` WHERE `book_name` = '$fairy'";
		
		$result = mysqli_query($connection, $a);
		
		//print_r($result);
		printResult($result);
		
		mysqli_close($connection);
	}
	
	function printResult($result){	
		while( ($record = mysqli_fetch_assoc($result)) ) {
			//print_r($record);
			echo $record['book_name'];
		}
	}
	
?>