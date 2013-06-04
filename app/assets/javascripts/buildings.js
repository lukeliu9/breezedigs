$(function(){
	$('#gallery').galleryView({
		panel_width: 345,
		panel_height: 262,
		frame_width: 70,
		frame_height: 50
	});
});

$.fn.rating.options.required = true;

$(function(){ // wait for document to load
$('input.star').rating();
});