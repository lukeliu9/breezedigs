$(function(){
	$('#gallery').galleryView({
		panel_width: 310,
		panel_height: 255,
		frame_width: 70,
		frame_height: 50
	});
});

$.fn.rating.options.required = true;

$(function(){ // wait for document to load
$('input.star').rating();
});