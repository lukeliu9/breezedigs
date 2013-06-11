//Sets the size of the gallery box for each biulding's page
$(function(){
	$('#gallery').galleryView({
		panel_width: 310,
		panel_height: 250,
		frame_width: 65,
		frame_height: 50
	});
});

$.fn.rating.options.required = true; // Removes the cancel button for each star rating on the new review form

$(function(){ // wait for document to load
$('input.star').rating();
});