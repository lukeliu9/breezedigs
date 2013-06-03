$(function(){
	$('#gallery').galleryView({
		panel_width: 375,
		panel_height: 270,
		frame_width: 70,
		frame_height: 50
	});
});

$.fn.rating.options.required = true;

$(function(){ // wait for document to load
$('input.star').rating();
});