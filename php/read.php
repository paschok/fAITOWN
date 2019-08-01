<?php
	require 'db_connect.php';
	
	$request = mysqli_query($connection, "SELECT * FROM `fairy` WHERE `id` = " . (int) $_GET['id']);
	$toRead = mysqli_fetch_assoc($request);
	
	$file = '../files/' . $toRead['book_name'] . '.pdf';
	$filename = $toRead['book_name'] . '.pdf';
	
	header('Content-type: application/pdf');
	header('Content-Disposition: inline; filenmae ="' . $filename. '"');
	header('Content-Transfer-Encoding: binary');
	header('Accept-Ranges: bytes');
	@readfile($file);
?>