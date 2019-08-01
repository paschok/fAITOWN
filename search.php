<?php
	require 'php/settings.php';
	require 'php/db_connect.php';
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

        <div id="search-block">
            <div class="container">
                <div class="row">
                    <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                        <div class="wrap-tabs">
                            <ul class="nav nav-tabs" role="tablist">
                                <li role="presentation" id="tab-fairies" class="active"><a href="#fairy-tale" aria-controls="fairy-tale" role="tab" data-toggle="tab" id="fairy-tale-tab">List of fairy tales</a></li>
                                
                                <li role="presentation" id="tab-authors"><a href="#fairy-author" aria-controls="fairy-author" role="tab" data-toggle="tab" id="fairy-author-tab">List of authors</a></li>
                            </ul>
                            <div class="tab-content">
                                <div role="tabpanel" class="tab-pane active search-tab-decoration" id="fairy-tale">
                                    <div class="row">
                                        <form class="form-inline">
                                            <div class="col-xs-12 col-sm-12 col-md-8 col-lg-8">
                                                <input type="text" class="form-control search-block-search-field" placeholder="search for fairy" id="fairyName">
                                            </div>
                                            <div class="col-xs-12 col-sm-12 col-md-2 col-lg-2 col-lg-offset-1">
                                                <input type="button" value="Search" class="btn search-block-search-button" id="search-fairy">
                                            </div>
                                        </form>
                                    </div>
                                    
                                    <?php $fairy = mysqli_query($connection, "SELECT * FROM `fairy`"); ?>
                                    
                                    <div class="search-results">
                                        <ol class="search-results-list">
                                           <?php
												while($cat = mysqli_fetch_assoc($fairy)) {
													?>
														<li type="1"><a href="book.php?id=<?php echo $cat['id']; ?>" id="fairy-result"> <?php echo $cat['book_name'] ?> </a></li>
													<?php
												}
                                            
											?>
                                        </ol>
                                    </div>
                                </div>

                                <div role="tabpanel" class="tab-pane search-tab-decoration" id="fairy-author">
                                    <div class="row">
                                        <form class="form-inline">
                                            <div class="col-xs-12 col-sm-12 col-md-8 col-lg-8 ">
                                                <input type="text" class="form-control search-block-search-field" placeholder="search for author">
                                            </div>
                                            <div class="col-xs-12 col-sm-12 col-md-2 col-lg-2 col-lg-offset-1">
                                                <input type="button" value="Search" class="btn search-block-search-button" id="search-author">
                                            </div>
                                        </form>
                                    </div>
                                    
                                    <?php $author = mysqli_query($connection, "SELECT * FROM `fairy`"); ?>
                                    
                                    <div class="search-results">
                                        <ol class="search-results-list">
                                           <?php
												while($cat = mysqli_fetch_assoc($author)) {
													?>
														<li type="1"><a href="author.php" id="fairy-result"> <?php echo $cat['author'] ?> </a></li>
													<?php
												}
											?>
                                        </ol>
                                    </div>
                                </div>
                            </div>
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
    <script src="js/search.js"></script>
    <script src="js/contact-me.js"></script>
</body>

</html>
