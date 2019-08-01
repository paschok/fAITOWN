<?php
	require 'php/settings.php';
	require 'php/db_connect.php';

	$fairy = mysqli_query($connection, "SELECT * FROM `fairy` WHERE `id` = " . (int) $_GET['id']);
	
	$catch = mysqli_fetch_assoc($fairy);
?>

<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->

    <meta name="keywords" content="<?=$about_site['keywords'];?>">
	<meta name="description" content="<?=$about_site['description'];?>">
	<meta name="author" lang="en" content="<?=$about_site['author'];?>">
	<title><?=$about_site['title']?></title>

    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">

    <link rel="shortcut icon" href="img/favicon.ico" type="image/x-icon">
</head>

<body>
    <section>
        <header>
            <?php require 'php/header.php';?>
        </header>

        <div id="read-block">
            <div class="container white-bg">
                <div class="row">
                    <div class="col-xs-12 col-sm-12 col-md-4 col-lg-4">
                        <img src="img/books/<?=$catch['image']?>.jpg" alt="">
                    </div>
                    <div class="col-xs-12 col-sm-12 col-md-8 col-lg-8">
                        <div class="book-item">
                            <h2 class="book-title"> <?=$catch['book_name']?> </h2>
                            <h3 class="book-author"><a href="search.php"> <?=$catch['author']?>  </a></h3>
                            <h5 class="book-year">Year of publishing  : <?=$catch['year']?> </h5>
                            <div class="book-download">
                                <div class="container download-buttons-width">
                                    <div class="row">
                                        <div class="col-xs-6 col-sm-6 col-md-4 col-lg-3"><button type="button" class="btn btn-lg"><a href="php/read.php?id=<?=$catch['id']?>" target="_blank">Read online</a></button></div>
                                        <div class="col-xs-6 col-sm-6 col-md-4 col-lg-3"><button type="button" class="btn btn-lg"><a href="php/download.php?id=<?=$catch['id']?>">Download now</a></button></div>
                                    </div>
                                </div>
                            </div>
                            <p class="book-desription"><?=$catch['description']?></p>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <footer id="footer">
            <?php require 'php/footer.php'; ?>
        </footer>

    </section>


    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/contact-me.js"></script>
</body>

</html>
