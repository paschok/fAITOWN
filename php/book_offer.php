<?php
	require 'db_connect.php';
	
	$howManyFairies = mysqli_query($connection, "SELECT * FROM `fairy`");
	$fairyCount = mysqli_num_rows($howManyFairies); // the number of fairies at all
	
	/*
		There are 6 (six) random book offers to the guest on the index.php page. I don't need any reitation of books, so 
		I am gonna devide $fairyCount on 6 (six) , use function round() ( if the result of deviation is 3.5, the final result with this function will be 3 ).
		There wil be 6 random findings with the step equals to rhe final deviation result.
	*/
	$resultOfDeviation = $fairyCount / 6; 
	$finalResult = round($resultOfDeviation);
	$step = $finalResult;
	
	$book = 0;
	
	/* book           - the number of the book
	   finalResult    - space in random choosing
	   step           - need a static variable of an increment
	*/
	
	//0
	$randomBook [] =  mt_rand(1, $finalResult);
	
	//1
	$finalResult += $step;
	$randomBook [] =  mt_rand($step + 1, $finalResult);
	
	//2
	$finalResult += $step;
	$randomBook [] =  mt_rand(2 * $step + 1, $finalResult);
	
	//3
	$finalResult += $step;
	$randomBook [] =  mt_rand(3 * $step + 1, $finalResult);
	
	//4
	$finalResult += $step;
	$randomBook [] =  mt_rand(4 * $step + 1, $finalResult);
	
	//5
	$finalResult += $step;
	if($step != $resultOfDeviation) {
		$finalResult++;
	}
	$randomBook [] =  mt_rand(5 * $step + 1, $finalResult);
	
	function offerFairy($randomFairy) {
		require 'db_connect.php';
		$findFairy = mysqli_query($connection, "SELECT * FROM `fairy` WHERE `id` = '$randomFairy'");
		$resultFairy = mysqli_fetch_assoc($findFairy);
		
		echo $resultFairy['book_name'];
	}
	
	function offerAuthor($randomAuthor) {
		require 'db_connect.php';
		$findFairy = mysqli_query($connection, "SELECT * FROM `fairy` WHERE `id` = '$randomAuthor'");
		$resultFairy = mysqli_fetch_assoc($findFairy);
		
		echo $resultFairy['author'];
	}
	
	function offerImage($randomImage) {
		require 'db_connect.php';
		$findImage = mysqli_query($connection, "SELECT * FROM `fairy` WHERE `id` = '$randomImage'");
		$resultImage = mysqli_fetch_assoc($findImage);
		
		echo $resultImage['image'];
	}
?>