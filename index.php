<?php
	require 'php/settings.php';
	require 'php/phrase.php';
	require 'php/book_offer.php';
?>

<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">

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

		<main class="container-inner">
			<p>The most complete database of fairy tales from all over the world. More then 1000 books. Folk art and author's works</p>
			<h2>Read online or download</h2>
		</main>

		<article>
			<div class="container">
				<h2>Random books:</h2>
				<div class="row random-books">
					<div class="col-xs-6 col-sm-4 col md-2 col-lg-2">
						<a href="book.php?id=<?=$randomBook[0];?>"><img src="img/books/<?=offerImage($randomBook[0])?>.jpg" alt=""></a>
						<div class="article-title">
							
								<h4> <?=offerAuthor($randomBook[0])?> </h4>
							
							<a href="book.php?id=<?=$randomBook[0];?>">
								<p> <?=offerFairy($randomBook[0])?> </p>
							</a>
						</div>
					</div>
					<div class="col-xs-6 col-sm-4 col md-2 col-lg-2">
						<a href="book.php?id=<?=$randomBook[1];?>"><img src="img/books/<?=offerImage($randomBook[1])?>.jpg" alt=""></a>
						<div class="article-title">
							<a href="#author">
								<h4> <?=offerAuthor($randomBook[1])?> </h4>
							</a>
							<a href="book.php?id=<?=$randomBook[1];?>">
								<p> <?=offerFairy($randomBook[1])?> </p>
							</a>
						</div>
					</div>
					<div class="col-xs-6 col-sm-4 col md-2 col-lg-2">
						<a href="book.php?id=<?=$randomBook[2];?>"><img src="img/books/<?=offerImage($randomBook[2])?>.jpg" alt=""></a>
						<div class="article-title">
							<a href="#author">
								<h4> <?=offerAuthor($randomBook[2])?> </h4>
							</a>
							<a href="book.php?id=<?=$randomBook[2];?>">
								<p> <?=offerFairy($randomBook[2])?> </p>
							</a>
						</div>
					</div>
					<div class="col-xs-6 col-sm-4 col md-2 col-lg-2">
						<a href="book.php?id=<?=$randomBook[3];?>"><img src="img/books/<?=offerImage($randomBook[3])?>.jpg" alt=""></a>
						<div class="article-title">
							<a href="#author">
								<h4> <?=offerAuthor($randomBook[3])?> </h4>
							</a>
							<a href="book.php?id=<?=$randomBook[3];?>">
								<p> <?=offerFairy($randomBook[3])?>  </p>
							</a>
						</div>
					</div>
					<div class="col-xs-6 col-sm-4 col md-2 col-lg-2">
						<a href="book.php?id=<?=$randomBook[4];?>"><img src="img/books/<?=offerImage($randomBook[4])?>.jpg" alt=""></a>
						<div class="article-title">
							<a href="#author">
								<h4> <?=offerAuthor($randomBook[4])?> </h4>
							</a>
							<a href="book.php?id=<?=$randomBook[4];?>">
								<p> <?=offerFairy($randomBook[4])?> </p>
							</a>
						</div>
					</div>
					<div class="col-xs-6 col-sm-4 col md-2 col-lg-2">
						<a href="book.php?id=<?=$randomBook[5];?>"><img src="img/books/<?=offerImage($randomBook[5])?>.jpg" alt=""></a>
						<div class="article-title">
							<a href="#author">
								<h4> <?=offerAuthor($randomBook[5])?> </h4>
							</a>
							<a href="book.php?id=<?=$randomBook[5];?>">
								<p> <?=offerFairy($randomBook[5])?> </p>
							</a>
						</div>
					</div>
				</div>
			</div>
		</article>

		<center class="container-inner">
			<div class="row row-center">
				<div class="col-xs-12 col-sm-12 col-md-6 col-lg-6 center-search-margin">
					<a href="search.php" onclick="onBookSearchClicked()" class="a-special-style">
						<div class="col-xs-8 col-sm-8 col-md-12 col-lg-12">
							<h5>book</h5>
						</div>
						<div class="col-xs-4 col-sm-4 col-md-12 col-lg-12">
							<span class="glyphicon glyphicon-search"></span>
						</div>
					</a>
				</div>
				<div class="col-xs-12 col-sm-12 col-md-6 col-lg-6 center-search-margin">
					<a href="search.php" onclick="onAuthorSearchClicked()" class="a-special-style">
						<div class="col-xs-8 col-sm-8 col-md-12 col-lg-12">
							<h5>author</h5>
						</div>
						<div class="col-xs-4 col-sm-4 col-md-12 col-lg-12"><span class="glyphicon glyphicon-search"></span>
						</div>
					</a>

				</div>
			</div>
			<div class="row">
				<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
					<blockquote>
						<p><?=$resultQuote?>.</p>
						<footer id="blockquote-footer"><?=$resultAuthor?></footer>
					</blockquote>
				</div>
			</div>
		</center>

		<footer id="footer">
			<?php require 'php/footer.php'; ?>
		</footer>

	</section>

	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/contact-me.js"></script>
</body>

</html>
