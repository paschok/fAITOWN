<?php
	require 'settings.php';
?>

<div class="container-fluid">
	<div class="row">
		<div class="col-xs-12 col-sm-6 col-md-6 col-lg-6">
			<p>&copy; <?=$about_site['author']?> 2017</p>
		</div>
		<div class="col-xs-12 col-sm-6 col-md-6 col-lg-6 footer-center">
			<a class="button-contact call-modal" id="contact-me">contact me</a>
		</div>

		<div id="my-modal" class="modal">
			<div class="modal-inner">
				<div class="wrapper">
					<div id="close">&times;
					</div>
						<form id="form">
							<h3 id="greeting">Hello! My name is Paul and I will be glad to hear from you</h3>
							<div class="form-group">
								<label for="input-name">Your name</label>
								<input type="text" name="name" class="form-control" id="input-name" placeholder="John Doe" required>
								<p class="help-block">Ex. : John Doe</p>
							</div>
							<div class="form-group">
								<label for="input-email">Your email / skype / facebook ...</label>
								<input type="text" name="email" class="form-control" id="input-email" placeholder="john.doe@yahoo.com" required>
								<p class="help-block">Ex. : john.doe@yahoo.com</p>
							</div>
							<div class="form-group">
								<label for="input-email">What is the reason of your interest?</label>
								<textarea placeholder="Cooperation" name="reason" class="form-control"></textarea>
							</div>
							<input type="submit" class="button" value="Submit">
						</form>
				</div>
			</div>
		</div>
	</div>
</div>