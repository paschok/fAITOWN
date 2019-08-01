/* CONTACT ME */
jQuery(document).ready(function () {
	
	$("#form").submit(function(){
		$.ajax({
			type: "POST",
			url: "php/mail.php",
			data: $(this).serialize()
		}).done(function(){
		document.getElementById('greeting').textContent = 'Thank you! I will get in touch with you soon';
		});
		return false;
	});
});


var modalWindow = document.getElementById('my-modal');
var button = document.getElementById('contact-me');
var inline = document.getElementById('close');

button.onclick = function() {
	modalWindow.style.display = 'block';
}
inline.onclick = function() {
	modalWindow.style.display = 'none';
}
window.onclick = function(event) {
	if(event.target == modalWindow) {
		modalWindow.style.display = 'none';
	}
}

/* CONTACT ME END */
