/* ON PAGE LOAD */
window.onload = function () {
	console.log('working');
};
/* ON PAGE LOAD END*/

/* SEARCH BOOOOOOOK WITH AJAX AND PHP*/
$('input#search-fairy').on('click', function() {
	var fairyName = $('input#fairyName').val();
	if($.trim(fairyName) != '') {
		$.post('php/fairy_name.php', {fairyName : fairyName}, function(data) {
			$('a#fairy-result').text(data);
		});
	}
});