<?php
	require 'db_connect.php';
	
	$howManyPhrases = mysqli_query($connection, "SELECT * FROM `phrases`");
	$rowsCount = mysqli_num_rows($howManyPhrases);
		
	$randomNumber = mt_rand(1, $rowsCount);

	$findPhrase = mysqli_query($connection, "SELECT * FROM `phrases` WHERE `id` = '$randomNumber'");
	$resultPhrase = mysqli_fetch_assoc($findPhrase);
	
	$resultQuote = $resultPhrase['quote'];
	$resultAuthor = $resultPhrase['author'];
?>