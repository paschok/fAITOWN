<?php

	$recepient = "pavel.mospan@yahoo.com";
	$sitename = "fAITOWN";

	$name = trim($_POST["name"]);
	$email = trim($_POST["email"]);
	$reason = trim($_POST["reason"]);
	$message = "Имя: $name \nСпособ связи: $email \nЧТо интересует: $reason";

	$pagetitle = "Письмо с сайта \"$sitename\"";
	mail($recepient, $pagetitle, $message, "Content-type: text/plain; charset=\"utf-8\"\n From: $recepient");
?>