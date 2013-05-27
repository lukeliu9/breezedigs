$('.icon-info-sign').powerTip({
	placement: 'ne' // north-east tooltip position
});
$('.icon-info-sign').data('powertipjq', function() {
	var tooltip = $('<div>This will be the tooltip text. It even has an onclick event!</div>');
	return tooltip;
});