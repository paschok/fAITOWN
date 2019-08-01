<?php
	
$connection = mysqli_connect('localhost', 'root', '', 'faitown_db');

if($connection == false) {
	//если соединение не верно, НИ ОДНА СТРОЧКА кода после exit не выполнится
	echo 'Something went wrong<br>';
	echo mysqli_connect_error(); // выводит ошибку
	exit();
}
?>